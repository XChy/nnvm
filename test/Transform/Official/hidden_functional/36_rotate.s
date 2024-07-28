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
  FSD fs2, 80(sp)
  FSD fs3, 88(sp)
  FSD fs4, 96(sp)
  FSD fs5, 104(sp)
  FSD fs1, 112(sp)
  ADD s4, a0, zero
  ADD s5, a1, zero
  FSGNJ.D fs0, fa0, fa0
  LA s6, .CONSTANT.7.0
  FLW fs1, 0(s6)
  FLT.S s6, fs1, fs0
  BNE s6, zero, bb35
  # implict jump to bb1
bb1:
  LA s6, .CONSTANT.7.0
  FLW fs1, 0(s6)
  LA s6, .CONSTANT.7.0
  FLW fs2, 0(s6)
  FSGNJN.S fs1, fs1, fs2
  FLT.S s6, fs0, fs1
  # implict jump to bb2
bb2:
  BNE s6, zero, bb34
  # implict jump to bb3
bb3:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb4
bb4:
  LA s6, .CONSTANT.7.1
  FLW fs2, 0(s6)
  FLT.S s6, fs2, fs1
  BNE s6, zero, bb33
  # implict jump to bb5
bb5:
  FSGNJ.S fs2, fs1, fs1
  # implict jump to bb6
bb6:
  LA s6, .CONSTANT.7.1
  FLW fs1, 0(s6)
  LA s6, .CONSTANT.7.1
  FLW fs3, 0(s6)
  FSGNJN.S fs1, fs1, fs3
  FLT.S s6, fs2, fs1
  BNE s6, zero, bb32
  # implict jump to bb7
bb7:
  FSGNJ.S fs3, fs2, fs2
  # implict jump to bb8
bb8:
  FSGNJ.S fa0, fs3, fs3
  CALL my_sin_impl
  FSGNJ.D fs2, fa0, fa0
  ADDI s6, zero, 2
  FCVT.S.W fs3, s6
  LA s6, .CONSTANT.7.1
  FLW fs4, 0(s6)
  FDIV.S fs3, fs4, fs3
  FADD.S fs0, fs0, fs3
  LA s6, .CONSTANT.7.0
  FLW fs3, 0(s6)
  FLT.S s6, fs3, fs0
  BNE s6, zero, bb31
  # implict jump to bb9
bb9:
  LA s6, .CONSTANT.7.0
  FLW fs3, 0(s6)
  LA s6, .CONSTANT.7.0
  FLW fs4, 0(s6)
  FSGNJN.S fs3, fs3, fs4
  FLT.S s6, fs0, fs3
  # implict jump to bb10
bb10:
  BNE s6, zero, bb30
  # implict jump to bb11
bb11:
  FSGNJ.S fs3, fs0, fs0
  # implict jump to bb12
bb12:
  LA s6, .CONSTANT.7.1
  FLW fs0, 0(s6)
  FLT.S s6, fs0, fs3
  BNE s6, zero, bb29
  # implict jump to bb13
bb13:
  FSGNJ.S fs0, fs3, fs3
  # implict jump to bb14
bb14:
  FLT.S s6, fs0, fs1
  BNE s6, zero, bb28
  # implict jump to bb15
bb15:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb16
bb16:
  FSGNJ.S fa0, fs1, fs1
  CALL my_sin_impl
  LA s6, width
  LW s2, 0(s6)
  ADDI s6, zero, 2
  DIVW s6, s2, s6
  LA s7, height
  LW s0, 0(s7)
  ADDI s7, zero, 2
  DIVW s7, s0, s7
  SUBW s4, s4, s6
  SUBW s5, s5, s7
  FCVT.S.W fs0, s4
  FMUL.S fs1, fs0, fa0
  FCVT.S.W fs3, s5
  FMUL.S fs4, fs3, fs2
  FSUB.S fs1, fs1, fs4
  FCVT.S.W fs4, s6
  FADD.S fs1, fs1, fs4
  FCVT.W.S s3, fs1, rtz
  FMUL.S fs0, fs0, fs2
  FMUL.S fs1, fs3, fa0
  FADD.S fs0, fs0, fs1
  FCVT.S.W fs1, s7
  FADD.S fs0, fs0, fs1
  FCVT.W.S s1, fs0, rtz
  BLT s3, zero, bb27
  # implict jump to bb17
bb17:
  SLT s4, s3, s2
  XORI s4, s4, 1
  # implict jump to bb18
bb18:
  BNE s4, zero, bb26
  # implict jump to bb19
bb19:
  SLT s4, s1, zero
  # implict jump to bb20
bb20:
  BNE s4, zero, bb25
  # implict jump to bb21
bb21:
  SLT s0, s1, s0
  XORI s0, s0, 1
  # implict jump to bb22
bb22:
  BNE s0, zero, bb24
  # implict jump to bb23
bb23:
  MULW s0, s1, s2
  ADDW s0, s0, s3
  SLLIW s0, s0, 2
  LA s1, image
  ADD s0, s1, s0
  LW s0, 0(s0)
  ADD a0, s0, zero
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
  FLD fs2, 80(sp)
  FLD fs3, 88(sp)
  FLD fs4, 96(sp)
  FLD fs5, 104(sp)
  FLD fs1, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb24:
  ADD a0, zero, zero
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
  FLD fs2, 80(sp)
  FLD fs3, 88(sp)
  FLD fs4, 96(sp)
  FLD fs5, 104(sp)
  FLD fs1, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb25:
  ADDI s0, zero, 1
  JAL zero, bb22
bb26:
  ADDI s4, zero, 1
  JAL zero, bb20
bb27:
  ADDI s4, zero, 1
  JAL zero, bb18
bb28:
  LA s6, .CONSTANT.7.0
  FLW fs3, 0(s6)
  FADD.S fs0, fs0, fs3
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb16
bb29:
  LA s6, .CONSTANT.7.0
  FLW fs4, 0(s6)
  FSUB.S fs3, fs3, fs4
  FSGNJ.S fs0, fs3, fs3
  JAL zero, bb14
bb30:
  LA s6, .CONSTANT.7.0
  FLW fs4, 0(s6)
  FDIV.S fs4, fs0, fs4
  FCVT.W.S s6, fs4, rtz
  FCVT.S.W fs4, s6
  LA s6, .CONSTANT.7.0
  FLW fs5, 0(s6)
  FMUL.S fs4, fs4, fs5
  FSUB.S fs0, fs0, fs4
  FSGNJ.S fs3, fs0, fs0
  JAL zero, bb12
bb31:
  ADDI s6, zero, 1
  JAL zero, bb10
bb32:
  LA s6, .CONSTANT.7.0
  FLW fs4, 0(s6)
  FADD.S fs2, fs2, fs4
  FSGNJ.S fs3, fs2, fs2
  JAL zero, bb8
bb33:
  LA s6, .CONSTANT.7.0
  FLW fs3, 0(s6)
  FSUB.S fs1, fs1, fs3
  FSGNJ.S fs2, fs1, fs1
  JAL zero, bb6
bb34:
  LA s6, .CONSTANT.7.0
  FLW fs2, 0(s6)
  FDIV.S fs2, fs0, fs2
  FCVT.W.S s6, fs2, rtz
  FCVT.S.W fs2, s6
  LA s6, .CONSTANT.7.0
  FLW fs3, 0(s6)
  FMUL.S fs2, fs2, fs3
  FSUB.S fs2, fs0, fs2
  FSGNJ.S fs1, fs2, fs2
  JAL zero, bb4
bb35:
  ADDI s6, zero, 1
  JAL zero, bb2
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
  BNE s0, zero, bb41
  # implict jump to bb37
bb37:
  FSGNJN.S fs1, fs0, fs0
  # implict jump to bb38
bb38:
  LA s0, .CONSTANT.7.2
  FLW fs2, 0(s0)
  FLE.S s0, fs1, fs2
  BNE s0, zero, bb40
  # implict jump to bb39
bb39:
  LA s0, .CONSTANT.7.3
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
bb40:
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  FLD fs2, 32(sp)
  FLD fs3, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb41:
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb38
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
  BNE s0, zero, bb55
  # implict jump to bb44
bb44:
  LA s0, .CONSTANT.7.0
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.0
  FLW fs2, 0(s0)
  FSGNJN.S fs1, fs1, fs2
  FLT.S s0, fs0, fs1
  # implict jump to bb45
bb45:
  BNE s0, zero, bb54
  # implict jump to bb46
bb46:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb47
bb47:
  LA s0, .CONSTANT.7.1
  FLW fs0, 0(s0)
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb53
  # implict jump to bb48
bb48:
  FSGNJ.S fs0, fs1, fs1
  # implict jump to bb49
bb49:
  LA s0, .CONSTANT.7.1
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.1
  FLW fs2, 0(s0)
  FSGNJN.S fs1, fs1, fs2
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb52
  # implict jump to bb50
bb50:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb51
bb51:
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
bb52:
  LA s0, .CONSTANT.7.0
  FLW fs2, 0(s0)
  FADD.S fs0, fs0, fs2
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb51
bb53:
  LA s0, .CONSTANT.7.0
  FLW fs2, 0(s0)
  FSUB.S fs1, fs1, fs2
  FSGNJ.S fs0, fs1, fs1
  JAL zero, bb49
bb54:
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
  JAL zero, bb47
bb55:
  ADDI s0, zero, 1
  JAL zero, bb45
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
  BNE s0, zero, bb68
  # implict jump to bb57
bb57:
  LA s0, .CONSTANT.7.0
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.0
  FLW fs2, 0(s0)
  FSGNJN.S fs1, fs1, fs2
  FLT.S s0, fs0, fs1
  # implict jump to bb58
bb58:
  BNE s0, zero, bb67
  # implict jump to bb59
bb59:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb60
bb60:
  LA s0, .CONSTANT.7.1
  FLW fs0, 0(s0)
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb66
  # implict jump to bb61
bb61:
  FSGNJ.S fs0, fs1, fs1
  # implict jump to bb62
bb62:
  LA s0, .CONSTANT.7.1
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.1
  FLW fs2, 0(s0)
  FSGNJN.S fs1, fs1, fs2
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb65
  # implict jump to bb63
bb63:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb64
bb64:
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
bb65:
  LA s0, .CONSTANT.7.0
  FLW fs2, 0(s0)
  FADD.S fs0, fs0, fs2
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb64
bb66:
  LA s0, .CONSTANT.7.0
  FLW fs2, 0(s0)
  FSUB.S fs1, fs1, fs2
  FSGNJ.S fs0, fs1, fs1
  JAL zero, bb62
bb67:
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
  JAL zero, bb60
bb68:
  ADDI s0, zero, 1
  JAL zero, bb58
main:
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s2, 16(sp)
  FSD fs0, 24(sp)
  SD s1, 32(sp)
  SD s3, 40(sp)
  SD s4, 48(sp)
  SD s5, 56(sp)
  SD s6, 64(sp)
  SD s7, 72(sp)
  CALL getfloat
  FSGNJ.D fs0, fa0, fa0
  CALL getch
  CALL getch
  ADD s2, a0, zero
  XORI s2, s2, 80
  BNE s2, zero, bb97
  # implict jump to bb70
bb70:
  CALL getch
  ADD s2, a0, zero
  XORI s2, s2, 50
  SLTU s2, zero, s2
  # implict jump to bb71
bb71:
  BNE s2, zero, bb96
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
  LA s3, width
  LW s3, 0(s3)
  ADDI s4, zero, 1024
  BLT s4, s3, bb95
  # implict jump to bb73
bb73:
  ADDI s3, zero, 1024
  SLT s2, s3, s2
  # implict jump to bb74
bb74:
  BNE s2, zero, bb94
  # implict jump to bb75
bb75:
  CALL getint
  ADD s2, a0, zero
  XORI s2, s2, 255
  SLTU s2, zero, s2
  # implict jump to bb76
bb76:
  BNE s2, zero, bb93
  # implict jump to bb77
bb77:
  LA s2, height
  LW s2, 0(s2)
  BLT zero, s2, bb82
  # implict jump to bb78
bb78:
  ADD s5, zero, zero
  # implict jump to bb79
bb79:
  BLT s5, zero, bb81
  # implict jump to bb80
bb80:
  FSGNJ.S fa0, fs0, fs0
  CALL write_pgm
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s2, 16(sp)
  FLD fs0, 24(sp)
  LD s1, 32(sp)
  LD s3, 40(sp)
  LD s4, 48(sp)
  LD s5, 56(sp)
  LD s6, 64(sp)
  LD s7, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb81:
  ADDI a0, zero, -1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s2, 16(sp)
  FLD fs0, 24(sp)
  LD s1, 32(sp)
  LD s3, 40(sp)
  LD s4, 48(sp)
  LD s5, 56(sp)
  LD s6, 64(sp)
  LD s7, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb82:
  # implict jump to bb83
bb83:
  ADD s2, zero, zero
  # implict jump to bb84
bb84:
  ADD s3, s2, zero
  LA s4, width
  LW s4, 0(s4)
  BLT zero, s4, bb88
  # implict jump to bb85
bb85:
  ADDIW s0, s3, 1
  # implict jump to bb86
bb86:
  LA s5, height
  LW s5, 0(s5)
  BLT s0, s5, bb87
  JAL zero, bb78
bb87:
  ADD s2, s0, zero
  JAL zero, bb84
bb88:
  # implict jump to bb89
bb89:
  ADD s4, zero, zero
  # implict jump to bb90
bb90:
  ADD s5, s4, zero
  LA s6, width
  LW s6, 0(s6)
  MULW s6, s3, s6
  ADDW s6, s6, s5
  SLLIW s6, s6, 2
  LA s7, image
  ADD s6, s7, s6
  CALL getint
  ADD s7, a0, zero
  SW s7, 0(s6)
  ADDIW s1, s5, 1
  # implict jump to bb91
bb91:
  LA s5, width
  LW s5, 0(s5)
  BLT s1, s5, bb92
  JAL zero, bb85
bb92:
  ADD s4, s1, zero
  JAL zero, bb90
bb93:
  ADDI s5, zero, -1
  JAL zero, bb79
bb94:
  ADDI s2, zero, 1
  JAL zero, bb76
bb95:
  ADDI s2, zero, 1
  JAL zero, bb74
bb96:
  ADDI s5, zero, -1
  JAL zero, bb79
bb97:
  ADDI s2, zero, 1
  JAL zero, bb71
read_image:
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  CALL getch
  ADD s2, a0, zero
  XORI s2, s2, 80
  BNE s2, zero, bb123
  # implict jump to bb99
bb99:
  CALL getch
  ADD s2, a0, zero
  XORI s2, s2, 50
  SLTU s2, zero, s2
  # implict jump to bb100
bb100:
  BNE s2, zero, bb122
  # implict jump to bb101
bb101:
  CALL getint
  ADD s2, a0, zero
  LA s3, width
  SW s2, 0(s3)
  CALL getint
  ADD s2, a0, zero
  LA s3, height
  SW s2, 0(s3)
  LA s3, width
  LW s3, 0(s3)
  ADDI s4, zero, 1024
  BLT s4, s3, bb121
  # implict jump to bb102
bb102:
  ADDI s3, zero, 1024
  SLT s2, s3, s2
  # implict jump to bb103
bb103:
  BNE s2, zero, bb120
  # implict jump to bb104
bb104:
  CALL getint
  ADD s2, a0, zero
  XORI s2, s2, 255
  SLTU s2, zero, s2
  # implict jump to bb105
bb105:
  BNE s2, zero, bb119
  # implict jump to bb106
bb106:
  LA s2, height
  LW s2, 0(s2)
  BLT zero, s2, bb108
  # implict jump to bb107
bb107:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb108:
  # implict jump to bb109
bb109:
  ADD s2, zero, zero
  # implict jump to bb110
bb110:
  ADD s3, s2, zero
  LA s4, width
  LW s4, 0(s4)
  BLT zero, s4, bb114
  # implict jump to bb111
bb111:
  ADDIW s0, s3, 1
  # implict jump to bb112
bb112:
  LA s5, height
  LW s5, 0(s5)
  BLT s0, s5, bb113
  JAL zero, bb107
bb113:
  ADD s2, s0, zero
  JAL zero, bb110
bb114:
  # implict jump to bb115
bb115:
  ADD s4, zero, zero
  # implict jump to bb116
bb116:
  ADD s5, s4, zero
  LA s6, width
  LW s6, 0(s6)
  MULW s6, s3, s6
  ADDW s6, s6, s5
  SLLIW s6, s6, 2
  LA s7, image
  ADD s6, s7, s6
  CALL getint
  ADD s7, a0, zero
  SW s7, 0(s6)
  ADDIW s1, s5, 1
  # implict jump to bb117
bb117:
  LA s5, width
  LW s5, 0(s5)
  BLT s1, s5, bb118
  JAL zero, bb111
bb118:
  ADD s4, s1, zero
  JAL zero, bb116
bb119:
  ADDI a0, zero, -1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb120:
  ADDI s2, zero, 1
  JAL zero, bb105
bb121:
  ADDI s2, zero, 1
  JAL zero, bb103
bb122:
  ADDI a0, zero, -1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb123:
  ADDI s2, zero, 1
  JAL zero, bb100
write_pgm:
  ADDI sp, sp, -176
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
  SD s11, 112(sp)
  FSD fs0, 120(sp)
  FSD fs1, 128(sp)
  FSD fs2, 136(sp)
  FSD fs3, 144(sp)
  FSD fs5, 152(sp)
  FSD fs4, 160(sp)
  FSD fs6, 168(sp)
  FSGNJ.D fs0, fa0, fa0
  ADDI a0, zero, 80
  CALL putch
  ADDI a0, zero, 50
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  LA s7, width
  LW s7, 0(s7)
  ADD a0, s7, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LA s7, height
  LW s7, 0(s7)
  ADD a0, s7, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDI a0, zero, 255
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LA s7, height
  LW s7, 0(s7)
  BLT zero, s7, bb126
  # implict jump to bb125
bb125:
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
  LD s11, 112(sp)
  FLD fs0, 120(sp)
  FLD fs1, 128(sp)
  FLD fs2, 136(sp)
  FLD fs3, 144(sp)
  FLD fs5, 152(sp)
  FLD fs4, 160(sp)
  FLD fs6, 168(sp)
  ADDI sp, sp, 176
  JALR zero, 0(ra)
bb126:
  # implict jump to bb127
bb127:
  ADD s7, zero, zero
  # implict jump to bb128
bb128:
  ADD t4, s7, zero
  SW t4, 4(sp)
  LA s9, width
  LW s9, 0(s9)
  BLT zero, s9, bb132
  # implict jump to bb129
bb129:
  ADDI a0, zero, 10
  CALL putch
  LW t4, 4(sp)
  ADDIW s1, t4, 1
  # implict jump to bb130
bb130:
  LA s0, height
  LW s0, 0(s0)
  BLT s1, s0, bb131
  JAL zero, bb125
bb131:
  ADD s7, s1, zero
  JAL zero, bb128
bb132:
  # implict jump to bb133
bb133:
  LA s9, .CONSTANT.7.0
  FLW fs1, 0(s9)
  FLT.S t4, fs1, fs0
  SB t4, 0(sp)
  ADD t4, zero, zero
  SW t4, 8(sp)
  # implict jump to bb134
bb134:
  LW t4, 8(sp)
  ADD s10, t4, zero
  LB t4, 0(sp)
  BNE t4, zero, bb172
  # implict jump to bb135
bb135:
  LA s11, .CONSTANT.7.0
  FLW fs1, 0(s11)
  LA s11, .CONSTANT.7.0
  FLW fs2, 0(s11)
  FSGNJN.S fs1, fs1, fs2
  FLT.S s11, fs0, fs1
  # implict jump to bb136
bb136:
  BNE s11, zero, bb171
  # implict jump to bb137
bb137:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb138
bb138:
  LA s11, .CONSTANT.7.1
  FLW fs2, 0(s11)
  FLT.S s11, fs2, fs1
  BNE s11, zero, bb170
  # implict jump to bb139
bb139:
  FSGNJ.S fs2, fs1, fs1
  # implict jump to bb140
bb140:
  LA s11, .CONSTANT.7.1
  FLW fs1, 0(s11)
  LA s11, .CONSTANT.7.1
  FLW fs3, 0(s11)
  FSGNJN.S fs1, fs1, fs3
  FLT.S s11, fs2, fs1
  BNE s11, zero, bb169
  # implict jump to bb141
bb141:
  FSGNJ.S fs3, fs2, fs2
  # implict jump to bb142
bb142:
  FSGNJ.S fa0, fs3, fs3
  CALL my_sin_impl
  FSGNJ.D fs2, fa0, fa0
  ADDI s11, zero, 2
  FCVT.S.W fs3, s11
  LA s11, .CONSTANT.7.1
  FLW fs4, 0(s11)
  FDIV.S fs3, fs4, fs3
  FADD.S fs3, fs0, fs3
  LA s11, .CONSTANT.7.0
  FLW fs4, 0(s11)
  FLT.S s11, fs4, fs3
  BNE s11, zero, bb168
  # implict jump to bb143
bb143:
  LA s11, .CONSTANT.7.0
  FLW fs4, 0(s11)
  LA s11, .CONSTANT.7.0
  FLW fs5, 0(s11)
  FSGNJN.S fs4, fs4, fs5
  FLT.S s11, fs3, fs4
  # implict jump to bb144
bb144:
  BNE s11, zero, bb167
  # implict jump to bb145
bb145:
  FSGNJ.S fs4, fs3, fs3
  # implict jump to bb146
bb146:
  LA s11, .CONSTANT.7.1
  FLW fs3, 0(s11)
  FLT.S s11, fs3, fs4
  BNE s11, zero, bb166
  # implict jump to bb147
bb147:
  FSGNJ.S fs3, fs4, fs4
  # implict jump to bb148
bb148:
  FLT.S s11, fs3, fs1
  BNE s11, zero, bb165
  # implict jump to bb149
bb149:
  FSGNJ.S fs1, fs3, fs3
  # implict jump to bb150
bb150:
  FSGNJ.S fa0, fs1, fs1
  CALL my_sin_impl
  FSGNJ.D fs1, fa0, fa0
  LA s11, width
  LW s5, 0(s11)
  ADDI s11, zero, 2
  DIVW s11, s5, s11
  LA s0, height
  LW s6, 0(s0)
  ADDI s0, zero, 2
  DIVW s0, s6, s0
  SUBW s8, s10, s11
  LW t4, 4(sp)
  SUBW s9, t4, s0
  FCVT.S.W fs3, s8
  FMUL.S fs4, fs3, fs1
  FCVT.S.W fs5, s9
  FMUL.S fs6, fs5, fs2
  FSUB.S fs4, fs4, fs6
  FCVT.S.W fs6, s11
  FADD.S fs4, fs4, fs6
  FCVT.W.S s2, fs4, rtz
  FMUL.S fs2, fs3, fs2
  FMUL.S fs1, fs5, fs1
  FADD.S fs1, fs2, fs1
  FCVT.S.W fs2, s0
  FADD.S fs1, fs1, fs2
  FCVT.W.S s3, fs1, rtz
  BLT s2, zero, bb164
  # implict jump to bb151
bb151:
  SLT s0, s2, s5
  XORI s0, s0, 1
  # implict jump to bb152
bb152:
  BNE s0, zero, bb163
  # implict jump to bb153
bb153:
  SLT s0, s3, zero
  # implict jump to bb154
bb154:
  BNE s0, zero, bb162
  # implict jump to bb155
bb155:
  SLT s0, s3, s6
  XORI s0, s0, 1
  # implict jump to bb156
bb156:
  BNE s0, zero, bb161
  # implict jump to bb157
bb157:
  MULW s0, s3, s5
  ADDW s0, s0, s2
  SLLIW s0, s0, 2
  LA s2, image
  ADD s0, s2, s0
  LW s0, 0(s0)
  # implict jump to bb158
bb158:
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDIW s4, s10, 1
  # implict jump to bb159
bb159:
  LA s0, width
  LW s0, 0(s0)
  BLT s4, s0, bb160
  JAL zero, bb129
bb160:
  ADD t4, s4, zero
  SW t4, 8(sp)
  JAL zero, bb134
bb161:
  ADD s0, zero, zero
  JAL zero, bb158
bb162:
  ADDI s0, zero, 1
  JAL zero, bb156
bb163:
  ADDI s0, zero, 1
  JAL zero, bb154
bb164:
  ADDI s0, zero, 1
  JAL zero, bb152
bb165:
  LA s11, .CONSTANT.7.0
  FLW fs4, 0(s11)
  FADD.S fs3, fs3, fs4
  FSGNJ.S fs1, fs3, fs3
  JAL zero, bb150
bb166:
  LA s11, .CONSTANT.7.0
  FLW fs5, 0(s11)
  FSUB.S fs4, fs4, fs5
  FSGNJ.S fs3, fs4, fs4
  JAL zero, bb148
bb167:
  LA s11, .CONSTANT.7.0
  FLW fs5, 0(s11)
  FDIV.S fs5, fs3, fs5
  FCVT.W.S s11, fs5, rtz
  FCVT.S.W fs5, s11
  LA s11, .CONSTANT.7.0
  FLW fs6, 0(s11)
  FMUL.S fs5, fs5, fs6
  FSUB.S fs3, fs3, fs5
  FSGNJ.S fs4, fs3, fs3
  JAL zero, bb146
bb168:
  ADDI s11, zero, 1
  JAL zero, bb144
bb169:
  LA s11, .CONSTANT.7.0
  FLW fs4, 0(s11)
  FADD.S fs2, fs2, fs4
  FSGNJ.S fs3, fs2, fs2
  JAL zero, bb142
bb170:
  LA s11, .CONSTANT.7.0
  FLW fs3, 0(s11)
  FSUB.S fs1, fs1, fs3
  FSGNJ.S fs2, fs1, fs1
  JAL zero, bb140
bb171:
  LA s11, .CONSTANT.7.0
  FLW fs2, 0(s11)
  FDIV.S fs2, fs0, fs2
  FCVT.W.S s11, fs2, rtz
  FCVT.S.W fs2, s11
  LA s11, .CONSTANT.7.0
  FLW fs3, 0(s11)
  FMUL.S fs2, fs2, fs3
  FSUB.S fs2, fs0, fs2
  FSGNJ.S fs1, fs2, fs2
  JAL zero, bb138
bb172:
  ADDI s11, zero, 1
  JAL zero, bb136
my_fabs:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs0, 16(sp)
  FSD fs1, 24(sp)
  FSGNJ.D fs0, fa0, fa0
  FCVT.S.L fs1, zero
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb175
  # implict jump to bb174
bb174:
  FSGNJN.S fs1, fs0, fs0
  FSGNJ.S fa0, fs1, fs1
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb175:
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
