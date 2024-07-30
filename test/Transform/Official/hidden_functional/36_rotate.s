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
  LW s1, 0(s7)
  ADDI s7, zero, 2
  DIVW s7, s1, s7
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
  FCVT.W.S s0, fs0, rtz
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
  SLT s4, s0, zero
  # implict jump to bb20
bb20:
  BNE s4, zero, bb25
  # implict jump to bb21
bb21:
  SLT s1, s0, s1
  XORI s1, s1, 1
  # implict jump to bb22
bb22:
  BNE s1, zero, bb24
  # implict jump to bb23
bb23:
  MULW s0, s0, s2
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
  ADDI s1, zero, 1
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
  BNE s0, zero, bb93
  # implict jump to bb70
bb70:
  CALL getch
  ADD s0, a0, zero
  XORI s0, s0, 50
  SLTU s0, zero, s0
  # implict jump to bb71
bb71:
  BNE s0, zero, bb92
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
  BLT s2, s1, bb91
  # implict jump to bb73
bb73:
  ADDI s1, zero, 1024
  SLT s0, s1, s0
  # implict jump to bb74
bb74:
  BNE s0, zero, bb90
  # implict jump to bb75
bb75:
  CALL getint
  ADD s0, a0, zero
  XORI s0, s0, 255
  SLTU s0, zero, s0
  # implict jump to bb76
bb76:
  BNE s0, zero, bb89
  # implict jump to bb77
bb77:
  LA s0, height
  LW s0, 0(s0)
  BLT zero, s0, bb82
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
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  FLD fs0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb81:
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
bb82:
  ADD s0, zero, zero
  # implict jump to bb83
bb83:
  ADD s1, s0, zero
  LA s2, width
  LW s2, 0(s2)
  BLT zero, s2, bb86
  # implict jump to bb84
bb84:
  ADDIW s4, s1, 1
  LA s5, height
  LW s5, 0(s5)
  BLT s4, s5, bb85
  JAL zero, bb78
bb85:
  ADD s0, s4, zero
  JAL zero, bb83
bb86:
  ADD s2, zero, zero
  # implict jump to bb87
bb87:
  ADD s3, s2, zero
  LA s4, width
  LW s4, 0(s4)
  MULW s4, s1, s4
  ADDW s4, s4, s3
  SLLIW s4, s4, 2
  LA s5, image
  ADD s4, s5, s4
  CALL getint
  ADD s5, a0, zero
  SW s5, 0(s4)
  ADDIW s3, s3, 1
  LA s4, width
  LW s4, 0(s4)
  BLT s3, s4, bb88
  JAL zero, bb84
bb88:
  ADD s2, s3, zero
  JAL zero, bb87
bb89:
  ADDI s5, zero, -1
  JAL zero, bb79
bb90:
  ADDI s0, zero, 1
  JAL zero, bb76
bb91:
  ADDI s0, zero, 1
  JAL zero, bb74
bb92:
  ADDI s5, zero, -1
  JAL zero, bb79
bb93:
  ADDI s0, zero, 1
  JAL zero, bb71
read_image:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  CALL getch
  ADD s0, a0, zero
  XORI s0, s0, 80
  BNE s0, zero, bb115
  # implict jump to bb95
bb95:
  CALL getch
  ADD s0, a0, zero
  XORI s0, s0, 50
  SLTU s0, zero, s0
  # implict jump to bb96
bb96:
  BNE s0, zero, bb114
  # implict jump to bb97
bb97:
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
  BLT s2, s1, bb113
  # implict jump to bb98
bb98:
  ADDI s1, zero, 1024
  SLT s0, s1, s0
  # implict jump to bb99
bb99:
  BNE s0, zero, bb112
  # implict jump to bb100
bb100:
  CALL getint
  ADD s0, a0, zero
  XORI s0, s0, 255
  SLTU s0, zero, s0
  # implict jump to bb101
bb101:
  BNE s0, zero, bb111
  # implict jump to bb102
bb102:
  LA s0, height
  LW s0, 0(s0)
  BLT zero, s0, bb104
  # implict jump to bb103
bb103:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb104:
  ADD s0, zero, zero
  # implict jump to bb105
bb105:
  ADD s1, s0, zero
  LA s2, width
  LW s2, 0(s2)
  BLT zero, s2, bb108
  # implict jump to bb106
bb106:
  ADDIW s4, s1, 1
  LA s5, height
  LW s5, 0(s5)
  BLT s4, s5, bb107
  JAL zero, bb103
bb107:
  ADD s0, s4, zero
  JAL zero, bb105
bb108:
  ADD s2, zero, zero
  # implict jump to bb109
bb109:
  ADD s3, s2, zero
  LA s4, width
  LW s4, 0(s4)
  MULW s4, s1, s4
  ADDW s4, s4, s3
  SLLIW s4, s4, 2
  LA s5, image
  ADD s4, s5, s4
  CALL getint
  ADD s5, a0, zero
  SW s5, 0(s4)
  ADDIW s3, s3, 1
  LA s4, width
  LW s4, 0(s4)
  BLT s3, s4, bb110
  JAL zero, bb106
bb110:
  ADD s2, s3, zero
  JAL zero, bb109
bb111:
  ADDI a0, zero, -1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb112:
  ADDI s0, zero, 1
  JAL zero, bb101
bb113:
  ADDI s0, zero, 1
  JAL zero, bb99
bb114:
  ADDI a0, zero, -1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb115:
  ADDI s0, zero, 1
  JAL zero, bb96
write_pgm:
  ADDI sp, sp, -176
  SD ra, 8(sp)
  SD s0, 16(sp)
  SD s1, 24(sp)
  SD s2, 32(sp)
  SD s3, 40(sp)
  SD s4, 48(sp)
  SD s5, 56(sp)
  SD s6, 64(sp)
  SD s7, 72(sp)
  SD s8, 80(sp)
  SD s9, 88(sp)
  SD s10, 96(sp)
  FSD fs0, 104(sp)
  SD s11, 112(sp)
  FSD fs2, 120(sp)
  FSD fs4, 128(sp)
  FSD fs5, 136(sp)
  FSD fs1, 144(sp)
  FSD fs3, 152(sp)
  FSD fs6, 160(sp)
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
  LA s4, height
  LW s4, 0(s4)
  BLT zero, s4, bb118
  # implict jump to bb117
bb117:
  LD ra, 8(sp)
  LD s0, 16(sp)
  LD s1, 24(sp)
  LD s2, 32(sp)
  LD s3, 40(sp)
  LD s4, 48(sp)
  LD s5, 56(sp)
  LD s6, 64(sp)
  LD s7, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  LD s10, 96(sp)
  FLD fs0, 104(sp)
  LD s11, 112(sp)
  FLD fs2, 120(sp)
  FLD fs4, 128(sp)
  FLD fs5, 136(sp)
  FLD fs1, 144(sp)
  FLD fs3, 152(sp)
  FLD fs6, 160(sp)
  ADDI sp, sp, 176
  JALR zero, 0(ra)
bb118:
  ADD s4, zero, zero
  # implict jump to bb119
bb119:
  ADD s5, s4, zero
  LA s6, width
  LW s6, 0(s6)
  BLT zero, s6, bb122
  # implict jump to bb120
bb120:
  ADDI a0, zero, 10
  CALL putch
  ADDIW s1, s5, 1
  LA s2, height
  LW s2, 0(s2)
  BLT s1, s2, bb121
  JAL zero, bb117
bb121:
  ADD s4, s1, zero
  JAL zero, bb119
bb122:
  LA s6, .CONSTANT.7.0
  FLW fs1, 0(s6)
  FLT.S t4, fs1, fs0
  SB t4, 0(sp)
  ADD s7, zero, zero
  # implict jump to bb123
bb123:
  ADD s8, s7, zero
  LB t4, 0(sp)
  BNE t4, zero, bb160
  # implict jump to bb124
bb124:
  LA s9, .CONSTANT.7.0
  FLW fs1, 0(s9)
  LA s9, .CONSTANT.7.0
  FLW fs2, 0(s9)
  FSGNJN.S fs1, fs1, fs2
  FLT.S s9, fs0, fs1
  # implict jump to bb125
bb125:
  BNE s9, zero, bb159
  # implict jump to bb126
bb126:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb127
bb127:
  LA s9, .CONSTANT.7.1
  FLW fs2, 0(s9)
  FLT.S s9, fs2, fs1
  BNE s9, zero, bb158
  # implict jump to bb128
bb128:
  FSGNJ.S fs2, fs1, fs1
  # implict jump to bb129
bb129:
  LA s9, .CONSTANT.7.1
  FLW fs1, 0(s9)
  LA s9, .CONSTANT.7.1
  FLW fs3, 0(s9)
  FSGNJN.S fs1, fs1, fs3
  FLT.S s9, fs2, fs1
  BNE s9, zero, bb157
  # implict jump to bb130
bb130:
  FSGNJ.S fs3, fs2, fs2
  # implict jump to bb131
bb131:
  FSGNJ.S fa0, fs3, fs3
  CALL my_sin_impl
  FSGNJ.D fs2, fa0, fa0
  ADDI s9, zero, 2
  FCVT.S.W fs3, s9
  LA s9, .CONSTANT.7.1
  FLW fs4, 0(s9)
  FDIV.S fs3, fs4, fs3
  FADD.S fs3, fs0, fs3
  LA s9, .CONSTANT.7.0
  FLW fs4, 0(s9)
  FLT.S s9, fs4, fs3
  BNE s9, zero, bb156
  # implict jump to bb132
bb132:
  LA s9, .CONSTANT.7.0
  FLW fs4, 0(s9)
  LA s9, .CONSTANT.7.0
  FLW fs5, 0(s9)
  FSGNJN.S fs4, fs4, fs5
  FLT.S s9, fs3, fs4
  # implict jump to bb133
bb133:
  BNE s9, zero, bb155
  # implict jump to bb134
bb134:
  FSGNJ.S fs4, fs3, fs3
  # implict jump to bb135
bb135:
  LA s9, .CONSTANT.7.1
  FLW fs3, 0(s9)
  FLT.S s9, fs3, fs4
  BNE s9, zero, bb154
  # implict jump to bb136
bb136:
  FSGNJ.S fs3, fs4, fs4
  # implict jump to bb137
bb137:
  FLT.S s9, fs3, fs1
  BNE s9, zero, bb153
  # implict jump to bb138
bb138:
  FSGNJ.S fs1, fs3, fs3
  # implict jump to bb139
bb139:
  FSGNJ.S fa0, fs1, fs1
  CALL my_sin_impl
  FSGNJ.D fs1, fa0, fa0
  LA s9, width
  LW s2, 0(s9)
  ADDI s9, zero, 2
  DIVW s9, s2, s9
  LA s10, height
  LW s1, 0(s10)
  ADDI s10, zero, 2
  DIVW s10, s1, s10
  SUBW s11, s8, s9
  SUBW s6, s5, s10
  FCVT.S.W fs3, s11
  FMUL.S fs4, fs3, fs1
  FCVT.S.W fs5, s6
  FMUL.S fs6, fs5, fs2
  FSUB.S fs4, fs4, fs6
  FCVT.S.W fs6, s9
  FADD.S fs4, fs4, fs6
  FCVT.W.S s0, fs4, rtz
  FMUL.S fs2, fs3, fs2
  FMUL.S fs1, fs5, fs1
  FADD.S fs1, fs2, fs1
  FCVT.S.W fs2, s10
  FADD.S fs1, fs1, fs2
  FCVT.W.S s3, fs1, rtz
  BLT s0, zero, bb152
  # implict jump to bb140
bb140:
  SLT s6, s0, s2
  XORI s6, s6, 1
  # implict jump to bb141
bb141:
  BNE s6, zero, bb151
  # implict jump to bb142
bb142:
  SLT s6, s3, zero
  # implict jump to bb143
bb143:
  BNE s6, zero, bb150
  # implict jump to bb144
bb144:
  SLT s1, s3, s1
  XORI s1, s1, 1
  # implict jump to bb145
bb145:
  BNE s1, zero, bb149
  # implict jump to bb146
bb146:
  MULW s1, s3, s2
  ADDW s0, s1, s0
  SLLIW s0, s0, 2
  LA s1, image
  ADD s0, s1, s0
  LW s0, 0(s0)
  # implict jump to bb147
bb147:
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDIW s0, s8, 1
  LA s1, width
  LW s1, 0(s1)
  BLT s0, s1, bb148
  JAL zero, bb120
bb148:
  ADD s7, s0, zero
  JAL zero, bb123
bb149:
  ADD s0, zero, zero
  JAL zero, bb147
bb150:
  ADDI s1, zero, 1
  JAL zero, bb145
bb151:
  ADDI s6, zero, 1
  JAL zero, bb143
bb152:
  ADDI s6, zero, 1
  JAL zero, bb141
bb153:
  LA s9, .CONSTANT.7.0
  FLW fs4, 0(s9)
  FADD.S fs3, fs3, fs4
  FSGNJ.S fs1, fs3, fs3
  JAL zero, bb139
bb154:
  LA s9, .CONSTANT.7.0
  FLW fs5, 0(s9)
  FSUB.S fs4, fs4, fs5
  FSGNJ.S fs3, fs4, fs4
  JAL zero, bb137
bb155:
  LA s9, .CONSTANT.7.0
  FLW fs5, 0(s9)
  FDIV.S fs5, fs3, fs5
  FCVT.W.S s9, fs5, rtz
  FCVT.S.W fs5, s9
  LA s9, .CONSTANT.7.0
  FLW fs6, 0(s9)
  FMUL.S fs5, fs5, fs6
  FSUB.S fs3, fs3, fs5
  FSGNJ.S fs4, fs3, fs3
  JAL zero, bb135
bb156:
  ADDI s9, zero, 1
  JAL zero, bb133
bb157:
  LA s9, .CONSTANT.7.0
  FLW fs4, 0(s9)
  FADD.S fs2, fs2, fs4
  FSGNJ.S fs3, fs2, fs2
  JAL zero, bb131
bb158:
  LA s9, .CONSTANT.7.0
  FLW fs3, 0(s9)
  FSUB.S fs1, fs1, fs3
  FSGNJ.S fs2, fs1, fs1
  JAL zero, bb129
bb159:
  LA s9, .CONSTANT.7.0
  FLW fs2, 0(s9)
  FDIV.S fs2, fs0, fs2
  FCVT.W.S s9, fs2, rtz
  FCVT.S.W fs2, s9
  LA s9, .CONSTANT.7.0
  FLW fs3, 0(s9)
  FMUL.S fs2, fs2, fs3
  FSUB.S fs2, fs0, fs2
  FSGNJ.S fs1, fs2, fs2
  JAL zero, bb127
bb160:
  ADDI s9, zero, 1
  JAL zero, bb125
my_fabs:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs0, 16(sp)
  FSD fs1, 24(sp)
  FSGNJ.D fs0, fa0, fa0
  FCVT.S.L fs1, zero
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb163
  # implict jump to bb162
bb162:
  FSGNJN.S fs1, fs0, fs0
  FSGNJ.S fa0, fs1, fs1
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb163:
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
