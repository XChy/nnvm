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
  ADDI sp, sp, -256
  FSD fs5, 96(sp)
  SD s11, 104(sp)
  SD s5, 112(sp)
  SD s4, 120(sp)
  SD s9, 128(sp)
  FSD fs4, 136(sp)
  SD s8, 144(sp)
  FSD fs3, 152(sp)
  SD s10, 160(sp)
  FSD fs0, 168(sp)
  SD s7, 176(sp)
  FSD fs2, 184(sp)
  SD ra, 192(sp)
  FSD fs1, 200(sp)
  SD s0, 208(sp)
  SD s3, 216(sp)
  SD s1, 224(sp)
  SD s2, 232(sp)
  SD s6, 240(sp)
  ADD t4, a0, zero
  SD t4, 24(sp)
  ADD t4, a1, zero
  SD t4, 16(sp)
  ADD t4, a2, zero
  SW t4, 8(sp)
  ADD t4, a3, zero
  SW t4, 0(sp)
  ADD s4, zero, zero
  ADD s5, zero, zero
  ADD t4, zero, zero
  SW t4, 32(sp)
  JAL zero, bb1
bb1:
  LW t4, 32(sp)
  ADD s7, t4, zero
  ADD s8, s5, zero
  ADD s9, s4, zero
  LW t4, 8(sp)
  SLT s10, s7, t4
  XOR s11, s10, zero
  SLTU s10, zero, s11
  BNE s10, zero, bb2
  JAL zero, bb3
bb2:
  ADD s10, s9, zero
  ADD s9, s8, zero
  ADD s8, zero, zero
  JAL zero, bb4
bb3:
  FLD fs5, 96(sp)
  LD s11, 104(sp)
  LD s5, 112(sp)
  LD s4, 120(sp)
  LD s9, 128(sp)
  FLD fs4, 136(sp)
  LD s8, 144(sp)
  FLD fs3, 152(sp)
  LD s10, 160(sp)
  FLD fs0, 168(sp)
  LD s7, 176(sp)
  FLD fs2, 184(sp)
  LD ra, 192(sp)
  FLD fs1, 200(sp)
  LD s0, 208(sp)
  LD s3, 216(sp)
  LD s1, 224(sp)
  LD s2, 232(sp)
  LD s6, 240(sp)
  ADDI sp, sp, 256
  JALR zero, 0(ra)
bb4:
  ADD s11, s8, zero
  ADD t4, s9, zero
  SW t4, 72(sp)
  ADD t4, s10, zero
  SW t4, 80(sp)
  LW t4, 0(sp)
  SLT t2, s11, t4
  XOR a4, t2, zero
  SLTU t2, zero, a4
  BNE t2, zero, bb5
  JAL zero, bb6
bb5:
  ADDI t2, zero, 32
  MULW a4, s7, t2
  LD t4, 24(sp)
  ADD t2, t4, a4
  ADDI a4, zero, 4
  MULW a5, s11, a4
  ADD a4, t2, a5
  ADDI t2, zero, 1
  FCVT.S.W fs0, t2
  LA t2, .CONSTANT.7.0
  FLW fs1, 0(t2)
  FDIV.S fs2, fs0, fs1
  LD t4, 16(sp)
  ADD t2, t4, zero
  ADD a5, t2, zero
  FLW fs0, 0(a5)
  FMUL.S fs1, fs2, fs0
  FSW fs1, 0(a4)
  ADDI t2, zero, 1
  JAL zero, bb7
bb6:
  ADDIW s0, s7, 1
  LW t4, 80(sp)
  ADD s4, t4, zero
  LW t4, 72(sp)
  ADD s5, t4, zero
  ADD t4, s0, zero
  SW t4, 32(sp)
  JAL zero, bb1
bb7:
  ADD a4, t2, zero
  LW t4, 8(sp)
  SLT a5, a4, t4
  XOR a6, a5, zero
  SLTU a5, zero, a6
  BNE a5, zero, bb8
  JAL zero, bb9
bb8:
  ADDI a5, zero, 32
  MULW a6, s7, a5
  LD t4, 24(sp)
  ADD a5, t4, a6
  ADDI a6, zero, 4
  MULW a7, s11, a6
  ADD a6, a5, a7
  ADDI a5, zero, 32
  MULW a7, s7, a5
  LD t4, 24(sp)
  ADD a5, t4, a7
  ADDI a7, zero, 4
  MULW s3, s11, a7
  ADD a7, a5, s3
  FLW fs0, 0(a7)
  ADDI s3, zero, 1
  FCVT.S.W fs1, s3
  LA s3, .CONSTANT.7.1
  FLW fs2, 0(s3)
  FDIV.S fs3, fs1, fs2
  ADDI s3, zero, 32
  MULW a5, a4, s3
  LD t4, 16(sp)
  ADD s3, t4, a5
  ADD a5, s3, zero
  FLW fs1, 0(a5)
  FMUL.S fs2, fs3, fs1
  FADD.S fs1, fs0, fs2
  FSW fs1, 0(a6)
  ADDIW s3, a4, 1
  ADD t2, s3, zero
  JAL zero, bb7
bb9:
  ADDI s3, zero, 1
  JAL zero, bb10
bb10:
  ADD t2, s3, zero
  LW t4, 0(sp)
  SLT a4, t2, t4
  XOR a5, a4, zero
  SLTU a4, zero, a5
  BNE a4, zero, bb11
  JAL zero, bb12
bb11:
  ADDI a4, zero, 32
  MULW a5, s7, a4
  LD t4, 24(sp)
  ADD a4, t4, a5
  ADDI a5, zero, 4
  MULW a6, s11, a5
  ADD a5, a4, a6
  ADDI a4, zero, 32
  MULW a6, s7, a4
  LD t4, 24(sp)
  ADD a4, t4, a6
  ADDI a6, zero, 4
  MULW a7, s11, a6
  ADD a6, a4, a7
  FLW fs0, 0(a6)
  ADDI a4, zero, 1
  FCVT.S.W fs1, a4
  LA a4, .CONSTANT.7.1
  FLW fs2, 0(a4)
  FDIV.S fs3, fs1, fs2
  LD t4, 16(sp)
  ADD a4, t4, zero
  ADDI a6, zero, 4
  MULW a7, t2, a6
  ADD a6, a4, a7
  FLW fs1, 0(a6)
  FMUL.S fs2, fs3, fs1
  FADD.S fs1, fs0, fs2
  FSW fs1, 0(a5)
  ADDIW a4, t2, 1
  ADD s3, a4, zero
  JAL zero, bb10
bb12:
  ADD s3, t2, zero
  ADDI t4, zero, 1
  SW t4, 56(sp)
  JAL zero, bb13
bb13:
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  ADD t4, s3, zero
  SW t4, 88(sp)
  LW t4, 48(sp)
  LW t3, 8(sp)
  SLT a6, t4, t3
  XOR a7, a6, zero
  SLTU a6, zero, a7
  BNE a6, zero, bb14
  JAL zero, bb15
bb14:
  ADDI t4, zero, 1
  SW t4, 40(sp)
  JAL zero, bb16
bb15:
  ADDI s0, zero, 32
  MULW s1, s7, s0
  LD t4, 24(sp)
  ADD s0, t4, s1
  ADDI s1, zero, 4
  MULW s2, s11, s1
  ADD s1, s0, s2
  ADDI s0, zero, 32
  MULW s2, s7, s0
  LD t4, 24(sp)
  ADD s0, t4, s2
  ADDI s2, zero, 4
  MULW s3, s11, s2
  ADD s2, s0, s3
  FLW fs0, 0(s2)
  LA s0, .CONSTANT.7.1
  FLW fs1, 0(s0)
  FMUL.S fs2, fs0, fs1
  LW t4, 8(sp)
  FCVT.S.W fs0, t4
  FDIV.S fs1, fs2, fs0
  LA s0, .CONSTANT.7.1
  FLW fs0, 0(s0)
  FMUL.S fs2, fs1, fs0
  LW t4, 0(sp)
  FCVT.S.W fs0, t4
  FDIV.S fs1, fs2, fs0
  FSW fs1, 0(s1)
  ADDIW s0, s11, 1
  LW t4, 88(sp)
  ADD s10, t4, zero
  LW t4, 48(sp)
  ADD s9, t4, zero
  ADD s8, s0, zero
  JAL zero, bb4
bb16:
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  LW t4, 64(sp)
  LW t3, 0(sp)
  SLT s2, t4, t3
  XOR s1, s2, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb17
  JAL zero, bb18
bb17:
  ADDI s1, zero, 32
  MULW s2, s7, s1
  LD t4, 24(sp)
  ADD s1, t4, s2
  ADDI s2, zero, 4
  MULW s0, s11, s2
  ADD s2, s1, s0
  ADDI s0, zero, 32
  MULW s1, s7, s0
  LD t4, 24(sp)
  ADD s0, t4, s1
  ADDI s1, zero, 4
  MULW s6, s11, s1
  ADD s1, s0, s6
  FLW fs0, 0(s1)
  ADDI s0, zero, 32
  LW t4, 48(sp)
  MULW s1, t4, s0
  LD t4, 16(sp)
  ADD s0, t4, s1
  ADDI s1, zero, 4
  LW t4, 64(sp)
  MULW s6, t4, s1
  ADD s1, s0, s6
  FLW fs1, 0(s1)
  LA s0, PI
  FLW fs2, 0(s0)
  LW t4, 8(sp)
  FCVT.S.W fs3, t4
  FDIV.S fs4, fs2, fs3
  LA s0, .CONSTANT.7.2
  FLW fs2, 0(s0)
  LA s0, .CONSTANT.7.1
  FLW fs3, 0(s0)
  FDIV.S fs5, fs2, fs3
  FCVT.S.W fs2, s7
  FADD.S fs3, fs2, fs5
  FMUL.S fs2, fs4, fs3
  LW t4, 48(sp)
  FCVT.S.W fs3, t4
  FMUL.S fs4, fs2, fs3
  FSGNJ.S fa0, fs4, fs4
  CALL my_cos
  FSGNJ.D fs2, fa0, fa0
  FMUL.S fs3, fs1, fs2
  LA s0, PI
  FLW fs1, 0(s0)
  LW t4, 0(sp)
  FCVT.S.W fs2, t4
  FDIV.S fs4, fs1, fs2
  LA s0, .CONSTANT.7.2
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.1
  FLW fs2, 0(s0)
  FDIV.S fs5, fs1, fs2
  FCVT.S.W fs1, s11
  FADD.S fs2, fs1, fs5
  FMUL.S fs1, fs4, fs2
  LW t4, 64(sp)
  FCVT.S.W fs2, t4
  FMUL.S fs4, fs1, fs2
  FSGNJ.S fa0, fs4, fs4
  CALL my_cos
  FSGNJ.D fs1, fa0, fa0
  FMUL.S fs2, fs3, fs1
  FADD.S fs1, fs0, fs2
  FSW fs1, 0(s2)
  LW t4, 64(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 40(sp)
  JAL zero, bb16
bb18:
  LW t4, 48(sp)
  ADDIW s0, t4, 1
  LW t4, 64(sp)
  ADD s3, t4, zero
  ADD t4, s0, zero
  SW t4, 56(sp)
  JAL zero, bb13
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
  BNE s0, zero, bb20
  JAL zero, bb21
bb20:
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  FLD fs2, 8(sp)
  LD s0, 16(sp)
  FLD fs1, 24(sp)
  FLD fs0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb21:
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
dct:
  ADDI sp, sp, -256
  SD s11, 96(sp)
  SD s5, 104(sp)
  SD s4, 112(sp)
  SD s9, 120(sp)
  FSD fs4, 128(sp)
  SD s8, 136(sp)
  FSD fs3, 144(sp)
  SD s10, 152(sp)
  FSD fs5, 160(sp)
  FSD fs0, 168(sp)
  SD s7, 176(sp)
  FSD fs2, 184(sp)
  SD ra, 192(sp)
  FSD fs1, 200(sp)
  SD s0, 208(sp)
  SD s3, 216(sp)
  SD s2, 224(sp)
  SD s1, 232(sp)
  SD s6, 240(sp)
  ADD t4, a0, zero
  SD t4, 24(sp)
  ADD t4, a1, zero
  SD t4, 16(sp)
  ADD t4, a2, zero
  SW t4, 8(sp)
  ADD t4, a3, zero
  SW t4, 0(sp)
  ADD s4, zero, zero
  ADD s5, zero, zero
  ADD t4, zero, zero
  SW t4, 32(sp)
  JAL zero, bb24
bb24:
  LW t4, 32(sp)
  ADD s7, t4, zero
  ADD s8, s5, zero
  ADD s9, s4, zero
  LW t4, 8(sp)
  SLT s10, s7, t4
  XOR s11, s10, zero
  SLTU s10, zero, s11
  BNE s10, zero, bb25
  JAL zero, bb26
bb25:
  ADD s10, s9, zero
  ADD s9, s8, zero
  ADD s8, zero, zero
  JAL zero, bb27
bb26:
  LD s11, 96(sp)
  LD s5, 104(sp)
  LD s4, 112(sp)
  LD s9, 120(sp)
  FLD fs4, 128(sp)
  LD s8, 136(sp)
  FLD fs3, 144(sp)
  LD s10, 152(sp)
  FLD fs5, 160(sp)
  FLD fs0, 168(sp)
  LD s7, 176(sp)
  FLD fs2, 184(sp)
  LD ra, 192(sp)
  FLD fs1, 200(sp)
  LD s0, 208(sp)
  LD s3, 216(sp)
  LD s2, 224(sp)
  LD s1, 232(sp)
  LD s6, 240(sp)
  ADDI sp, sp, 256
  JALR zero, 0(ra)
bb27:
  ADD s11, s8, zero
  ADD t4, s9, zero
  SW t4, 72(sp)
  ADD t4, s10, zero
  SW t4, 80(sp)
  LW t4, 0(sp)
  SLT t2, s11, t4
  XOR a4, t2, zero
  SLTU t2, zero, a4
  BNE t2, zero, bb28
  JAL zero, bb29
bb28:
  ADDI t2, zero, 32
  MULW a4, s7, t2
  LD t4, 24(sp)
  ADD t2, t4, a4
  ADDI a4, zero, 4
  MULW a5, s11, a4
  ADD a4, t2, a5
  FCVT.S.L fs0, zero
  FSW fs0, 0(a4)
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  ADD t4, zero, zero
  SW t4, 48(sp)
  JAL zero, bb30
bb29:
  ADDIW s0, s7, 1
  LW t4, 80(sp)
  ADD s4, t4, zero
  LW t4, 72(sp)
  ADD s5, t4, zero
  ADD t4, s0, zero
  SW t4, 32(sp)
  JAL zero, bb24
bb30:
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 88(sp)
  LW t4, 64(sp)
  LW t3, 8(sp)
  SLT a7, t4, t3
  XOR s3, a7, zero
  SLTU a7, zero, s3
  BNE a7, zero, bb31
  JAL zero, bb32
bb31:
  ADD s3, zero, zero
  JAL zero, bb33
bb32:
  ADDIW s0, s11, 1
  LW t4, 88(sp)
  ADD s10, t4, zero
  LW t4, 64(sp)
  ADD s9, t4, zero
  ADD s8, s0, zero
  JAL zero, bb27
bb33:
  ADD t4, s3, zero
  SW t4, 40(sp)
  LW t4, 40(sp)
  LW t3, 0(sp)
  SLT s2, t4, t3
  XOR s1, s2, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb34
  JAL zero, bb35
bb34:
  ADDI s1, zero, 32
  MULW s2, s7, s1
  LD t4, 24(sp)
  ADD s1, t4, s2
  ADDI s2, zero, 4
  MULW s0, s11, s2
  ADD s2, s1, s0
  ADDI s0, zero, 32
  MULW s1, s7, s0
  LD t4, 24(sp)
  ADD s0, t4, s1
  ADDI s1, zero, 4
  MULW s6, s11, s1
  ADD s1, s0, s6
  FLW fs0, 0(s1)
  ADDI s0, zero, 32
  LW t4, 64(sp)
  MULW s1, t4, s0
  LD t4, 16(sp)
  ADD s0, t4, s1
  ADDI s1, zero, 4
  LW t4, 40(sp)
  MULW s6, t4, s1
  ADD s1, s0, s6
  FLW fs1, 0(s1)
  LA s0, PI
  FLW fs2, 0(s0)
  LW t4, 8(sp)
  FCVT.S.W fs3, t4
  FDIV.S fs4, fs2, fs3
  LA s0, .CONSTANT.7.2
  FLW fs2, 0(s0)
  LA s0, .CONSTANT.7.1
  FLW fs3, 0(s0)
  FDIV.S fs5, fs2, fs3
  LW t4, 64(sp)
  FCVT.S.W fs2, t4
  FADD.S fs3, fs2, fs5
  FMUL.S fs2, fs4, fs3
  FCVT.S.W fs3, s7
  FMUL.S fs4, fs2, fs3
  FSGNJ.S fa0, fs4, fs4
  CALL my_cos
  FSGNJ.D fs2, fa0, fa0
  FMUL.S fs3, fs1, fs2
  LA s0, PI
  FLW fs1, 0(s0)
  LW t4, 0(sp)
  FCVT.S.W fs2, t4
  FDIV.S fs4, fs1, fs2
  LA s0, .CONSTANT.7.2
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.1
  FLW fs2, 0(s0)
  FDIV.S fs5, fs1, fs2
  LW t4, 40(sp)
  FCVT.S.W fs1, t4
  FADD.S fs2, fs1, fs5
  FMUL.S fs1, fs4, fs2
  FCVT.S.W fs2, s11
  FMUL.S fs4, fs1, fs2
  FSGNJ.S fa0, fs4, fs4
  CALL my_cos
  FSGNJ.D fs1, fa0, fa0
  FMUL.S fs2, fs3, fs1
  FADD.S fs1, fs0, fs2
  FSW fs1, 0(s2)
  LW t4, 40(sp)
  ADDIW s0, t4, 1
  ADD s3, s0, zero
  JAL zero, bb33
bb35:
  LW t4, 64(sp)
  ADDIW s0, t4, 1
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  ADD t4, s0, zero
  SW t4, 48(sp)
  JAL zero, bb30
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
  BNE s0, zero, bb37
  JAL zero, bb38
bb37:
  ADDI s0, zero, 1
  JAL zero, bb39
bb38:
  LA s1, TWO_PI
  FLW fs1, 0(s1)
  FSGNJN.S fs2, fs1, fs1
  FLT.S s1, fs0, fs2
  XOR s2, s1, zero
  SLTU s1, zero, s2
  ADD s0, s1, zero
  JAL zero, bb39
bb39:
  ADD s1, s0, zero
  BNE s1, zero, bb40
  JAL zero, bb46
bb40:
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
  JAL zero, bb41
bb41:
  FSGNJ.S fs1, fs2, fs2
  LA s1, PI
  FLW fs3, 0(s1)
  FLT.S s1, fs3, fs1
  BNE s1, zero, bb42
  JAL zero, bb47
bb42:
  LA s1, TWO_PI
  FLW fs3, 0(s1)
  FSUB.S fs4, fs1, fs3
  FSGNJ.S fs3, fs4, fs4
  JAL zero, bb43
bb43:
  FSGNJ.S fs4, fs3, fs3
  LA s1, PI
  FLW fs5, 0(s1)
  FSGNJN.S fs6, fs5, fs5
  FLT.S s1, fs4, fs6
  BNE s1, zero, bb44
  JAL zero, bb48
bb44:
  LA s1, TWO_PI
  FLW fs5, 0(s1)
  FADD.S fs6, fs4, fs5
  FSGNJ.S fs5, fs6, fs6
  JAL zero, bb45
bb45:
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
bb46:
  FSGNJ.S fs2, fs0, fs0
  JAL zero, bb41
bb47:
  FSGNJ.S fs3, fs1, fs1
  JAL zero, bb43
bb48:
  FSGNJ.S fs5, fs4, fs4
  JAL zero, bb45
write_mat:
  ADDI sp, sp, -96
  SD s9, 0(sp)
  SD s8, 8(sp)
  SD s7, 16(sp)
  SD ra, 24(sp)
  SD s0, 32(sp)
  SD s5, 40(sp)
  SD s1, 48(sp)
  SD s6, 56(sp)
  SD s2, 64(sp)
  SD s3, 72(sp)
  SD s4, 80(sp)
  FSD fs0, 88(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, zero, zero
  JAL zero, bb50
bb50:
  ADD s4, s3, zero
  SLT s5, s4, s1
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb51
  JAL zero, bb52
bb51:
  ADDI s5, zero, 32
  MULW s6, s4, s5
  ADD s5, s0, s6
  ADD s6, s5, zero
  FLW fs0, 0(s6)
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  ADDI s5, zero, 1
  JAL zero, bb53
bb52:
  ADDI a0, zero, 10
  CALL putch
  LD s9, 0(sp)
  LD s8, 8(sp)
  LD s7, 16(sp)
  LD ra, 24(sp)
  LD s0, 32(sp)
  LD s5, 40(sp)
  LD s1, 48(sp)
  LD s6, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  FLD fs0, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb53:
  ADD s6, s5, zero
  SLT s7, s6, s2
  XOR s8, s7, zero
  SLTU s7, zero, s8
  BNE s7, zero, bb54
  JAL zero, bb55
bb54:
  ADDI a0, zero, 32
  CALL putch
  ADDI s7, zero, 32
  MULW s8, s4, s7
  ADD s7, s0, s8
  ADDI s8, zero, 4
  MULW s9, s6, s8
  ADD s8, s7, s9
  FLW fs0, 0(s8)
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  ADDIW s7, s6, 1
  ADD s5, s7, zero
  JAL zero, bb53
bb55:
  ADDI a0, zero, 10
  CALL putch
  ADDIW s5, s4, 1
  ADD s3, s5, zero
  JAL zero, bb50
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
  ADDI sp, sp, -96
  SD s8, 0(sp)
  SD s7, 8(sp)
  SD s0, 16(sp)
  SD s5, 24(sp)
  FSD fs0, 32(sp)
  SD s1, 40(sp)
  SD s6, 48(sp)
  SD s2, 56(sp)
  SD s3, 64(sp)
  SD s4, 72(sp)
  SD ra, 80(sp)
  CALL getint
  ADD s0, a0, zero
  CALL getint
  ADD s1, a0, zero
  ADD s2, zero, zero
  JAL zero, bb58
bb58:
  ADD s3, s2, zero
  SLT s4, s3, s0
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb59
  JAL zero, bb60
bb59:
  ADD s4, zero, zero
  JAL zero, bb61
bb60:
  LA s2, test_dct
  ADD a0, s2, zero
  LA s2, test_block
  ADD a1, s2, zero
  ADD a2, s0, zero
  ADD a3, s1, zero
  CALL dct
  LA s2, test_dct
  ADD a0, s2, zero
  ADD a1, s0, zero
  ADD a2, s1, zero
  CALL write_mat
  LA s2, test_idct
  ADD a0, s2, zero
  LA s2, test_dct
  ADD a1, s2, zero
  ADD a2, s0, zero
  ADD a3, s1, zero
  CALL idct
  LA s2, test_idct
  ADD a0, s2, zero
  ADD a1, s0, zero
  ADD a2, s1, zero
  CALL write_mat
  ADD a0, zero, zero
  LD s8, 0(sp)
  LD s7, 8(sp)
  LD s0, 16(sp)
  LD s5, 24(sp)
  FLD fs0, 32(sp)
  LD s1, 40(sp)
  LD s6, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD s4, 72(sp)
  LD ra, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb61:
  ADD s5, s4, zero
  SLT s6, s5, s1
  XOR s7, s6, zero
  SLTU s6, zero, s7
  BNE s6, zero, bb62
  JAL zero, bb63
bb62:
  ADDI s6, zero, 32
  MULW s7, s3, s6
  LA s6, test_block
  ADD s8, s6, s7
  ADDI s6, zero, 4
  MULW s7, s5, s6
  ADD s6, s8, s7
  CALL getfloat
  FSGNJ.D fs0, fa0, fa0
  FSW fs0, 0(s6)
  ADDIW s6, s5, 1
  ADD s4, s6, zero
  JAL zero, bb61
bb63:
  ADDIW s4, s3, 1
  ADD s2, s4, zero
  JAL zero, bb58
my_fabs:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs1, 16(sp)
  FSD fs0, 24(sp)
  FSGNJ.D fs0, fa0, fa0
  FCVT.S.L fs1, zero
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb65
  JAL zero, bb66
bb65:
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs1, 16(sp)
  FLD fs0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb66:
  FSGNJN.S fs1, fs0, fs0
  FSGNJ.S fa0, fs1, fs1
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs1, 16(sp)
  FLD fs0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
