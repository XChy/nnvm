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
  ADDI sp, sp, -128
  SD ra, 0(sp)
  SD s6, 8(sp)
  FSD fs6, 16(sp)
  FSD fs5, 24(sp)
  FSD fs4, 32(sp)
  FSD fs3, 40(sp)
  SD s0, 48(sp)
  SD s5, 56(sp)
  SD s7, 64(sp)
  FSD fs2, 72(sp)
  SD s1, 80(sp)
  FSD fs0, 88(sp)
  SD s2, 96(sp)
  FSD fs1, 104(sp)
  SD s3, 112(sp)
  SD s4, 120(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.S fa0, fs0, fs0
  CALL my_sin
  FSGNJ.D fs1, fa0, fa0
  FSGNJ.S fa0, fs0, fs0
  CALL my_cos
  FSGNJ.D fs0, fa0, fa0
  LA s2, width
  LW s3, 0(s2)
  ADDI s2, zero, 2
  DIVW s4, s3, s2
  LA s2, height
  LW s3, 0(s2)
  ADDI s2, zero, 2
  DIVW s5, s3, s2
  SUBW s2, s0, s4
  SUBW s0, s1, s5
  FCVT.S.W fs2, s2
  FMUL.S fs3, fs2, fs0
  FCVT.S.W fs4, s0
  FMUL.S fs5, fs4, fs1
  FSUB.S fs6, fs3, fs5
  FCVT.S.W fs3, s4
  FADD.S fs5, fs6, fs3
  FCVT.W.S s0, fs5, rtz
  FMUL.S fs3, fs2, fs1
  FMUL.S fs1, fs4, fs0
  FADD.S fs0, fs3, fs1
  FCVT.S.W fs1, s5
  FADD.S fs2, fs0, fs1
  FCVT.W.S s1, fs2, rtz
  SLT s2, s0, zero
  BNE s2, zero, bb1
  JAL zero, bb2
bb1:
  ADDI s2, zero, 1
  JAL zero, bb3
bb2:
  LA s3, width
  LW s4, 0(s3)
  SLT s3, s0, s4
  XORI s4, s3, 1
  XOR s3, s4, zero
  SLTU s4, zero, s3
  ADD s2, s4, zero
  JAL zero, bb3
bb3:
  ADD s3, s2, zero
  BNE s3, zero, bb4
  JAL zero, bb5
bb4:
  ADDI s3, zero, 1
  JAL zero, bb6
bb5:
  SLT s4, s1, zero
  XOR s5, s4, zero
  SLTU s4, zero, s5
  ADD s3, s4, zero
  JAL zero, bb6
bb6:
  ADD s4, s3, zero
  BNE s4, zero, bb7
  JAL zero, bb8
bb7:
  ADDI s4, zero, 1
  JAL zero, bb9
bb8:
  LA s5, height
  LW s6, 0(s5)
  SLT s5, s1, s6
  XORI s6, s5, 1
  XOR s5, s6, zero
  SLTU s6, zero, s5
  ADD s4, s6, zero
  JAL zero, bb9
bb9:
  ADD s5, s4, zero
  BNE s5, zero, bb10
  JAL zero, bb11
bb10:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s6, 8(sp)
  FLD fs6, 16(sp)
  FLD fs5, 24(sp)
  FLD fs4, 32(sp)
  FLD fs3, 40(sp)
  LD s0, 48(sp)
  LD s5, 56(sp)
  LD s7, 64(sp)
  FLD fs2, 72(sp)
  LD s1, 80(sp)
  FLD fs0, 88(sp)
  LD s2, 96(sp)
  FLD fs1, 104(sp)
  LD s3, 112(sp)
  LD s4, 120(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb11:
  LA s5, width
  LW s6, 0(s5)
  MULW s5, s1, s6
  ADDW s6, s5, s0
  ADDI s5, zero, 4
  MULW s7, s6, s5
  LA s5, image
  ADD s6, s5, s7
  LW s5, 0(s6)
  ADD a0, s5, zero
  LD ra, 0(sp)
  LD s6, 8(sp)
  FLD fs6, 16(sp)
  FLD fs5, 24(sp)
  FLD fs4, 32(sp)
  FLD fs3, 40(sp)
  LD s0, 48(sp)
  LD s5, 56(sp)
  LD s7, 64(sp)
  FLD fs2, 72(sp)
  LD s1, 80(sp)
  FLD fs0, 88(sp)
  LD s2, 96(sp)
  FLD fs1, 104(sp)
  LD s3, 112(sp)
  LD s4, 120(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
my_sin_impl:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  FSD fs2, 8(sp)
  SD s0, 16(sp)
  FSD fs1, 24(sp)
  FSD fs0, 32(sp)
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.S fa0, fs0, fs0
  CALL my_fabs
  FSGNJ.D fs1, fa0, fa0
  LA s0, EPSILON
  FLW fs2, 0(s0)
  FLE.S s0, fs1, fs2
  BNE s0, zero, bb13
  JAL zero, bb14
bb13:
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  FLD fs2, 8(sp)
  LD s0, 16(sp)
  FLD fs1, 24(sp)
  FLD fs0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb14:
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
  LD ra, 0(sp)
  FLD fs2, 8(sp)
  LD s0, 16(sp)
  FLD fs1, 24(sp)
  FLD fs0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
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
  SD s2, 64(sp)
  FSD fs5, 72(sp)
  FSD fs0, 80(sp)
  FSGNJ.D fs0, fa0, fa0
  LA s0, TWO_PI
  FLW fs1, 0(s0)
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb17
  JAL zero, bb18
bb17:
  ADDI s0, zero, 1
  JAL zero, bb19
bb18:
  LA s1, TWO_PI
  FLW fs1, 0(s1)
  FSGNJN.S fs2, fs1, fs1
  FLT.S s1, fs0, fs2
  XOR s2, s1, zero
  SLTU s1, zero, s2
  ADD s0, s1, zero
  JAL zero, bb19
bb19:
  ADD s1, s0, zero
  BNE s1, zero, bb20
  JAL zero, bb26
bb20:
  LA s1, TWO_PI
  FLW fs1, 0(s1)
  FDIV.S fs2, fs0, fs1
  FCVT.W.S s1, fs2, rtz
  LA s2, TWO_PI
  FLW fs1, 0(s2)
  FCVT.S.W fs2, s1
  FMUL.S fs3, fs2, fs1
  FSUB.S fs1, fs0, fs3
  FSGNJ.S fs2, fs1, fs1
  JAL zero, bb21
bb21:
  FSGNJ.S fs1, fs2, fs2
  LA s1, PI
  FLW fs3, 0(s1)
  FLT.S s1, fs3, fs1
  BNE s1, zero, bb22
  JAL zero, bb27
bb22:
  LA s1, TWO_PI
  FLW fs3, 0(s1)
  FSUB.S fs4, fs1, fs3
  FSGNJ.S fs3, fs4, fs4
  JAL zero, bb23
bb23:
  FSGNJ.S fs4, fs3, fs3
  LA s1, PI
  FLW fs5, 0(s1)
  FSGNJN.S fs6, fs5, fs5
  FLT.S s1, fs4, fs6
  BNE s1, zero, bb24
  JAL zero, bb28
bb24:
  LA s1, TWO_PI
  FLW fs5, 0(s1)
  FADD.S fs6, fs4, fs5
  FSGNJ.S fs5, fs6, fs6
  JAL zero, bb25
bb25:
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
  LD s2, 64(sp)
  FLD fs5, 72(sp)
  FLD fs0, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb26:
  FSGNJ.S fs2, fs0, fs0
  JAL zero, bb21
bb27:
  FSGNJ.S fs3, fs1, fs1
  JAL zero, bb23
bb28:
  FSGNJ.S fs5, fs4, fs4
  JAL zero, bb25
my_cos:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  FSD fs3, 8(sp)
  FSD fs2, 16(sp)
  FSD fs1, 24(sp)
  SD s0, 32(sp)
  FSD fs0, 40(sp)
  FSGNJ.D fs0, fa0, fa0
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
  LD ra, 0(sp)
  FLD fs3, 8(sp)
  FLD fs2, 16(sp)
  FLD fs1, 24(sp)
  LD s0, 32(sp)
  FLD fs0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s1, 8(sp)
  SD s0, 16(sp)
  FSD fs0, 24(sp)
  CALL getfloat
  FSGNJ.D fs0, fa0, fa0
  CALL getch
  ADD s0, a0, zero
  CALL read_image
  ADD s0, a0, zero
  SLT s1, s0, zero
  BNE s1, zero, bb31
  JAL zero, bb32
bb31:
  ADDI a0, zero, -1
  LD ra, 0(sp)
  LD s1, 8(sp)
  LD s0, 16(sp)
  FLD fs0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb32:
  FSGNJ.S fa0, fs0, fs0
  CALL write_pgm
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s1, 8(sp)
  LD s0, 16(sp)
  FLD fs0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
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
  BNE s0, zero, bb34
  JAL zero, bb35
bb34:
  ADDI s0, zero, 1
  JAL zero, bb36
bb35:
  CALL getch
  ADD s1, a0, zero
  XORI s2, s1, 50
  SLTU s1, zero, s2
  XOR s2, s1, zero
  SLTU s1, zero, s2
  ADD s0, s1, zero
  JAL zero, bb36
bb36:
  ADD s1, s0, zero
  BNE s1, zero, bb37
  JAL zero, bb38
bb37:
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
bb38:
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
  LA s1, MAX_WIDTH
  LW s3, 0(s1)
  SLT s1, s3, s2
  BNE s1, zero, bb39
  JAL zero, bb40
bb39:
  ADDI s1, zero, 1
  JAL zero, bb41
bb40:
  LA s2, height
  LW s3, 0(s2)
  LA s2, MAX_HEIGHT
  LW s4, 0(s2)
  SLT s2, s4, s3
  XOR s3, s2, zero
  SLTU s2, zero, s3
  ADD s1, s2, zero
  JAL zero, bb41
bb41:
  ADD s2, s1, zero
  BNE s2, zero, bb42
  JAL zero, bb43
bb42:
  ADDI s2, zero, 1
  JAL zero, bb44
bb43:
  CALL getint
  ADD s3, a0, zero
  XORI s4, s3, 255
  SLTU s3, zero, s4
  XOR s4, s3, zero
  SLTU s3, zero, s4
  ADD s2, s3, zero
  JAL zero, bb44
bb44:
  ADD s3, s2, zero
  BNE s3, zero, bb45
  JAL zero, bb46
bb45:
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
bb46:
  ADD s3, zero, zero
  JAL zero, bb47
bb47:
  ADD s4, s3, zero
  LA s5, height
  LW s6, 0(s5)
  SLT s5, s4, s6
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb48
  JAL zero, bb49
bb48:
  ADD s5, zero, zero
  JAL zero, bb50
bb49:
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
bb50:
  ADD s6, s5, zero
  LA s7, width
  LW s8, 0(s7)
  SLT s7, s6, s8
  XOR s8, s7, zero
  SLTU s7, zero, s8
  BNE s7, zero, bb51
  JAL zero, bb52
bb51:
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
  JAL zero, bb50
bb52:
  ADDIW s5, s4, 1
  ADD s3, s5, zero
  JAL zero, bb47
write_pgm:
  ADDI sp, sp, -64
  SD s4, 0(sp)
  SD ra, 8(sp)
  SD s3, 16(sp)
  SD s1, 24(sp)
  SD s5, 32(sp)
  SD s0, 40(sp)
  SD s2, 48(sp)
  FSD fs0, 56(sp)
  FSGNJ.D fs0, fa0, fa0
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
  ADD s0, zero, zero
  JAL zero, bb54
bb54:
  ADD s1, s0, zero
  LA s2, height
  LW s3, 0(s2)
  SLT s2, s1, s3
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb55
  JAL zero, bb56
bb55:
  ADD s2, zero, zero
  JAL zero, bb57
bb56:
  LD s4, 0(sp)
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s1, 24(sp)
  LD s5, 32(sp)
  LD s0, 40(sp)
  LD s2, 48(sp)
  FLD fs0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb57:
  ADD s3, s2, zero
  LA s4, width
  LW s5, 0(s4)
  SLT s4, s3, s5
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb58
  JAL zero, bb59
bb58:
  ADD a0, s3, zero
  ADD a1, s1, zero
  FSGNJ.S fa0, fs0, fs0
  CALL rotate
  ADD s4, a0, zero
  ADD a0, s4, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDIW s4, s3, 1
  ADD s2, s4, zero
  JAL zero, bb57
bb59:
  ADDI a0, zero, 10
  CALL putch
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb54
my_fabs:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs1, 16(sp)
  FSD fs0, 24(sp)
  FSGNJ.D fs0, fa0, fa0
  FCVT.S.L fs1, zero
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb61
  JAL zero, bb62
bb61:
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs1, 16(sp)
  FLD fs0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb62:
  FSGNJN.S fs1, fs0, fs0
  FSGNJ.S fa0, fs1, fs1
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs1, 16(sp)
  FLD fs0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
