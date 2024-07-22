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
  LW s1, 0(s6)
  ADDI s6, zero, 2
  DIVW s6, s1, s6
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
  FCVT.W.S s2, fs0, rtz
  BLT s3, zero, bb27
  # implict jump to bb17
bb17:
  SLT s4, s3, s1
  XORI s4, s4, 1
  # implict jump to bb18
bb18:
  BNE s4, zero, bb26
  # implict jump to bb19
bb19:
  SLT s4, s2, zero
  # implict jump to bb20
bb20:
  BNE s4, zero, bb25
  # implict jump to bb21
bb21:
  SLT s0, s2, s0
  XORI s0, s0, 1
  # implict jump to bb22
bb22:
  BNE s0, zero, bb24
  # implict jump to bb23
bb23:
  MULW s0, s2, s1
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
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  FSD fs0, 56(sp)
  CALL getfloat
  FSGNJ.D fs0, fa0, fa0
  CALL getch
  CALL getch
  ADD s0, a0, zero
  XORI s0, s0, 80
  BNE s0, zero, bb91
  # implict jump to bb70
bb70:
  CALL getch
  ADD s0, a0, zero
  XORI s0, s0, 50
  SLTU s0, zero, s0
  # implict jump to bb71
bb71:
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
  LA s1, width
  LW s1, 0(s1)
  ADDI s2, zero, 1024
  BLT s2, s1, bb89
  # implict jump to bb73
bb73:
  ADDI s1, zero, 1024
  SLT s0, s1, s0
  # implict jump to bb74
bb74:
  BNE s0, zero, bb88
  # implict jump to bb75
bb75:
  CALL getint
  ADD s0, a0, zero
  XORI s0, s0, 255
  SLTU s0, zero, s0
  # implict jump to bb76
bb76:
  BNE s0, zero, bb87
  # implict jump to bb77
bb77:
  ADD s0, zero, zero
  # implict jump to bb78
bb78:
  ADD s1, s0, zero
  LA s2, height
  LW s2, 0(s2)
  BLT s1, s2, bb83
  # implict jump to bb79
bb79:
  ADD s2, zero, zero
  # implict jump to bb80
bb80:
  BLT s2, zero, bb82
  # implict jump to bb81
bb81:
  FSGNJ.S fa0, fs0, fs0
  CALL write_pgm
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  FLD fs0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb82:
  ADDI a0, zero, -1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  FLD fs0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb83:
  ADD s3, zero, zero
  # implict jump to bb84
bb84:
  ADD s4, s3, zero
  LA s5, width
  LW s5, 0(s5)
  BLT s4, s5, bb86
  # implict jump to bb85
bb85:
  ADDIW s5, s1, 1
  ADD s0, s5, zero
  JAL zero, bb78
bb86:
  LA s0, width
  LW s0, 0(s0)
  MULW s0, s1, s0
  ADDW s0, s0, s4
  SLLIW s0, s0, 2
  LA s5, image
  ADD s0, s5, s0
  CALL getint
  ADD s5, a0, zero
  SW s5, 0(s0)
  ADDIW s0, s4, 1
  ADD s3, s0, zero
  JAL zero, bb84
bb87:
  ADDI s2, zero, -1
  JAL zero, bb80
bb88:
  ADDI s0, zero, 1
  JAL zero, bb76
bb89:
  ADDI s0, zero, 1
  JAL zero, bb74
bb90:
  ADDI s2, zero, -1
  JAL zero, bb80
bb91:
  ADDI s0, zero, 1
  JAL zero, bb71
read_image:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  CALL getch
  ADD s0, a0, zero
  XORI s0, s0, 80
  BNE s0, zero, bb111
  # implict jump to bb93
bb93:
  CALL getch
  ADD s0, a0, zero
  XORI s0, s0, 50
  SLTU s0, zero, s0
  # implict jump to bb94
bb94:
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
  LA s1, width
  LW s1, 0(s1)
  ADDI s2, zero, 1024
  BLT s2, s1, bb109
  # implict jump to bb96
bb96:
  ADDI s1, zero, 1024
  SLT s0, s1, s0
  # implict jump to bb97
bb97:
  BNE s0, zero, bb108
  # implict jump to bb98
bb98:
  CALL getint
  ADD s0, a0, zero
  XORI s0, s0, 255
  SLTU s0, zero, s0
  # implict jump to bb99
bb99:
  BNE s0, zero, bb107
  # implict jump to bb100
bb100:
  ADD s0, zero, zero
  # implict jump to bb101
bb101:
  ADD s1, s0, zero
  LA s2, height
  LW s2, 0(s2)
  BLT s1, s2, bb103
  # implict jump to bb102
bb102:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb103:
  ADD s2, zero, zero
  # implict jump to bb104
bb104:
  ADD s3, s2, zero
  LA s4, width
  LW s4, 0(s4)
  BLT s3, s4, bb106
  # implict jump to bb105
bb105:
  ADDIW s4, s1, 1
  ADD s0, s4, zero
  JAL zero, bb101
bb106:
  LA s0, width
  LW s0, 0(s0)
  MULW s0, s1, s0
  ADDW s0, s0, s3
  SLLIW s0, s0, 2
  LA s4, image
  ADD s0, s4, s0
  CALL getint
  ADD s4, a0, zero
  SW s4, 0(s0)
  ADDIW s0, s3, 1
  ADD s2, s0, zero
  JAL zero, bb104
bb107:
  ADDI a0, zero, -1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb108:
  ADDI s0, zero, 1
  JAL zero, bb99
bb109:
  ADDI s0, zero, 1
  JAL zero, bb97
bb110:
  ADDI a0, zero, -1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb111:
  ADDI s0, zero, 1
  JAL zero, bb94
write_pgm:
  ADDI sp, sp, -160
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
  SD s10, 88(sp)
  FSD fs0, 96(sp)
  FSD fs1, 104(sp)
  FSD fs2, 112(sp)
  FSD fs3, 120(sp)
  FSD fs4, 128(sp)
  FSD fs5, 136(sp)
  FSD fs6, 144(sp)
  FSGNJ.D fs0, fa0, fa0
  ADDI a0, zero, 80
  CALL putch
  ADDI a0, zero, 50
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  LA s4, width
  LW s4, 0(s4)
  ADD a0, s4, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LA s4, height
  LW s4, 0(s4)
  ADD a0, s4, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDI a0, zero, 255
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD s4, zero, zero
  # implict jump to bb113
bb113:
  ADD s5, s4, zero
  LA s6, height
  LW s6, 0(s6)
  BLT s5, s6, bb115
  # implict jump to bb114
bb114:
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
  LD s10, 88(sp)
  FLD fs0, 96(sp)
  FLD fs1, 104(sp)
  FLD fs2, 112(sp)
  FLD fs3, 120(sp)
  FLD fs4, 128(sp)
  FLD fs5, 136(sp)
  FLD fs6, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb115:
  ADD s6, zero, zero
  # implict jump to bb116
bb116:
  ADD s7, s6, zero
  LA s8, width
  LW s8, 0(s8)
  BLT s7, s8, bb118
  # implict jump to bb117
bb117:
  ADDI a0, zero, 10
  CALL putch
  ADDIW s8, s5, 1
  ADD s4, s8, zero
  JAL zero, bb113
bb118:
  LA s4, .CONSTANT.7.0
  FLW fs1, 0(s4)
  FLT.S s4, fs1, fs0
  BNE s4, zero, bb154
  # implict jump to bb119
bb119:
  LA s4, .CONSTANT.7.0
  FLW fs1, 0(s4)
  LA s4, .CONSTANT.7.0
  FLW fs2, 0(s4)
  FSGNJN.S fs1, fs1, fs2
  FLT.S s4, fs0, fs1
  # implict jump to bb120
bb120:
  BNE s4, zero, bb153
  # implict jump to bb121
bb121:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb122
bb122:
  LA s4, .CONSTANT.7.1
  FLW fs2, 0(s4)
  FLT.S s4, fs2, fs1
  BNE s4, zero, bb152
  # implict jump to bb123
bb123:
  FSGNJ.S fs2, fs1, fs1
  # implict jump to bb124
bb124:
  LA s4, .CONSTANT.7.1
  FLW fs1, 0(s4)
  LA s4, .CONSTANT.7.1
  FLW fs3, 0(s4)
  FSGNJN.S fs1, fs1, fs3
  FLT.S s4, fs2, fs1
  BNE s4, zero, bb151
  # implict jump to bb125
bb125:
  FSGNJ.S fs3, fs2, fs2
  # implict jump to bb126
bb126:
  FSGNJ.S fa0, fs3, fs3
  CALL my_sin_impl
  FSGNJ.D fs2, fa0, fa0
  ADDI s4, zero, 2
  FCVT.S.W fs3, s4
  LA s4, .CONSTANT.7.1
  FLW fs4, 0(s4)
  FDIV.S fs3, fs4, fs3
  FADD.S fs3, fs0, fs3
  LA s4, .CONSTANT.7.0
  FLW fs4, 0(s4)
  FLT.S s4, fs4, fs3
  BNE s4, zero, bb150
  # implict jump to bb127
bb127:
  LA s4, .CONSTANT.7.0
  FLW fs4, 0(s4)
  LA s4, .CONSTANT.7.0
  FLW fs5, 0(s4)
  FSGNJN.S fs4, fs4, fs5
  FLT.S s4, fs3, fs4
  # implict jump to bb128
bb128:
  BNE s4, zero, bb149
  # implict jump to bb129
bb129:
  FSGNJ.S fs4, fs3, fs3
  # implict jump to bb130
bb130:
  LA s4, .CONSTANT.7.1
  FLW fs3, 0(s4)
  FLT.S s4, fs3, fs4
  BNE s4, zero, bb148
  # implict jump to bb131
bb131:
  FSGNJ.S fs3, fs4, fs4
  # implict jump to bb132
bb132:
  FLT.S s4, fs3, fs1
  BNE s4, zero, bb147
  # implict jump to bb133
bb133:
  FSGNJ.S fs1, fs3, fs3
  # implict jump to bb134
bb134:
  FSGNJ.S fa0, fs1, fs1
  CALL my_sin_impl
  FSGNJ.D fs1, fa0, fa0
  LA s4, width
  LW s1, 0(s4)
  ADDI s4, zero, 2
  DIVW s4, s1, s4
  LA s8, height
  LW s0, 0(s8)
  ADDI s8, zero, 2
  DIVW s8, s0, s8
  SUBW s9, s7, s4
  SUBW s10, s5, s8
  FCVT.S.W fs3, s9
  FMUL.S fs4, fs3, fs1
  FCVT.S.W fs5, s10
  FMUL.S fs6, fs5, fs2
  FSUB.S fs4, fs4, fs6
  FCVT.S.W fs6, s4
  FADD.S fs4, fs4, fs6
  FCVT.W.S s2, fs4, rtz
  FMUL.S fs2, fs3, fs2
  FMUL.S fs1, fs5, fs1
  FADD.S fs1, fs2, fs1
  FCVT.S.W fs2, s8
  FADD.S fs1, fs1, fs2
  FCVT.W.S s3, fs1, rtz
  BLT s2, zero, bb146
  # implict jump to bb135
bb135:
  SLT s4, s2, s1
  XORI s4, s4, 1
  # implict jump to bb136
bb136:
  BNE s4, zero, bb145
  # implict jump to bb137
bb137:
  SLT s4, s3, zero
  # implict jump to bb138
bb138:
  BNE s4, zero, bb144
  # implict jump to bb139
bb139:
  SLT s0, s3, s0
  XORI s0, s0, 1
  # implict jump to bb140
bb140:
  BNE s0, zero, bb143
  # implict jump to bb141
bb141:
  MULW s0, s3, s1
  ADDW s0, s0, s2
  SLLIW s0, s0, 2
  LA s1, image
  ADD s0, s1, s0
  LW s0, 0(s0)
  # implict jump to bb142
bb142:
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDIW s0, s7, 1
  ADD s6, s0, zero
  JAL zero, bb116
bb143:
  ADD s0, zero, zero
  JAL zero, bb142
bb144:
  ADDI s0, zero, 1
  JAL zero, bb140
bb145:
  ADDI s4, zero, 1
  JAL zero, bb138
bb146:
  ADDI s4, zero, 1
  JAL zero, bb136
bb147:
  LA s4, .CONSTANT.7.0
  FLW fs4, 0(s4)
  FADD.S fs3, fs3, fs4
  FSGNJ.S fs1, fs3, fs3
  JAL zero, bb134
bb148:
  LA s4, .CONSTANT.7.0
  FLW fs5, 0(s4)
  FSUB.S fs4, fs4, fs5
  FSGNJ.S fs3, fs4, fs4
  JAL zero, bb132
bb149:
  LA s4, .CONSTANT.7.0
  FLW fs5, 0(s4)
  FDIV.S fs5, fs3, fs5
  FCVT.W.S s4, fs5, rtz
  FCVT.S.W fs5, s4
  LA s4, .CONSTANT.7.0
  FLW fs6, 0(s4)
  FMUL.S fs5, fs5, fs6
  FSUB.S fs3, fs3, fs5
  FSGNJ.S fs4, fs3, fs3
  JAL zero, bb130
bb150:
  ADDI s4, zero, 1
  JAL zero, bb128
bb151:
  LA s4, .CONSTANT.7.0
  FLW fs4, 0(s4)
  FADD.S fs2, fs2, fs4
  FSGNJ.S fs3, fs2, fs2
  JAL zero, bb126
bb152:
  LA s4, .CONSTANT.7.0
  FLW fs3, 0(s4)
  FSUB.S fs1, fs1, fs3
  FSGNJ.S fs2, fs1, fs1
  JAL zero, bb124
bb153:
  LA s4, .CONSTANT.7.0
  FLW fs2, 0(s4)
  FDIV.S fs2, fs0, fs2
  FCVT.W.S s4, fs2, rtz
  FCVT.S.W fs2, s4
  LA s4, .CONSTANT.7.0
  FLW fs3, 0(s4)
  FMUL.S fs2, fs2, fs3
  FSUB.S fs2, fs0, fs2
  FSGNJ.S fs1, fs2, fs2
  JAL zero, bb122
bb154:
  ADDI s4, zero, 1
  JAL zero, bb120
my_fabs:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs0, 16(sp)
  FSD fs1, 24(sp)
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
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb157:
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
