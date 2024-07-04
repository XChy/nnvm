.global idct
.global my_sin_impl
.global p
.global dct
.global my_sin
.global write_mat
.global my_cos
.global main
.global my_fabs
.section .bss



test_idct:
.space 256
test_dct:
.space 256
test_block:
.space 256






.section .data
TWO_PI:
.word 0x40c90fdb
EPSILON:
.word 0x358637bd
PI:
.word 0x40490fdb



MAX_DIM_Y:
.word 0x00000008
MAX_DIM_X:
.word 0x00000008
.CONSTANT.7.0:
.word 0x40800000
.CONSTANT.7.1:
.word 0x40000000
.CONSTANT.7.2:
.word 0x3f800000
.CONSTANT.7.3:
.word 0x40400000
.section .text
idct:
  ADDI sp, sp, -160
  FSD fs5, 48(sp)
  FSD fs4, 56(sp)
  FSD fs3, 64(sp)
  SD s6, 72(sp)
  FSD fs2, 80(sp)
  FSD fs1, 88(sp)
  SD s0, 96(sp)
  SD s5, 104(sp)
  SD s1, 112(sp)
  SD s2, 120(sp)
  SD s3, 128(sp)
  SD s4, 136(sp)
  SD ra, 144(sp)
  FSD fs0, 152(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  SW s2, 40(sp)
  SW s3, 32(sp)
  ADDI s2, zero, 0
  SW s2, 24(sp)
  JAL zero, bb1
bb1:
  LW s2, 24(sp)
  LW s3, 40(sp)
  SLT s4, s2, s3
  XOR s2, s4, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s2, zero, 0
  SW s2, 16(sp)
  JAL zero, bb4
bb3:
  FLD fs5, 48(sp)
  FLD fs4, 56(sp)
  FLD fs3, 64(sp)
  LD s6, 72(sp)
  FLD fs2, 80(sp)
  FLD fs1, 88(sp)
  LD s0, 96(sp)
  LD s5, 104(sp)
  LD s1, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  LD ra, 144(sp)
  FLD fs0, 152(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb4:
  LW s2, 16(sp)
  LW s3, 32(sp)
  SLT s4, s2, s3
  XOR s2, s4, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb5
  JAL zero, bb6
bb5:
  LW s2, 24(sp)
  ADDI s3, zero, 32
  MULW s4, s2, s3
  ADD s2, s0, s4
  LW s3, 16(sp)
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s2, s5
  ADDI s2, zero, 1
  FCVT.S.W fs0, s2
  LA s2, .CONSTANT.7.0
  FLW fs1, 0(s2)
  FDIV.S fs2, fs0, fs1
  ADDI s2, zero, 32
  MULW s4, s2, zero
  ADD s2, s1, s4
  ADDI s4, zero, 4
  MULW s5, zero, s4
  ADD s4, s2, s5
  FLW fs0, 0(s4)
  FMUL.S fs1, fs2, fs0
  FSW fs1, 0(s3)
  ADDI s2, zero, 1
  SW s2, 8(sp)
  JAL zero, bb7
bb6:
  LW s2, 24(sp)
  ADDIW s3, s2, 1
  SW s3, 24(sp)
  JAL zero, bb1
bb7:
  LW s2, 8(sp)
  LW s3, 40(sp)
  SLT s4, s2, s3
  XOR s2, s4, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb8
  JAL zero, bb9
bb8:
  LW s2, 24(sp)
  ADDI s3, zero, 32
  MULW s4, s2, s3
  ADD s2, s0, s4
  LW s3, 16(sp)
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s2, s5
  LW s2, 24(sp)
  ADDI s4, zero, 32
  MULW s5, s2, s4
  ADD s2, s0, s5
  LW s4, 16(sp)
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s4, s2, s6
  FLW fs0, 0(s4)
  ADDI s2, zero, 1
  FCVT.S.W fs1, s2
  LA s2, .CONSTANT.7.1
  FLW fs2, 0(s2)
  FDIV.S fs3, fs1, fs2
  LW s2, 8(sp)
  ADDI s4, zero, 32
  MULW s5, s2, s4
  ADD s2, s1, s5
  ADDI s4, zero, 4
  MULW s5, zero, s4
  ADD s4, s2, s5
  FLW fs1, 0(s4)
  FMUL.S fs2, fs3, fs1
  FADD.S fs1, fs0, fs2
  FSW fs1, 0(s3)
  LW s2, 8(sp)
  ADDIW s3, s2, 1
  SW s3, 8(sp)
  JAL zero, bb7
bb9:
  ADDI s2, zero, 1
  SW s2, 0(sp)
  JAL zero, bb10
bb10:
  LW s2, 0(sp)
  LW s3, 32(sp)
  SLT s4, s2, s3
  XOR s2, s4, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb11
  JAL zero, bb12
bb11:
  LW s2, 24(sp)
  ADDI s3, zero, 32
  MULW s4, s2, s3
  ADD s2, s0, s4
  LW s3, 16(sp)
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s2, s5
  LW s2, 24(sp)
  ADDI s4, zero, 32
  MULW s5, s2, s4
  ADD s2, s0, s5
  LW s4, 16(sp)
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s4, s2, s6
  FLW fs0, 0(s4)
  ADDI s2, zero, 1
  FCVT.S.W fs1, s2
  LA s2, .CONSTANT.7.1
  FLW fs2, 0(s2)
  FDIV.S fs3, fs1, fs2
  ADDI s2, zero, 32
  MULW s4, zero, s2
  ADD s2, s1, s4
  LW s4, 0(sp)
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s4, s2, s6
  FLW fs1, 0(s4)
  FMUL.S fs2, fs3, fs1
  FADD.S fs1, fs0, fs2
  FSW fs1, 0(s3)
  LW s2, 0(sp)
  ADDIW s3, s2, 1
  SW s3, 0(sp)
  JAL zero, bb10
bb12:
  ADDI s2, zero, 1
  SW s2, 8(sp)
  JAL zero, bb13
bb13:
  LW s2, 8(sp)
  LW s3, 40(sp)
  SLT s4, s2, s3
  XOR s2, s4, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb14
  JAL zero, bb15
bb14:
  ADDI s2, zero, 1
  SW s2, 0(sp)
  JAL zero, bb16
bb15:
  LW s2, 24(sp)
  ADDI s3, zero, 32
  MULW s4, s2, s3
  ADD s2, s0, s4
  LW s3, 16(sp)
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s2, s5
  LW s2, 24(sp)
  ADDI s4, zero, 32
  MULW s5, s2, s4
  ADD s2, s0, s5
  LW s4, 16(sp)
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s4, s2, s6
  FLW fs0, 0(s4)
  LA s2, .CONSTANT.7.1
  FLW fs1, 0(s2)
  FMUL.S fs2, fs0, fs1
  LW s2, 40(sp)
  FCVT.S.W fs0, s2
  FDIV.S fs1, fs2, fs0
  LA s2, .CONSTANT.7.1
  FLW fs0, 0(s2)
  FMUL.S fs2, fs1, fs0
  LW s2, 32(sp)
  FCVT.S.W fs0, s2
  FDIV.S fs1, fs2, fs0
  FSW fs1, 0(s3)
  LW s2, 16(sp)
  ADDIW s3, s2, 1
  SW s3, 16(sp)
  JAL zero, bb4
bb16:
  LW s2, 0(sp)
  LW s3, 32(sp)
  SLT s4, s2, s3
  XOR s2, s4, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb17
  JAL zero, bb18
bb17:
  LW s2, 24(sp)
  ADDI s3, zero, 32
  MULW s4, s2, s3
  ADD s2, s0, s4
  LW s3, 16(sp)
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s2, s5
  LW s2, 24(sp)
  ADDI s4, zero, 32
  MULW s5, s2, s4
  ADD s2, s0, s5
  LW s4, 16(sp)
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s4, s2, s6
  FLW fs0, 0(s4)
  LW s2, 8(sp)
  ADDI s4, zero, 32
  MULW s5, s2, s4
  ADD s2, s1, s5
  LW s4, 0(sp)
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s4, s2, s6
  FLW fs1, 0(s4)
  LA s2, PI
  FLW fs2, 0(s2)
  LW s2, 40(sp)
  FCVT.S.W fs3, s2
  FDIV.S fs4, fs2, fs3
  LW s2, 24(sp)
  LA s4, .CONSTANT.7.2
  FLW fs2, 0(s4)
  LA s4, .CONSTANT.7.1
  FLW fs3, 0(s4)
  FDIV.S fs5, fs2, fs3
  FCVT.S.W fs2, s2
  FADD.S fs3, fs2, fs5
  FMUL.S fs2, fs4, fs3
  LW s2, 8(sp)
  FCVT.S.W fs3, s2
  FMUL.S fs4, fs2, fs3
  FSGNJ.S fa0, fs4, fs4
  CALL my_cos
  FSGNJ.D fs2, fa0, fa0
  FMUL.S fs3, fs1, fs2
  LA s2, PI
  FLW fs1, 0(s2)
  LW s2, 32(sp)
  FCVT.S.W fs2, s2
  FDIV.S fs4, fs1, fs2
  LW s2, 16(sp)
  LA s4, .CONSTANT.7.2
  FLW fs1, 0(s4)
  LA s4, .CONSTANT.7.1
  FLW fs2, 0(s4)
  FDIV.S fs5, fs1, fs2
  FCVT.S.W fs1, s2
  FADD.S fs2, fs1, fs5
  FMUL.S fs1, fs4, fs2
  LW s2, 0(sp)
  FCVT.S.W fs2, s2
  FMUL.S fs4, fs1, fs2
  FSGNJ.S fa0, fs4, fs4
  CALL my_cos
  FSGNJ.D fs1, fa0, fa0
  FMUL.S fs2, fs3, fs1
  FADD.S fs1, fs0, fs2
  FSW fs1, 0(s3)
  LW s2, 0(sp)
  ADDIW s3, s2, 1
  SW s3, 0(sp)
  JAL zero, bb16
bb18:
  LW s2, 8(sp)
  ADDIW s3, s2, 1
  SW s3, 8(sp)
  JAL zero, bb13
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
  BNE s0, zero, bb20
  JAL zero, bb21
bb20:
  FLW fs0, 0(sp)
  FSGNJ.S fa0, fs0, fs0
  LD ra, 8(sp)
  FLD fs2, 16(sp)
  FLD fs1, 24(sp)
  LD s0, 32(sp)
  FLD fs0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb21:
  FLW fs0, 0(sp)
  LA s0, .CONSTANT.7.3
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
dct:
  ADDI sp, sp, -160
  FSD fs5, 48(sp)
  FSD fs4, 56(sp)
  FSD fs3, 64(sp)
  FSD fs2, 72(sp)
  FSD fs1, 80(sp)
  SD s6, 88(sp)
  SD s0, 96(sp)
  SD s5, 104(sp)
  SD s1, 112(sp)
  SD s2, 120(sp)
  SD s3, 128(sp)
  SD s4, 136(sp)
  SD ra, 144(sp)
  FSD fs0, 152(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  SW s2, 40(sp)
  SW s3, 32(sp)
  SW zero, 24(sp)
  JAL zero, bb24
bb24:
  LW s2, 24(sp)
  LW s3, 40(sp)
  SLT s4, s2, s3
  XOR s2, s4, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb25
  JAL zero, bb26
bb25:
  SW zero, 16(sp)
  JAL zero, bb27
bb26:
  FLD fs5, 48(sp)
  FLD fs4, 56(sp)
  FLD fs3, 64(sp)
  FLD fs2, 72(sp)
  FLD fs1, 80(sp)
  LD s6, 88(sp)
  LD s0, 96(sp)
  LD s5, 104(sp)
  LD s1, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  LD ra, 144(sp)
  FLD fs0, 152(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb27:
  LW s2, 16(sp)
  LW s3, 32(sp)
  SLT s4, s2, s3
  XOR s2, s4, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb28
  JAL zero, bb29
bb28:
  LW s2, 24(sp)
  ADDI s3, zero, 32
  MULW s4, s2, s3
  ADD s2, s0, s4
  LW s3, 16(sp)
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s2, s5
  FCVT.S.L fs0, zero
  FSW fs0, 0(s3)
  SW zero, 8(sp)
  JAL zero, bb30
bb29:
  LW s2, 24(sp)
  ADDIW s3, s2, 1
  SW s3, 24(sp)
  JAL zero, bb24
bb30:
  LW s2, 8(sp)
  LW s3, 40(sp)
  SLT s4, s2, s3
  XOR s2, s4, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb31
  JAL zero, bb32
bb31:
  SW zero, 0(sp)
  JAL zero, bb33
bb32:
  LW s2, 16(sp)
  ADDIW s3, s2, 1
  SW s3, 16(sp)
  JAL zero, bb27
bb33:
  LW s2, 0(sp)
  LW s3, 32(sp)
  SLT s4, s2, s3
  XOR s2, s4, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb34
  JAL zero, bb35
bb34:
  LW s2, 24(sp)
  ADDI s3, zero, 32
  MULW s4, s2, s3
  ADD s2, s0, s4
  LW s3, 16(sp)
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s2, s5
  LW s2, 24(sp)
  ADDI s4, zero, 32
  MULW s5, s2, s4
  ADD s2, s0, s5
  LW s4, 16(sp)
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s4, s2, s6
  FLW fs0, 0(s4)
  LW s2, 8(sp)
  ADDI s4, zero, 32
  MULW s5, s2, s4
  ADD s2, s1, s5
  LW s4, 0(sp)
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s4, s2, s6
  FLW fs1, 0(s4)
  LA s2, PI
  FLW fs2, 0(s2)
  LW s2, 40(sp)
  FCVT.S.W fs3, s2
  FDIV.S fs4, fs2, fs3
  LW s2, 8(sp)
  LA s4, .CONSTANT.7.2
  FLW fs2, 0(s4)
  LA s4, .CONSTANT.7.1
  FLW fs3, 0(s4)
  FDIV.S fs5, fs2, fs3
  FCVT.S.W fs2, s2
  FADD.S fs3, fs2, fs5
  FMUL.S fs2, fs4, fs3
  LW s2, 24(sp)
  FCVT.S.W fs3, s2
  FMUL.S fs4, fs2, fs3
  FSGNJ.S fa0, fs4, fs4
  CALL my_cos
  FSGNJ.D fs2, fa0, fa0
  FMUL.S fs3, fs1, fs2
  LA s2, PI
  FLW fs1, 0(s2)
  LW s2, 32(sp)
  FCVT.S.W fs2, s2
  FDIV.S fs4, fs1, fs2
  LW s2, 0(sp)
  LA s4, .CONSTANT.7.2
  FLW fs1, 0(s4)
  LA s4, .CONSTANT.7.1
  FLW fs2, 0(s4)
  FDIV.S fs5, fs1, fs2
  FCVT.S.W fs1, s2
  FADD.S fs2, fs1, fs5
  FMUL.S fs1, fs4, fs2
  LW s2, 16(sp)
  FCVT.S.W fs2, s2
  FMUL.S fs4, fs1, fs2
  FSGNJ.S fa0, fs4, fs4
  CALL my_cos
  FSGNJ.D fs1, fa0, fa0
  FMUL.S fs2, fs3, fs1
  FADD.S fs1, fs0, fs2
  FSW fs1, 0(s3)
  LW s2, 0(sp)
  ADDIW s3, s2, 1
  SW s3, 0(sp)
  JAL zero, bb33
bb35:
  LW s2, 8(sp)
  ADDIW s3, s2, 1
  SW s3, 8(sp)
  JAL zero, bb30
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
  BNE s0, zero, bb37
  JAL zero, bb38
bb37:
  ADDI s0, zero, 1
  SB s0, 8(sp)
  JAL zero, bb39
bb38:
  FLW fs0, 16(sp)
  LA s0, TWO_PI
  FLW fs1, 0(s0)
  FSGNJN.S fs2, fs1, fs1
  FLT.S s0, fs0, fs2
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 8(sp)
  JAL zero, bb39
bb39:
  LB s0, 8(sp)
  BNE s0, zero, bb40
  JAL zero, bb41
bb40:
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
  JAL zero, bb41
bb41:
  FLW fs0, 16(sp)
  LA s0, PI
  FLW fs1, 0(s0)
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb42
  JAL zero, bb43
bb42:
  FLW fs0, 16(sp)
  LA s0, TWO_PI
  FLW fs1, 0(s0)
  FSUB.S fs2, fs0, fs1
  FSW fs2, 16(sp)
  JAL zero, bb43
bb43:
  FLW fs0, 16(sp)
  LA s0, PI
  FLW fs1, 0(s0)
  FSGNJN.S fs2, fs1, fs1
  FLT.S s0, fs0, fs2
  BNE s0, zero, bb44
  JAL zero, bb45
bb44:
  FLW fs0, 16(sp)
  LA s0, TWO_PI
  FLW fs1, 0(s0)
  FADD.S fs2, fs0, fs1
  FSW fs2, 16(sp)
  JAL zero, bb45
bb45:
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
write_mat:
  ADDI sp, sp, -96
  SD s4, 32(sp)
  SD ra, 40(sp)
  FSD fs0, 48(sp)
  SD s3, 56(sp)
  SD s2, 64(sp)
  SD s1, 72(sp)
  SD s0, 80(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  SW s1, 24(sp)
  SW s2, 16(sp)
  SW zero, 8(sp)
  JAL zero, bb47
bb47:
  LW s1, 8(sp)
  LW s2, 24(sp)
  SLT s3, s1, s2
  XOR s1, s3, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb48
  JAL zero, bb49
bb48:
  LW s1, 8(sp)
  ADDI s2, zero, 32
  MULW s3, s1, s2
  ADD s1, s0, s3
  ADDI s2, zero, 4
  MUL s3, zero, s2
  ADD s2, s1, s3
  FLW fs0, 0(s2)
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  ADDI s1, zero, 1
  SW s1, 0(sp)
  JAL zero, bb50
bb49:
  ADDI a0, zero, 10
  CALL putch
  LD s4, 32(sp)
  LD ra, 40(sp)
  FLD fs0, 48(sp)
  LD s3, 56(sp)
  LD s2, 64(sp)
  LD s1, 72(sp)
  LD s0, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb50:
  LW s1, 0(sp)
  LW s2, 16(sp)
  SLT s3, s1, s2
  XOR s1, s3, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb51
  JAL zero, bb52
bb51:
  ADDI a0, zero, 32
  CALL putch
  LW s1, 8(sp)
  ADDI s2, zero, 32
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s2, 0(sp)
  ADDI s3, zero, 4
  MULW s4, s2, s3
  ADD s2, s1, s4
  FLW fs0, 0(s2)
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  LW s1, 0(sp)
  ADDIW s2, s1, 1
  SW s2, 0(sp)
  JAL zero, bb50
bb52:
  ADDI a0, zero, 10
  CALL putch
  LW s1, 8(sp)
  ADDIW s2, s1, 1
  SW s2, 8(sp)
  JAL zero, bb47
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
  ADDI sp, sp, -80
  FSD fs0, 32(sp)
  SD s3, 40(sp)
  SD ra, 48(sp)
  SD s2, 56(sp)
  SD s1, 64(sp)
  SD s0, 72(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 24(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 16(sp)
  SW zero, 8(sp)
  JAL zero, bb55
bb55:
  LW s0, 8(sp)
  LW s1, 24(sp)
  SLT s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb56
  JAL zero, bb57
bb56:
  SW zero, 0(sp)
  JAL zero, bb58
bb57:
  LW s0, 24(sp)
  LW s1, 16(sp)
  LA s2, test_dct
  ADD a0, s2, zero
  LA s2, test_block
  ADD a1, s2, zero
  ADD a2, s0, zero
  ADD a3, s1, zero
  CALL dct
  LW s0, 24(sp)
  LW s1, 16(sp)
  LA s2, test_dct
  ADD a0, s2, zero
  ADD a1, s0, zero
  ADD a2, s1, zero
  CALL write_mat
  LW s0, 24(sp)
  LW s1, 16(sp)
  LA s2, test_idct
  ADD a0, s2, zero
  LA s2, test_dct
  ADD a1, s2, zero
  ADD a2, s0, zero
  ADD a3, s1, zero
  CALL idct
  LW s0, 24(sp)
  LW s1, 16(sp)
  LA s2, test_idct
  ADD a0, s2, zero
  ADD a1, s0, zero
  ADD a2, s1, zero
  CALL write_mat
  ADD a0, zero, zero
  FLD fs0, 32(sp)
  LD s3, 40(sp)
  LD ra, 48(sp)
  LD s2, 56(sp)
  LD s1, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb58:
  LW s0, 0(sp)
  LW s1, 16(sp)
  SLT s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb59
  JAL zero, bb60
bb59:
  LW s0, 8(sp)
  ADDI s1, zero, 32
  MULW s2, s0, s1
  LA s0, test_block
  ADD s1, s0, s2
  LW s0, 0(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADD s0, s1, s3
  CALL getfloat
  FSGNJ.D fs0, fa0, fa0
  FSW fs0, 0(s0)
  LW s0, 0(sp)
  ADDIW s1, s0, 1
  SW s1, 0(sp)
  JAL zero, bb58
bb60:
  LW s0, 8(sp)
  ADDIW s1, s0, 1
  SW s1, 8(sp)
  JAL zero, bb55
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
  BNE s0, zero, bb62
  JAL zero, bb63
bb62:
  FLW fs0, 0(sp)
  FSGNJ.S fa0, fs0, fs0
  LD ra, 8(sp)
  LD s0, 16(sp)
  FLD fs1, 24(sp)
  FLD fs0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb63:
  FLW fs0, 0(sp)
  FSGNJN.S fs1, fs0, fs0
  FSGNJ.S fa0, fs1, fs1
  LD ra, 8(sp)
  LD s0, 16(sp)
  FLD fs1, 24(sp)
  FLD fs0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
