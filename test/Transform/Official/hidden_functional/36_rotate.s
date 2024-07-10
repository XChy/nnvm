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
  ADDI sp, sp, -128
  SD s6, 0(sp)
  FSD fs6, 8(sp)
  FSD fs5, 16(sp)
  FSD fs4, 24(sp)
  FSD fs3, 32(sp)
  SD s7, 40(sp)
  FSD fs2, 48(sp)
  SD s2, 56(sp)
  SD s3, 64(sp)
  FSD fs0, 72(sp)
  SD s4, 80(sp)
  FSD fs1, 88(sp)
  SD s1, 96(sp)
  SD s0, 104(sp)
  SD s5, 112(sp)
  SD ra, 120(sp)
  ADD s2, a0, zero
  ADD s3, a1, zero
  FSGNJ.D fs0, fa0, fa0
  LA s4, .CONSTANT.7.0
  FLW fs1, 0(s4)
  FLT.S s4, fs1, fs0
  BNE s4, zero, bb35
  # implict jump to bb1
bb1:
  LA s4, .CONSTANT.7.0
  FLW fs1, 0(s4)
  LA s4, .CONSTANT.7.0
  FLW fs2, 0(s4)
  FSGNJN.S fs3, fs1, fs2
  FLT.S s4, fs0, fs3
  ADD s5, s4, zero
  # implict jump to bb2
bb2:
  ADD s4, s5, zero
  BNE s4, zero, bb34
  # implict jump to bb3
bb3:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb4
bb4:
  FSGNJ.S fs2, fs1, fs1
  LA s4, .CONSTANT.7.1
  FLW fs1, 0(s4)
  FLT.S s4, fs1, fs2
  BNE s4, zero, bb33
  # implict jump to bb5
bb5:
  FSGNJ.S fs1, fs2, fs2
  # implict jump to bb6
bb6:
  FSGNJ.S fs2, fs1, fs1
  LA s4, .CONSTANT.7.1
  FLW fs1, 0(s4)
  LA s4, .CONSTANT.7.1
  FLW fs3, 0(s4)
  FSGNJN.S fs4, fs1, fs3
  FLT.S s4, fs2, fs4
  BNE s4, zero, bb32
  # implict jump to bb7
bb7:
  FSGNJ.S fs1, fs2, fs2
  # implict jump to bb8
bb8:
  FSGNJ.S fs2, fs1, fs1
  FSGNJ.S fa0, fs2, fs2
  CALL my_sin_impl
  FSGNJ.D fs1, fa0, fa0
  ADDI s4, zero, 2
  FCVT.S.W fs2, s4
  LA s4, .CONSTANT.7.1
  FLW fs3, 0(s4)
  FDIV.S fs5, fs3, fs2
  FADD.S fs2, fs0, fs5
  LA s4, .CONSTANT.7.0
  FLW fs0, 0(s4)
  FLT.S s4, fs0, fs2
  BNE s4, zero, bb31
  # implict jump to bb9
bb9:
  LA s4, .CONSTANT.7.0
  FLW fs0, 0(s4)
  LA s4, .CONSTANT.7.0
  FLW fs3, 0(s4)
  FSGNJN.S fs5, fs0, fs3
  FLT.S s4, fs2, fs5
  ADD s5, s4, zero
  # implict jump to bb10
bb10:
  ADD s4, s5, zero
  BNE s4, zero, bb30
  # implict jump to bb11
bb11:
  FSGNJ.S fs0, fs2, fs2
  # implict jump to bb12
bb12:
  FSGNJ.S fs2, fs0, fs0
  LA s4, .CONSTANT.7.1
  FLW fs0, 0(s4)
  FLT.S s4, fs0, fs2
  BNE s4, zero, bb29
  # implict jump to bb13
bb13:
  FSGNJ.S fs0, fs2, fs2
  # implict jump to bb14
bb14:
  FSGNJ.S fs2, fs0, fs0
  FLT.S s4, fs2, fs4
  BNE s4, zero, bb28
  # implict jump to bb15
bb15:
  FSGNJ.S fs0, fs2, fs2
  # implict jump to bb16
bb16:
  FSGNJ.S fs2, fs0, fs0
  FSGNJ.S fa0, fs2, fs2
  CALL my_sin_impl
  FSGNJ.D fs0, fa0, fa0
  LA s4, width
  LW s5, 0(s4)
  ADDI s4, zero, 2
  DIVW s6, s5, s4
  LA s4, height
  LW s5, 0(s4)
  ADDI s4, zero, 2
  DIVW s7, s5, s4
  SUBW s4, s2, s6
  SUBW s2, s3, s7
  FCVT.S.W fs2, s4
  FMUL.S fs3, fs2, fs0
  FCVT.S.W fs4, s2
  FMUL.S fs5, fs4, fs1
  FSUB.S fs6, fs3, fs5
  FCVT.S.W fs3, s6
  FADD.S fs5, fs6, fs3
  FCVT.W.S s1, fs5, rtz
  FMUL.S fs3, fs2, fs1
  FMUL.S fs1, fs4, fs0
  FADD.S fs0, fs3, fs1
  FCVT.S.W fs1, s7
  FADD.S fs2, fs0, fs1
  FCVT.W.S s0, fs2, rtz
  SLT s2, s1, zero
  BNE s2, zero, bb27
  # implict jump to bb17
bb17:
  LA s2, width
  LW s3, 0(s2)
  SLT s2, s1, s3
  XORI s3, s2, 1
  ADD s2, s3, zero
  # implict jump to bb18
bb18:
  ADD s3, s2, zero
  BNE s3, zero, bb26
  # implict jump to bb19
bb19:
  SLT s2, s0, zero
  ADD s3, s2, zero
  # implict jump to bb20
bb20:
  ADD s2, s3, zero
  BNE s2, zero, bb25
  # implict jump to bb21
bb21:
  LA s2, height
  LW s3, 0(s2)
  SLT s2, s0, s3
  XORI s3, s2, 1
  ADD s2, s3, zero
  # implict jump to bb22
bb22:
  ADD s3, s2, zero
  BNE s3, zero, bb24
  # implict jump to bb23
bb23:
  LA s2, width
  LW s3, 0(s2)
  MULW s2, s0, s3
  ADDW s0, s2, s1
  SLLIW s1, s0, 2
  LA s0, image
  ADD s2, s0, s1
  LW s0, 0(s2)
  ADD a0, s0, zero
  LD s6, 0(sp)
  FLD fs6, 8(sp)
  FLD fs5, 16(sp)
  FLD fs4, 24(sp)
  FLD fs3, 32(sp)
  LD s7, 40(sp)
  FLD fs2, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  FLD fs0, 72(sp)
  LD s4, 80(sp)
  FLD fs1, 88(sp)
  LD s1, 96(sp)
  LD s0, 104(sp)
  LD s5, 112(sp)
  LD ra, 120(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb24:
  ADD a0, zero, zero
  LD s6, 0(sp)
  FLD fs6, 8(sp)
  FLD fs5, 16(sp)
  FLD fs4, 24(sp)
  FLD fs3, 32(sp)
  LD s7, 40(sp)
  FLD fs2, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  FLD fs0, 72(sp)
  LD s4, 80(sp)
  FLD fs1, 88(sp)
  LD s1, 96(sp)
  LD s0, 104(sp)
  LD s5, 112(sp)
  LD ra, 120(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb25:
  ADDI s2, zero, 1
  JAL zero, bb22
bb26:
  ADDI s3, zero, 1
  JAL zero, bb20
bb27:
  ADDI s2, zero, 1
  JAL zero, bb18
bb28:
  LA s4, .CONSTANT.7.0
  FLW fs3, 0(s4)
  FADD.S fs4, fs2, fs3
  FSGNJ.S fs0, fs4, fs4
  JAL zero, bb16
bb29:
  LA s4, .CONSTANT.7.0
  FLW fs3, 0(s4)
  FSUB.S fs5, fs2, fs3
  FSGNJ.S fs0, fs5, fs5
  JAL zero, bb14
bb30:
  LA s4, .CONSTANT.7.0
  FLW fs3, 0(s4)
  FDIV.S fs5, fs2, fs3
  FCVT.W.S s4, fs5, rtz
  FCVT.S.W fs3, s4
  LA s4, .CONSTANT.7.0
  FLW fs5, 0(s4)
  FMUL.S fs6, fs3, fs5
  FSUB.S fs3, fs2, fs6
  FSGNJ.S fs0, fs3, fs3
  JAL zero, bb12
bb31:
  ADDI s5, zero, 1
  JAL zero, bb10
bb32:
  LA s4, .CONSTANT.7.0
  FLW fs3, 0(s4)
  FADD.S fs5, fs2, fs3
  FSGNJ.S fs1, fs5, fs5
  JAL zero, bb8
bb33:
  LA s4, .CONSTANT.7.0
  FLW fs3, 0(s4)
  FSUB.S fs4, fs2, fs3
  FSGNJ.S fs1, fs4, fs4
  JAL zero, bb6
bb34:
  LA s4, .CONSTANT.7.0
  FLW fs2, 0(s4)
  FDIV.S fs3, fs0, fs2
  FCVT.W.S s4, fs3, rtz
  FCVT.S.W fs2, s4
  LA s4, .CONSTANT.7.0
  FLW fs3, 0(s4)
  FMUL.S fs4, fs2, fs3
  FSUB.S fs2, fs0, fs4
  FSGNJ.S fs1, fs2, fs2
  JAL zero, bb4
bb35:
  ADDI s5, zero, 1
  JAL zero, bb2
my_sin_impl:
  ADDI sp, sp, -64
  FSD fs4, 0(sp)
  FSD fs3, 8(sp)
  SD ra, 16(sp)
  SD s0, 24(sp)
  FSD fs2, 32(sp)
  FSD fs1, 40(sp)
  FSD fs0, 48(sp)
  FSGNJ.D fs0, fa0, fa0
  FCVT.S.L fs1, zero
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb41
  # implict jump to bb37
bb37:
  FSGNJN.S fs1, fs0, fs0
  FSGNJ.S fs2, fs1, fs1
  # implict jump to bb38
bb38:
  FSGNJ.S fs1, fs2, fs2
  LA s0, .CONSTANT.7.2
  FLW fs2, 0(s0)
  FLE.S s0, fs1, fs2
  BNE s0, zero, bb40
  # implict jump to bb39
bb39:
  LA s0, .CONSTANT.7.3
  FLW fs1, 0(s0)
  FDIV.S fs2, fs0, fs1
  FSGNJ.S fa0, fs2, fs2
  CALL my_sin_impl
  FSGNJ.D fs1, fa0, fa0
  ADDI s0, zero, 3
  FCVT.S.W fs2, s0
  FMUL.S fs3, fs2, fs1
  ADDI s0, zero, 4
  FCVT.S.W fs2, s0
  FMUL.S fs4, fs2, fs1
  FMUL.S fs2, fs4, fs1
  FMUL.S fs4, fs2, fs1
  FSUB.S fs1, fs3, fs4
  FSGNJ.S fa0, fs1, fs1
  FLD fs4, 0(sp)
  FLD fs3, 8(sp)
  LD ra, 16(sp)
  LD s0, 24(sp)
  FLD fs2, 32(sp)
  FLD fs1, 40(sp)
  FLD fs0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb40:
  FSGNJ.S fa0, fs0, fs0
  FLD fs4, 0(sp)
  FLD fs3, 8(sp)
  LD ra, 16(sp)
  LD s0, 24(sp)
  FLD fs2, 32(sp)
  FLD fs1, 40(sp)
  FLD fs0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb41:
  FSGNJ.S fs2, fs0, fs0
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
  ADDI sp, sp, -64
  FSD fs4, 0(sp)
  SD ra, 8(sp)
  FSD fs3, 16(sp)
  SD s1, 24(sp)
  FSD fs2, 32(sp)
  FSD fs1, 40(sp)
  SD s0, 48(sp)
  FSD fs0, 56(sp)
  FSGNJ.D fs0, fa0, fa0
  LA s0, .CONSTANT.7.0
  FLW fs1, 0(s0)
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb55
  # implict jump to bb44
bb44:
  LA s0, .CONSTANT.7.0
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.0
  FLW fs2, 0(s0)
  FSGNJN.S fs3, fs1, fs2
  FLT.S s0, fs0, fs3
  ADD s1, s0, zero
  # implict jump to bb45
bb45:
  ADD s0, s1, zero
  BNE s0, zero, bb54
  # implict jump to bb46
bb46:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb47
bb47:
  FSGNJ.S fs0, fs1, fs1
  LA s0, .CONSTANT.7.1
  FLW fs1, 0(s0)
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb53
  # implict jump to bb48
bb48:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb49
bb49:
  FSGNJ.S fs0, fs1, fs1
  LA s0, .CONSTANT.7.1
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.1
  FLW fs2, 0(s0)
  FSGNJN.S fs3, fs1, fs2
  FLT.S s0, fs0, fs3
  BNE s0, zero, bb52
  # implict jump to bb50
bb50:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb51
bb51:
  FSGNJ.S fs0, fs1, fs1
  FSGNJ.S fa0, fs0, fs0
  CALL my_sin_impl
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.S fa0, fs0, fs0
  FLD fs4, 0(sp)
  LD ra, 8(sp)
  FLD fs3, 16(sp)
  LD s1, 24(sp)
  FLD fs2, 32(sp)
  FLD fs1, 40(sp)
  LD s0, 48(sp)
  FLD fs0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb52:
  LA s0, .CONSTANT.7.0
  FLW fs2, 0(s0)
  FADD.S fs3, fs0, fs2
  FSGNJ.S fs1, fs3, fs3
  JAL zero, bb51
bb53:
  LA s0, .CONSTANT.7.0
  FLW fs2, 0(s0)
  FSUB.S fs3, fs0, fs2
  FSGNJ.S fs1, fs3, fs3
  JAL zero, bb49
bb54:
  LA s0, .CONSTANT.7.0
  FLW fs2, 0(s0)
  FDIV.S fs3, fs0, fs2
  FCVT.W.S s0, fs3, rtz
  FCVT.S.W fs2, s0
  LA s0, .CONSTANT.7.0
  FLW fs3, 0(s0)
  FMUL.S fs4, fs2, fs3
  FSUB.S fs2, fs0, fs4
  FSGNJ.S fs1, fs2, fs2
  JAL zero, bb47
bb55:
  ADDI s1, zero, 1
  JAL zero, bb45
my_cos:
  ADDI sp, sp, -64
  FSD fs4, 0(sp)
  SD s1, 8(sp)
  SD ra, 16(sp)
  FSD fs3, 24(sp)
  FSD fs1, 32(sp)
  FSD fs2, 40(sp)
  SD s0, 48(sp)
  FSD fs0, 56(sp)
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
  LA s0, .CONSTANT.7.0
  FLW fs0, 0(s0)
  LA s0, .CONSTANT.7.0
  FLW fs2, 0(s0)
  FSGNJN.S fs3, fs0, fs2
  FLT.S s0, fs1, fs3
  ADD s1, s0, zero
  # implict jump to bb58
bb58:
  ADD s0, s1, zero
  BNE s0, zero, bb67
  # implict jump to bb59
bb59:
  FSGNJ.S fs0, fs1, fs1
  # implict jump to bb60
bb60:
  FSGNJ.S fs1, fs0, fs0
  LA s0, .CONSTANT.7.1
  FLW fs0, 0(s0)
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb66
  # implict jump to bb61
bb61:
  FSGNJ.S fs0, fs1, fs1
  # implict jump to bb62
bb62:
  FSGNJ.S fs1, fs0, fs0
  LA s0, .CONSTANT.7.1
  FLW fs0, 0(s0)
  LA s0, .CONSTANT.7.1
  FLW fs2, 0(s0)
  FSGNJN.S fs3, fs0, fs2
  FLT.S s0, fs1, fs3
  BNE s0, zero, bb65
  # implict jump to bb63
bb63:
  FSGNJ.S fs0, fs1, fs1
  # implict jump to bb64
bb64:
  FSGNJ.S fs1, fs0, fs0
  FSGNJ.S fa0, fs1, fs1
  CALL my_sin_impl
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.S fa0, fs0, fs0
  FLD fs4, 0(sp)
  LD s1, 8(sp)
  LD ra, 16(sp)
  FLD fs3, 24(sp)
  FLD fs1, 32(sp)
  FLD fs2, 40(sp)
  LD s0, 48(sp)
  FLD fs0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb65:
  LA s0, .CONSTANT.7.0
  FLW fs2, 0(s0)
  FADD.S fs3, fs1, fs2
  FSGNJ.S fs0, fs3, fs3
  JAL zero, bb64
bb66:
  LA s0, .CONSTANT.7.0
  FLW fs2, 0(s0)
  FSUB.S fs3, fs1, fs2
  FSGNJ.S fs0, fs3, fs3
  JAL zero, bb62
bb67:
  LA s0, .CONSTANT.7.0
  FLW fs2, 0(s0)
  FDIV.S fs3, fs1, fs2
  FCVT.W.S s0, fs3, rtz
  FCVT.S.W fs2, s0
  LA s0, .CONSTANT.7.0
  FLW fs3, 0(s0)
  FMUL.S fs4, fs2, fs3
  FSUB.S fs2, fs1, fs4
  FSGNJ.S fs0, fs2, fs2
  JAL zero, bb60
bb68:
  ADDI s1, zero, 1
  JAL zero, bb58
main:
  ADDI sp, sp, -80
  SD s4, 0(sp)
  SD s3, 8(sp)
  SD ra, 16(sp)
  SD s6, 24(sp)
  SD s1, 32(sp)
  SD s5, 40(sp)
  SD s0, 48(sp)
  SD s2, 56(sp)
  FSD fs0, 64(sp)
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
  ADD s0, a0, zero
  XORI s1, s0, 50
  SLTU s0, zero, s1
  ADD s1, s0, zero
  # implict jump to bb71
bb71:
  ADD s0, s1, zero
  BNE s0, zero, bb90
  # implict jump to bb72
bb72:
  CALL getint
  ADD s0, a0, zero
  LA s1, width
  SW s0, 0(s1)
  CALL getint
  ADD s0, a0, zero
  LA s1, height
  SW s0, 0(s1)
  LA s0, width
  LW s1, 0(s0)
  ADDI s0, zero, 1024
  SLT s2, s0, s1
  BNE s2, zero, bb89
  # implict jump to bb73
bb73:
  LA s0, height
  LW s1, 0(s0)
  ADDI s0, zero, 1024
  SLT s2, s0, s1
  ADD s0, s2, zero
  # implict jump to bb74
bb74:
  ADD s1, s0, zero
  BNE s1, zero, bb88
  # implict jump to bb75
bb75:
  CALL getint
  ADD s0, a0, zero
  XORI s1, s0, 255
  SLTU s0, zero, s1
  ADD s1, s0, zero
  # implict jump to bb76
bb76:
  ADD s0, s1, zero
  BNE s0, zero, bb87
  # implict jump to bb77
bb77:
  ADD s0, zero, zero
  # implict jump to bb78
bb78:
  ADD s1, s0, zero
  LA s2, height
  LW s3, 0(s2)
  SLT s2, s1, s3
  BNE s2, zero, bb83
  # implict jump to bb79
bb79:
  ADD s2, zero, zero
  # implict jump to bb80
bb80:
  ADD s0, s2, zero
  SLT s1, s0, zero
  BNE s1, zero, bb82
  # implict jump to bb81
bb81:
  FSGNJ.S fa0, fs0, fs0
  CALL write_pgm
  ADD a0, zero, zero
  LD s4, 0(sp)
  LD s3, 8(sp)
  LD ra, 16(sp)
  LD s6, 24(sp)
  LD s1, 32(sp)
  LD s5, 40(sp)
  LD s0, 48(sp)
  LD s2, 56(sp)
  FLD fs0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb82:
  ADDI a0, zero, -1
  LD s4, 0(sp)
  LD s3, 8(sp)
  LD ra, 16(sp)
  LD s6, 24(sp)
  LD s1, 32(sp)
  LD s5, 40(sp)
  LD s0, 48(sp)
  LD s2, 56(sp)
  FLD fs0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb83:
  ADD s3, zero, zero
  # implict jump to bb84
bb84:
  ADD s4, s3, zero
  LA s5, width
  LW s6, 0(s5)
  SLT s5, s4, s6
  BNE s5, zero, bb86
  # implict jump to bb85
bb85:
  ADDIW s5, s1, 1
  ADD s0, s5, zero
  JAL zero, bb78
bb86:
  LA s0, width
  LW s5, 0(s0)
  MULW s0, s1, s5
  ADDW s5, s0, s4
  SLLIW s0, s5, 2
  LA s5, image
  ADD s6, s5, s0
  CALL getint
  ADD s0, a0, zero
  SW s0, 0(s6)
  ADDIW s0, s4, 1
  ADD s3, s0, zero
  JAL zero, bb84
bb87:
  ADDI s2, zero, -1
  JAL zero, bb80
bb88:
  ADDI s1, zero, 1
  JAL zero, bb76
bb89:
  ADDI s0, zero, 1
  JAL zero, bb74
bb90:
  ADDI s2, zero, -1
  JAL zero, bb80
bb91:
  ADDI s1, zero, 1
  JAL zero, bb71
read_image:
  ADDI sp, sp, -64
  SD s4, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD ra, 24(sp)
  SD s1, 32(sp)
  SD s5, 40(sp)
  SD s0, 48(sp)
  CALL getch
  ADD s0, a0, zero
  XORI s1, s0, 80
  SLTU s0, zero, s1
  BNE s0, zero, bb111
  # implict jump to bb93
bb93:
  CALL getch
  ADD s0, a0, zero
  XORI s1, s0, 50
  SLTU s0, zero, s1
  ADD s1, s0, zero
  # implict jump to bb94
bb94:
  ADD s0, s1, zero
  BNE s0, zero, bb110
  # implict jump to bb95
bb95:
  CALL getint
  ADD s0, a0, zero
  LA s1, width
  SW s0, 0(s1)
  CALL getint
  ADD s0, a0, zero
  LA s1, height
  SW s0, 0(s1)
  LA s0, width
  LW s1, 0(s0)
  ADDI s0, zero, 1024
  SLT s2, s0, s1
  BNE s2, zero, bb109
  # implict jump to bb96
bb96:
  LA s0, height
  LW s1, 0(s0)
  ADDI s0, zero, 1024
  SLT s2, s0, s1
  ADD s0, s2, zero
  # implict jump to bb97
bb97:
  ADD s1, s0, zero
  BNE s1, zero, bb108
  # implict jump to bb98
bb98:
  CALL getint
  ADD s0, a0, zero
  XORI s1, s0, 255
  SLTU s0, zero, s1
  ADD s1, s0, zero
  # implict jump to bb99
bb99:
  ADD s0, s1, zero
  BNE s0, zero, bb107
  # implict jump to bb100
bb100:
  ADD s0, zero, zero
  # implict jump to bb101
bb101:
  ADD s1, s0, zero
  LA s2, height
  LW s3, 0(s2)
  SLT s2, s1, s3
  BNE s2, zero, bb103
  # implict jump to bb102
bb102:
  ADD a0, zero, zero
  LD s4, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD ra, 24(sp)
  LD s1, 32(sp)
  LD s5, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb103:
  ADD s2, zero, zero
  # implict jump to bb104
bb104:
  ADD s3, s2, zero
  LA s4, width
  LW s5, 0(s4)
  SLT s4, s3, s5
  BNE s4, zero, bb106
  # implict jump to bb105
bb105:
  ADDIW s4, s1, 1
  ADD s0, s4, zero
  JAL zero, bb101
bb106:
  LA s0, width
  LW s4, 0(s0)
  MULW s0, s1, s4
  ADDW s4, s0, s3
  SLLIW s0, s4, 2
  LA s4, image
  ADD s5, s4, s0
  CALL getint
  ADD s0, a0, zero
  SW s0, 0(s5)
  ADDIW s0, s3, 1
  ADD s2, s0, zero
  JAL zero, bb104
bb107:
  ADDI a0, zero, -1
  LD s4, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD ra, 24(sp)
  LD s1, 32(sp)
  LD s5, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb108:
  ADDI s1, zero, 1
  JAL zero, bb99
bb109:
  ADDI s0, zero, 1
  JAL zero, bb97
bb110:
  ADDI a0, zero, -1
  LD s4, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD ra, 24(sp)
  LD s1, 32(sp)
  LD s5, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb111:
  ADDI s1, zero, 1
  JAL zero, bb94
write_pgm:
  ADDI sp, sp, -144
  FSD fs7, 0(sp)
  FSD fs6, 8(sp)
  FSD fs5, 16(sp)
  FSD fs4, 24(sp)
  SD s8, 32(sp)
  FSD fs3, 40(sp)
  SD s1, 48(sp)
  FSD fs0, 56(sp)
  SD s2, 64(sp)
  FSD fs2, 72(sp)
  SD s7, 80(sp)
  SD s3, 88(sp)
  SD s4, 96(sp)
  SD s5, 104(sp)
  SD s0, 112(sp)
  SD ra, 120(sp)
  SD s6, 128(sp)
  FSD fs1, 136(sp)
  FSGNJ.D fs0, fa0, fa0
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
  ADD s2, zero, zero
  # implict jump to bb113
bb113:
  ADD s3, s2, zero
  LA s4, height
  LW s5, 0(s4)
  SLT s4, s3, s5
  BNE s4, zero, bb115
  # implict jump to bb114
bb114:
  FLD fs7, 0(sp)
  FLD fs6, 8(sp)
  FLD fs5, 16(sp)
  FLD fs4, 24(sp)
  LD s8, 32(sp)
  FLD fs3, 40(sp)
  LD s1, 48(sp)
  FLD fs0, 56(sp)
  LD s2, 64(sp)
  FLD fs2, 72(sp)
  LD s7, 80(sp)
  LD s3, 88(sp)
  LD s4, 96(sp)
  LD s5, 104(sp)
  LD s0, 112(sp)
  LD ra, 120(sp)
  LD s6, 128(sp)
  FLD fs1, 136(sp)
  ADDI sp, sp, 144
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
  ADDIW s6, s3, 1
  ADD s2, s6, zero
  JAL zero, bb113
bb118:
  LA s2, .CONSTANT.7.0
  FLW fs1, 0(s2)
  FLT.S s2, fs1, fs0
  BNE s2, zero, bb154
  # implict jump to bb119
bb119:
  LA s2, .CONSTANT.7.0
  FLW fs1, 0(s2)
  LA s2, .CONSTANT.7.0
  FLW fs2, 0(s2)
  FSGNJN.S fs3, fs1, fs2
  FLT.S s2, fs0, fs3
  ADD s6, s2, zero
  # implict jump to bb120
bb120:
  ADD s2, s6, zero
  BNE s2, zero, bb153
  # implict jump to bb121
bb121:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb122
bb122:
  FSGNJ.S fs2, fs1, fs1
  LA s2, .CONSTANT.7.1
  FLW fs1, 0(s2)
  FLT.S s2, fs1, fs2
  BNE s2, zero, bb152
  # implict jump to bb123
bb123:
  FSGNJ.S fs1, fs2, fs2
  # implict jump to bb124
bb124:
  FSGNJ.S fs2, fs1, fs1
  LA s2, .CONSTANT.7.1
  FLW fs1, 0(s2)
  LA s2, .CONSTANT.7.1
  FLW fs3, 0(s2)
  FSGNJN.S fs4, fs1, fs3
  FLT.S s2, fs2, fs4
  BNE s2, zero, bb151
  # implict jump to bb125
bb125:
  FSGNJ.S fs1, fs2, fs2
  # implict jump to bb126
bb126:
  FSGNJ.S fs2, fs1, fs1
  FSGNJ.S fa0, fs2, fs2
  CALL my_sin_impl
  FSGNJ.D fs1, fa0, fa0
  ADDI s2, zero, 2
  FCVT.S.W fs2, s2
  LA s2, .CONSTANT.7.1
  FLW fs3, 0(s2)
  FDIV.S fs5, fs3, fs2
  FADD.S fs2, fs0, fs5
  LA s2, .CONSTANT.7.0
  FLW fs3, 0(s2)
  FLT.S s2, fs3, fs2
  BNE s2, zero, bb150
  # implict jump to bb127
bb127:
  LA s2, .CONSTANT.7.0
  FLW fs3, 0(s2)
  LA s2, .CONSTANT.7.0
  FLW fs5, 0(s2)
  FSGNJN.S fs6, fs3, fs5
  FLT.S s2, fs2, fs6
  ADD s6, s2, zero
  # implict jump to bb128
bb128:
  ADD s2, s6, zero
  BNE s2, zero, bb149
  # implict jump to bb129
bb129:
  FSGNJ.S fs3, fs2, fs2
  # implict jump to bb130
bb130:
  FSGNJ.S fs2, fs3, fs3
  LA s2, .CONSTANT.7.1
  FLW fs3, 0(s2)
  FLT.S s2, fs3, fs2
  BNE s2, zero, bb148
  # implict jump to bb131
bb131:
  FSGNJ.S fs3, fs2, fs2
  # implict jump to bb132
bb132:
  FSGNJ.S fs2, fs3, fs3
  FLT.S s2, fs2, fs4
  BNE s2, zero, bb147
  # implict jump to bb133
bb133:
  FSGNJ.S fs3, fs2, fs2
  # implict jump to bb134
bb134:
  FSGNJ.S fs2, fs3, fs3
  FSGNJ.S fa0, fs2, fs2
  CALL my_sin_impl
  FSGNJ.D fs2, fa0, fa0
  LA s2, width
  LW s6, 0(s2)
  ADDI s2, zero, 2
  DIVW s7, s6, s2
  LA s2, height
  LW s6, 0(s2)
  ADDI s2, zero, 2
  DIVW s8, s6, s2
  SUBW s2, s5, s7
  SUBW s6, s3, s8
  FCVT.S.W fs3, s2
  FMUL.S fs4, fs3, fs2
  FCVT.S.W fs5, s6
  FMUL.S fs6, fs5, fs1
  FSUB.S fs7, fs4, fs6
  FCVT.S.W fs4, s7
  FADD.S fs6, fs7, fs4
  FCVT.W.S s1, fs6, rtz
  FMUL.S fs4, fs3, fs1
  FMUL.S fs1, fs5, fs2
  FADD.S fs2, fs4, fs1
  FCVT.S.W fs1, s8
  FADD.S fs3, fs2, fs1
  FCVT.W.S s0, fs3, rtz
  SLT s2, s1, zero
  BNE s2, zero, bb146
  # implict jump to bb135
bb135:
  LA s2, width
  LW s6, 0(s2)
  SLT s2, s1, s6
  XORI s6, s2, 1
  ADD s2, s6, zero
  # implict jump to bb136
bb136:
  ADD s6, s2, zero
  BNE s6, zero, bb145
  # implict jump to bb137
bb137:
  SLT s2, s0, zero
  ADD s6, s2, zero
  # implict jump to bb138
bb138:
  ADD s2, s6, zero
  BNE s2, zero, bb144
  # implict jump to bb139
bb139:
  LA s2, height
  LW s6, 0(s2)
  SLT s2, s0, s6
  XORI s6, s2, 1
  ADD s2, s6, zero
  # implict jump to bb140
bb140:
  ADD s6, s2, zero
  BNE s6, zero, bb143
  # implict jump to bb141
bb141:
  LA s2, width
  LW s6, 0(s2)
  MULW s2, s0, s6
  ADDW s0, s2, s1
  SLLIW s1, s0, 2
  LA s0, image
  ADD s2, s0, s1
  LW s0, 0(s2)
  ADD s1, s0, zero
  # implict jump to bb142
bb142:
  ADD s0, s1, zero
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDIW s0, s5, 1
  ADD s4, s0, zero
  JAL zero, bb116
bb143:
  ADD s1, zero, zero
  JAL zero, bb142
bb144:
  ADDI s2, zero, 1
  JAL zero, bb140
bb145:
  ADDI s6, zero, 1
  JAL zero, bb138
bb146:
  ADDI s2, zero, 1
  JAL zero, bb136
bb147:
  LA s2, .CONSTANT.7.0
  FLW fs4, 0(s2)
  FADD.S fs5, fs2, fs4
  FSGNJ.S fs3, fs5, fs5
  JAL zero, bb134
bb148:
  LA s2, .CONSTANT.7.0
  FLW fs5, 0(s2)
  FSUB.S fs6, fs2, fs5
  FSGNJ.S fs3, fs6, fs6
  JAL zero, bb132
bb149:
  LA s2, .CONSTANT.7.0
  FLW fs5, 0(s2)
  FDIV.S fs6, fs2, fs5
  FCVT.W.S s2, fs6, rtz
  FCVT.S.W fs5, s2
  LA s2, .CONSTANT.7.0
  FLW fs6, 0(s2)
  FMUL.S fs7, fs5, fs6
  FSUB.S fs5, fs2, fs7
  FSGNJ.S fs3, fs5, fs5
  JAL zero, bb130
bb150:
  ADDI s6, zero, 1
  JAL zero, bb128
bb151:
  LA s2, .CONSTANT.7.0
  FLW fs3, 0(s2)
  FADD.S fs5, fs2, fs3
  FSGNJ.S fs1, fs5, fs5
  JAL zero, bb126
bb152:
  LA s2, .CONSTANT.7.0
  FLW fs3, 0(s2)
  FSUB.S fs4, fs2, fs3
  FSGNJ.S fs1, fs4, fs4
  JAL zero, bb124
bb153:
  LA s2, .CONSTANT.7.0
  FLW fs2, 0(s2)
  FDIV.S fs3, fs0, fs2
  FCVT.W.S s2, fs3, rtz
  FCVT.S.W fs2, s2
  LA s2, .CONSTANT.7.0
  FLW fs3, 0(s2)
  FMUL.S fs4, fs2, fs3
  FSUB.S fs2, fs0, fs4
  FSGNJ.S fs1, fs2, fs2
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
