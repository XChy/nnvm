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
.word 0x40400000
.section .text
rotate:
  ADDI sp, sp, -176
  SD ra, 112(sp)
  FSD fs3, 120(sp)
  FSD fs1, 128(sp)
  SD s2, 136(sp)
  FSD fs0, 144(sp)
  SD s1, 152(sp)
  FSD fs2, 160(sp)
  SD s0, 168(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  FSGNJ.D fs0, fa0, fa0
  SW s0, 104(sp)
  SW s1, 96(sp)
  FSW fs0, 88(sp)
  FSGNJ.S fa0, fs0, fs0
  CALL my_sin
  FSGNJ.D fs0, fa0, fa0
  FSW fs0, 80(sp)
  FLW fs0, 88(sp)
  FSGNJ.S fa0, fs0, fs0
  CALL my_cos
  FSGNJ.D fs0, fa0, fa0
  FSW fs0, 72(sp)
  LA s0, width
  LW s1, 0(s0)
  ADDI s0, zero, 2
  DIVW s2, s1, s0
  SW s2, 64(sp)
  LA s0, height
  LW s1, 0(s0)
  ADDI s0, zero, 2
  DIVW s2, s1, s0
  SW s2, 56(sp)
  LW s0, 104(sp)
  LW s1, 64(sp)
  SUBW s2, s0, s1
  SW s2, 48(sp)
  LW s0, 96(sp)
  LW s1, 56(sp)
  SUBW s2, s0, s1
  SW s2, 40(sp)
  LW s0, 48(sp)
  FLW fs0, 72(sp)
  FCVT.S.W fs1, s0
  FMUL.S fs2, fs1, fs0
  FLW fs0, 80(sp)
  FCVT.S.W fs1, s2
  FMUL.S fs3, fs1, fs0
  FSUB.S fs0, fs2, fs3
  LW s0, 64(sp)
  FCVT.S.W fs1, s0
  FADD.S fs2, fs0, fs1
  FCVT.W.S s0, fs2, rtz
  SW s0, 32(sp)
  LW s0, 48(sp)
  FLW fs0, 80(sp)
  FCVT.S.W fs1, s0
  FMUL.S fs2, fs1, fs0
  LW s0, 40(sp)
  FLW fs0, 72(sp)
  FCVT.S.W fs1, s0
  FMUL.S fs3, fs1, fs0
  FADD.S fs0, fs2, fs3
  LW s0, 56(sp)
  FCVT.S.W fs1, s0
  FADD.S fs2, fs0, fs1
  FCVT.W.S s0, fs2, rtz
  SW s0, 24(sp)
  LW s0, 32(sp)
  SLT s1, s0, zero
  BNE s1, zero, bb1
  JAL zero, bb2
bb1:
  ADDI s0, zero, 1
  SB s0, 16(sp)
  JAL zero, bb3
bb2:
  LW s0, 32(sp)
  LA s1, width
  LW s2, 0(s1)
  SLT s1, s0, s2
  XORI s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 16(sp)
  JAL zero, bb3
bb3:
  LB s0, 16(sp)
  BNE s0, zero, bb4
  JAL zero, bb5
bb4:
  ADDI s0, zero, 1
  SB s0, 8(sp)
  JAL zero, bb6
bb5:
  LW s0, 24(sp)
  SLT s1, s0, zero
  XOR s0, s1, zero
  SLTU s1, zero, s0
  SB s1, 8(sp)
  JAL zero, bb6
bb6:
  LB s0, 8(sp)
  BNE s0, zero, bb7
  JAL zero, bb8
bb7:
  ADDI s0, zero, 1
  SB s0, 0(sp)
  JAL zero, bb9
bb8:
  LW s0, 24(sp)
  LA s1, height
  LW s2, 0(s1)
  SLT s1, s0, s2
  XORI s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 0(sp)
  JAL zero, bb9
bb9:
  LB s0, 0(sp)
  BNE s0, zero, bb10
  JAL zero, bb11
bb10:
  ADD a0, zero, zero
  LD ra, 112(sp)
  FLD fs3, 120(sp)
  FLD fs1, 128(sp)
  LD s2, 136(sp)
  FLD fs0, 144(sp)
  LD s1, 152(sp)
  FLD fs2, 160(sp)
  LD s0, 168(sp)
  ADDI sp, sp, 176
  JALR zero, 0(ra)
bb11:
  LW s0, 24(sp)
  LA s1, width
  LW s2, 0(s1)
  MULW s1, s0, s2
  LW s0, 32(sp)
  ADDW s2, s1, s0
  ADDI s0, zero, 4
  MULW s1, s2, s0
  LA s0, image
  ADD s2, s0, s1
  LW s0, 0(s2)
  ADD a0, s0, zero
  LD ra, 112(sp)
  FLD fs3, 120(sp)
  FLD fs1, 128(sp)
  LD s2, 136(sp)
  FLD fs0, 144(sp)
  LD s1, 152(sp)
  FLD fs2, 160(sp)
  LD s0, 168(sp)
  ADDI sp, sp, 176
  JALR zero, 0(ra)
my_sin_impl:
  ADDI sp, sp, -48
  SD ra, 8(sp)
  FSD fs2, 16(sp)
  FSD fs1, 24(sp)
  SD s0, 32(sp)
  FSD fs0, 40(sp)
  FSGNJ.D fs0, fa0, fa0
  FSW fs0, 0(sp)
  FSGNJ.S fa0, fs0, fs0
  CALL my_fabs
  FSGNJ.D fs0, fa0, fa0
  LA s0, EPSILON
  FLW fs1, 0(s0)
  FLE.S s0, fs0, fs1
  BNE s0, zero, bb13
  JAL zero, bb14
bb13:
  FLW fs0, 0(sp)
  FSGNJ.S fa0, fs0, fs0
  LD ra, 8(sp)
  FLD fs2, 16(sp)
  FLD fs1, 24(sp)
  LD s0, 32(sp)
  FLD fs0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb14:
  FLW fs0, 0(sp)
  LA s0, .CONSTANT.7.0
  FLW fs1, 0(s0)
  FDIV.S fs2, fs0, fs1
  FSGNJ.S fa0, fs2, fs2
  CALL my_sin_impl
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.S fa0, fs0, fs0
  CALL p
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.S fa0, fs0, fs0
  LD ra, 8(sp)
  FLD fs2, 16(sp)
  FLD fs1, 24(sp)
  LD s0, 32(sp)
  FLD fs0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
p:
  ADDI sp, sp, -64
  SD ra, 8(sp)
  FSD fs3, 16(sp)
  FSD fs1, 24(sp)
  FSD fs2, 32(sp)
  SD s0, 40(sp)
  FSD fs0, 48(sp)
  FSGNJ.D fs0, fa0, fa0
  FSW fs0, 0(sp)
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
  LD ra, 8(sp)
  FLD fs3, 16(sp)
  FLD fs1, 24(sp)
  FLD fs2, 32(sp)
  LD s0, 40(sp)
  FLD fs0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
my_sin:
  ADDI sp, sp, -80
  SD ra, 24(sp)
  FSD fs3, 32(sp)
  SD s1, 40(sp)
  FSD fs2, 48(sp)
  FSD fs1, 56(sp)
  SD s0, 64(sp)
  FSD fs0, 72(sp)
  FSGNJ.D fs0, fa0, fa0
  FSW fs0, 16(sp)
  LA s0, TWO_PI
  FLW fs1, 0(s0)
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb17
  JAL zero, bb18
bb17:
  ADDI s0, zero, 1
  SB s0, 8(sp)
  JAL zero, bb19
bb18:
  FLW fs0, 16(sp)
  LA s0, TWO_PI
  FLW fs1, 0(s0)
  FSGNJN.S fs2, fs1, fs1
  FLT.S s0, fs0, fs2
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 8(sp)
  JAL zero, bb19
bb19:
  LB s0, 8(sp)
  BNE s0, zero, bb20
  JAL zero, bb21
bb20:
  FLW fs0, 16(sp)
  LA s0, TWO_PI
  FLW fs1, 0(s0)
  FDIV.S fs2, fs0, fs1
  FCVT.W.S s0, fs2, rtz
  SW s0, 0(sp)
  FLW fs0, 16(sp)
  LA s1, TWO_PI
  FLW fs1, 0(s1)
  FCVT.S.W fs2, s0
  FMUL.S fs3, fs2, fs1
  FSUB.S fs1, fs0, fs3
  FSW fs1, 16(sp)
  JAL zero, bb21
bb21:
  FLW fs0, 16(sp)
  LA s0, PI
  FLW fs1, 0(s0)
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb22
  JAL zero, bb23
bb22:
  FLW fs0, 16(sp)
  LA s0, TWO_PI
  FLW fs1, 0(s0)
  FSUB.S fs2, fs0, fs1
  FSW fs2, 16(sp)
  JAL zero, bb23
bb23:
  FLW fs0, 16(sp)
  LA s0, PI
  FLW fs1, 0(s0)
  FSGNJN.S fs2, fs1, fs1
  FLT.S s0, fs0, fs2
  BNE s0, zero, bb24
  JAL zero, bb25
bb24:
  FLW fs0, 16(sp)
  LA s0, TWO_PI
  FLW fs1, 0(s0)
  FADD.S fs2, fs0, fs1
  FSW fs2, 16(sp)
  JAL zero, bb25
bb25:
  FLW fs0, 16(sp)
  FSGNJ.S fa0, fs0, fs0
  CALL my_sin_impl
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.S fa0, fs0, fs0
  LD ra, 24(sp)
  FLD fs3, 32(sp)
  LD s1, 40(sp)
  FLD fs2, 48(sp)
  FLD fs1, 56(sp)
  LD s0, 64(sp)
  FLD fs0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
my_cos:
  ADDI sp, sp, -64
  SD ra, 8(sp)
  FSD fs3, 16(sp)
  FSD fs2, 24(sp)
  FSD fs1, 32(sp)
  SD s0, 40(sp)
  FSD fs0, 48(sp)
  FSGNJ.D fs0, fa0, fa0
  FSW fs0, 0(sp)
  LA s0, PI
  FLW fs1, 0(s0)
  ADDI s0, zero, 2
  FCVT.S.W fs2, s0
  FDIV.S fs3, fs1, fs2
  FADD.S fs1, fs0, fs3
  FSGNJ.S fa0, fs1, fs1
  CALL my_sin
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.S fa0, fs0, fs0
  LD ra, 8(sp)
  FLD fs3, 16(sp)
  FLD fs2, 24(sp)
  FLD fs1, 32(sp)
  LD s0, 40(sp)
  FLD fs0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -48
  SD ra, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  FSD fs0, 32(sp)
  CALL getfloat
  FSGNJ.D fs0, fa0, fa0
  FSW fs0, 0(sp)
  CALL getch
  ADD s0, a0, zero
  CALL read_image
  ADD s0, a0, zero
  SLT s1, s0, zero
  BNE s1, zero, bb28
  JAL zero, bb29
bb28:
  ADDI s0, zero, 1
  SUB s1, zero, s0
  ADD a0, s1, zero
  LD ra, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  FLD fs0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb29:
  FLW fs0, 0(sp)
  FSGNJ.S fa0, fs0, fs0
  CALL write_pgm
  ADD a0, zero, zero
  LD ra, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  FLD fs0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
read_image:
  ADDI sp, sp, -80
  SD s2, 40(sp)
  SD ra, 48(sp)
  SD s1, 56(sp)
  SD s0, 64(sp)
  CALL getch
  ADD s0, a0, zero
  XORI s1, s0, 80
  SLTU s0, zero, s1
  BNE s0, zero, bb31
  JAL zero, bb32
bb31:
  ADDI s0, zero, 1
  SB s0, 32(sp)
  JAL zero, bb33
bb32:
  CALL getch
  ADD s0, a0, zero
  XORI s1, s0, 50
  SLTU s0, zero, s1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 32(sp)
  JAL zero, bb33
bb33:
  LB s0, 32(sp)
  BNE s0, zero, bb34
  JAL zero, bb35
bb34:
  ADDI s0, zero, 1
  SUB s1, zero, s0
  ADD a0, s1, zero
  LD s2, 40(sp)
  LD ra, 48(sp)
  LD s1, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb35:
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
  LA s0, MAX_WIDTH
  LW s2, 0(s0)
  SLT s0, s2, s1
  BNE s0, zero, bb36
  JAL zero, bb37
bb36:
  ADDI s0, zero, 1
  SB s0, 24(sp)
  JAL zero, bb38
bb37:
  LA s0, height
  LW s1, 0(s0)
  LA s0, MAX_HEIGHT
  LW s2, 0(s0)
  SLT s0, s2, s1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 24(sp)
  JAL zero, bb38
bb38:
  LB s0, 24(sp)
  BNE s0, zero, bb39
  JAL zero, bb40
bb39:
  ADDI s0, zero, 1
  SB s0, 16(sp)
  JAL zero, bb41
bb40:
  CALL getint
  ADD s0, a0, zero
  XORI s1, s0, 255
  SLTU s0, zero, s1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 16(sp)
  JAL zero, bb41
bb41:
  LB s0, 16(sp)
  BNE s0, zero, bb42
  JAL zero, bb43
bb42:
  ADDI s0, zero, 1
  SUB s1, zero, s0
  ADD a0, s1, zero
  LD s2, 40(sp)
  LD ra, 48(sp)
  LD s1, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb43:
  SW zero, 8(sp)
  JAL zero, bb44
bb44:
  LW s0, 8(sp)
  LA s1, height
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb45
  JAL zero, bb46
bb45:
  SW zero, 0(sp)
  JAL zero, bb47
bb46:
  ADD a0, zero, zero
  LD s2, 40(sp)
  LD ra, 48(sp)
  LD s1, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb47:
  LW s0, 0(sp)
  LA s1, width
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb48
  JAL zero, bb49
bb48:
  LW s0, 8(sp)
  LA s1, width
  LW s2, 0(s1)
  MULW s1, s0, s2
  LW s0, 0(sp)
  ADDW s2, s1, s0
  ADDI s0, zero, 4
  MULW s1, s2, s0
  LA s0, image
  ADD s2, s0, s1
  CALL getint
  ADD s0, a0, zero
  SW s0, 0(s2)
  LW s0, 0(sp)
  ADDIW s1, s0, 1
  SW s1, 0(sp)
  JAL zero, bb47
bb49:
  LW s0, 8(sp)
  ADDIW s1, s0, 1
  SW s1, 8(sp)
  JAL zero, bb44
write_pgm:
  ADDI sp, sp, -64
  SD ra, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  SD s2, 48(sp)
  FSD fs0, 56(sp)
  FSGNJ.D fs0, fa0, fa0
  FSW fs0, 16(sp)
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
  SW zero, 8(sp)
  JAL zero, bb51
bb51:
  LW s0, 8(sp)
  LA s1, height
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb52
  JAL zero, bb53
bb52:
  SW zero, 0(sp)
  JAL zero, bb54
bb53:
  LD ra, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  LD s2, 48(sp)
  FLD fs0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb54:
  LW s0, 0(sp)
  LA s1, width
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb55
  JAL zero, bb56
bb55:
  LW s0, 0(sp)
  LW s1, 8(sp)
  FLW fs0, 16(sp)
  ADD a0, s0, zero
  ADD a1, s1, zero
  FSGNJ.S fa0, fs0, fs0
  CALL rotate
  ADD s0, a0, zero
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LW s0, 0(sp)
  ADDIW s1, s0, 1
  SW s1, 0(sp)
  JAL zero, bb54
bb56:
  ADDI a0, zero, 10
  CALL putch
  LW s0, 8(sp)
  ADDIW s1, s0, 1
  SW s1, 8(sp)
  JAL zero, bb51
my_fabs:
  ADDI sp, sp, -48
  SD ra, 8(sp)
  SD s0, 16(sp)
  FSD fs1, 24(sp)
  FSD fs0, 32(sp)
  FSGNJ.D fs0, fa0, fa0
  FSW fs0, 0(sp)
  FCVT.S.L fs1, zero
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb58
  JAL zero, bb59
bb58:
  FLW fs0, 0(sp)
  FSGNJ.S fa0, fs0, fs0
  LD ra, 8(sp)
  LD s0, 16(sp)
  FLD fs1, 24(sp)
  FLD fs0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb59:
  FLW fs0, 0(sp)
  FSGNJN.S fs1, fs0, fs0
  FSGNJ.S fa0, fs1, fs1
  LD ra, 8(sp)
  LD s0, 16(sp)
  FLD fs1, 24(sp)
  FLD fs0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
