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
  ADDI sp, sp, -176
  FSD fs5, 24(sp)
  SD s4, 32(sp)
  SD s3, 40(sp)
  SD s2, 48(sp)
  SD s1, 56(sp)
  FSD fs0, 64(sp)
  SD s7, 72(sp)
  FSD fs2, 80(sp)
  SD s5, 88(sp)
  SD s0, 96(sp)
  SD s8, 104(sp)
  FSD fs3, 112(sp)
  SD s9, 120(sp)
  FSD fs4, 128(sp)
  SD ra, 136(sp)
  SD s10, 144(sp)
  SD s11, 152(sp)
  FSD fs1, 160(sp)
  SD s6, 168(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  ADD s4, zero, zero
  ADD s5, zero, zero
  ADD t4, zero, zero
  SW t4, 16(sp)
  JAL zero, bb1
bb1:
  LW t4, 16(sp)
  SLT s7, t4, s2
  XOR s8, s7, zero
  SLTU s7, zero, s8
  BNE s7, zero, bb2
  JAL zero, bb3
bb2:
  ADD s7, s4, zero
  ADD s8, s5, zero
  ADD s9, zero, zero
  JAL zero, bb4
bb3:
  FLD fs5, 24(sp)
  LD s4, 32(sp)
  LD s3, 40(sp)
  LD s2, 48(sp)
  LD s1, 56(sp)
  FLD fs0, 64(sp)
  LD s7, 72(sp)
  FLD fs2, 80(sp)
  LD s5, 88(sp)
  LD s0, 96(sp)
  LD s8, 104(sp)
  FLD fs3, 112(sp)
  LD s9, 120(sp)
  FLD fs4, 128(sp)
  LD ra, 136(sp)
  LD s10, 144(sp)
  LD s11, 152(sp)
  FLD fs1, 160(sp)
  LD s6, 168(sp)
  ADDI sp, sp, 176
  JALR zero, 0(ra)
bb4:
  SLT s10, s9, s3
  XOR s11, s10, zero
  SLTU s10, zero, s11
  BNE s10, zero, bb5
  JAL zero, bb6
bb5:
  ADDI s10, zero, 32
  LW t4, 16(sp)
  MULW s11, t4, s10
  ADD s10, s0, s11
  ADDI s11, zero, 4
  MULW t0, s9, s11
  ADD s11, s10, t0
  ADDI s10, zero, 1
  FCVT.S.W fs0, s10
  LA s10, .CONSTANT.7.0
  FLW fs1, 0(s10)
  FDIV.S fs2, fs0, fs1
  ADDI s10, zero, 32
  MULW t0, zero, s10
  ADD s10, s1, t0
  ADDI t0, zero, 4
  MULW t1, zero, t0
  ADD t0, s10, t1
  FLW fs0, 0(t0)
  FMUL.S fs1, fs2, fs0
  FSW fs1, 0(s11)
  ADDI s10, zero, 1
  JAL zero, bb7
bb6:
  LW t4, 16(sp)
  ADDIW s6, t4, 1
  ADD s4, s7, zero
  ADD s5, s8, zero
  ADD t4, s6, zero
  SW t4, 16(sp)
  JAL zero, bb1
bb7:
  SLT s11, s10, s2
  XOR t0, s11, zero
  SLTU s11, zero, t0
  BNE s11, zero, bb8
  JAL zero, bb9
bb8:
  ADDI s11, zero, 32
  LW t4, 16(sp)
  MULW t0, t4, s11
  ADD s11, s0, t0
  ADDI t0, zero, 4
  MULW t1, s9, t0
  ADD t0, s11, t1
  ADDI s11, zero, 32
  LW t4, 16(sp)
  MULW t1, t4, s11
  ADD s11, s0, t1
  ADDI t1, zero, 4
  MULW t2, s9, t1
  ADD t1, s11, t2
  FLW fs0, 0(t1)
  ADDI s11, zero, 1
  FCVT.S.W fs1, s11
  LA s11, .CONSTANT.7.1
  FLW fs2, 0(s11)
  FDIV.S fs3, fs1, fs2
  ADDI s11, zero, 32
  MULW t1, s10, s11
  ADD s11, s1, t1
  ADDI t1, zero, 4
  MULW t2, zero, t1
  ADD t1, s11, t2
  FLW fs1, 0(t1)
  FMUL.S fs2, fs3, fs1
  FADD.S fs1, fs0, fs2
  FSW fs1, 0(t0)
  ADDIW s11, s10, 1
  ADD s10, s11, zero
  JAL zero, bb7
bb9:
  ADDI s10, zero, 1
  JAL zero, bb10
bb10:
  SLT s11, s10, s3
  XOR t0, s11, zero
  SLTU s11, zero, t0
  BNE s11, zero, bb11
  JAL zero, bb12
bb11:
  ADDI s11, zero, 32
  LW t4, 16(sp)
  MULW t0, t4, s11
  ADD s11, s0, t0
  ADDI t0, zero, 4
  MULW t1, s9, t0
  ADD t0, s11, t1
  ADDI s11, zero, 32
  LW t4, 16(sp)
  MULW t1, t4, s11
  ADD s11, s0, t1
  ADDI t1, zero, 4
  MULW t2, s9, t1
  ADD t1, s11, t2
  FLW fs0, 0(t1)
  ADDI s11, zero, 1
  FCVT.S.W fs1, s11
  LA s11, .CONSTANT.7.1
  FLW fs2, 0(s11)
  FDIV.S fs3, fs1, fs2
  ADDI s11, zero, 32
  MULW t1, zero, s11
  ADD s11, s1, t1
  ADDI t1, zero, 4
  MULW t2, s10, t1
  ADD t1, s11, t2
  FLW fs1, 0(t1)
  FMUL.S fs2, fs3, fs1
  FADD.S fs1, fs0, fs2
  FSW fs1, 0(t0)
  ADDIW s11, s10, 1
  ADD s10, s11, zero
  JAL zero, bb10
bb12:
  ADD s11, s10, zero
  ADDI s10, zero, 1
  JAL zero, bb13
bb13:
  SLT t0, s10, s2
  XOR t1, t0, zero
  SLTU t0, zero, t1
  BNE t0, zero, bb14
  JAL zero, bb15
bb14:
  ADDI t4, zero, 1
  SW t4, 8(sp)
  JAL zero, bb16
bb15:
  ADDI s6, zero, 32
  LW t4, 16(sp)
  MULW t0, t4, s6
  ADD s6, s0, t0
  ADDI t0, zero, 4
  MULW t1, s9, t0
  ADD t0, s6, t1
  ADDI s6, zero, 32
  LW t4, 16(sp)
  MULW t1, t4, s6
  ADD s6, s0, t1
  ADDI t1, zero, 4
  MULW t2, s9, t1
  ADD t1, s6, t2
  FLW fs0, 0(t1)
  LA s6, .CONSTANT.7.1
  FLW fs1, 0(s6)
  FMUL.S fs2, fs0, fs1
  FCVT.S.W fs0, s2
  FDIV.S fs1, fs2, fs0
  LA s6, .CONSTANT.7.1
  FLW fs0, 0(s6)
  FMUL.S fs2, fs1, fs0
  FCVT.S.W fs0, s3
  FDIV.S fs1, fs2, fs0
  FSW fs1, 0(t0)
  ADDIW s6, s9, 1
  ADD s7, s11, zero
  ADD s8, s10, zero
  ADD s9, s6, zero
  JAL zero, bb4
bb16:
  LW t4, 8(sp)
  SLT t1, t4, s3
  XOR t2, t1, zero
  SLTU t1, zero, t2
  BNE t1, zero, bb17
  JAL zero, bb18
bb17:
  ADDI t1, zero, 32
  LW t4, 16(sp)
  MULW t2, t4, t1
  ADD t1, s0, t2
  ADDI t2, zero, 4
  MULW a4, s9, t2
  ADD t4, t1, a4
  SD t4, 0(sp)
  ADDI t1, zero, 32
  LW t4, 16(sp)
  MULW a4, t4, t1
  ADD t1, s0, a4
  ADDI a4, zero, 4
  MULW a5, s9, a4
  ADD a4, t1, a5
  FLW fs0, 0(a4)
  ADDI t1, zero, 32
  MULW a4, s10, t1
  ADD t1, s1, a4
  ADDI a4, zero, 4
  LW t4, 8(sp)
  MULW a5, t4, a4
  ADD a4, t1, a5
  FLW fs1, 0(a4)
  LA t1, PI
  FLW fs2, 0(t1)
  FCVT.S.W fs3, s2
  FDIV.S fs4, fs2, fs3
  LA t1, .CONSTANT.7.2
  FLW fs2, 0(t1)
  LA t1, .CONSTANT.7.1
  FLW fs3, 0(t1)
  FDIV.S fs5, fs2, fs3
  LW t4, 16(sp)
  FCVT.S.W fs2, t4
  FADD.S fs3, fs2, fs5
  FMUL.S fs2, fs4, fs3
  FCVT.S.W fs3, s10
  FMUL.S fs4, fs2, fs3
  FSGNJ.S fa0, fs4, fs4
  CALL my_cos
  FSGNJ.D fs2, fa0, fa0
  FMUL.S fs3, fs1, fs2
  LA s6, PI
  FLW fs1, 0(s6)
  FCVT.S.W fs2, s3
  FDIV.S fs4, fs1, fs2
  LA s6, .CONSTANT.7.2
  FLW fs1, 0(s6)
  LA s6, .CONSTANT.7.1
  FLW fs2, 0(s6)
  FDIV.S fs5, fs1, fs2
  FCVT.S.W fs1, s9
  FADD.S fs2, fs1, fs5
  FMUL.S fs1, fs4, fs2
  LW t4, 8(sp)
  FCVT.S.W fs2, t4
  FMUL.S fs4, fs1, fs2
  FSGNJ.S fa0, fs4, fs4
  CALL my_cos
  FSGNJ.D fs1, fa0, fa0
  FMUL.S fs2, fs3, fs1
  FADD.S fs1, fs0, fs2
  LD t4, 0(sp)
  FSW fs1, 0(t4)
  LW t4, 8(sp)
  ADDIW s6, t4, 1
  ADD t4, s6, zero
  SW t4, 8(sp)
  JAL zero, bb16
bb18:
  ADDIW s6, s10, 1
  LW t4, 8(sp)
  ADD s11, t4, zero
  ADD s10, s6, zero
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
  ADDI sp, sp, -176
  FSD fs5, 24(sp)
  SD s4, 32(sp)
  SD s3, 40(sp)
  SD s2, 48(sp)
  SD s1, 56(sp)
  FSD fs0, 64(sp)
  SD s7, 72(sp)
  FSD fs2, 80(sp)
  SD s5, 88(sp)
  SD s0, 96(sp)
  SD s8, 104(sp)
  FSD fs3, 112(sp)
  SD s9, 120(sp)
  FSD fs4, 128(sp)
  SD ra, 136(sp)
  SD s10, 144(sp)
  SD s11, 152(sp)
  SD s6, 160(sp)
  FSD fs1, 168(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  ADD s4, zero, zero
  ADD s5, zero, zero
  ADD t4, zero, zero
  SW t4, 16(sp)
  JAL zero, bb24
bb24:
  LW t4, 16(sp)
  SLT s7, t4, s2
  XOR s8, s7, zero
  SLTU s7, zero, s8
  BNE s7, zero, bb25
  JAL zero, bb26
bb25:
  ADD s7, s4, zero
  ADD s8, s5, zero
  ADD s9, zero, zero
  JAL zero, bb27
bb26:
  FLD fs5, 24(sp)
  LD s4, 32(sp)
  LD s3, 40(sp)
  LD s2, 48(sp)
  LD s1, 56(sp)
  FLD fs0, 64(sp)
  LD s7, 72(sp)
  FLD fs2, 80(sp)
  LD s5, 88(sp)
  LD s0, 96(sp)
  LD s8, 104(sp)
  FLD fs3, 112(sp)
  LD s9, 120(sp)
  FLD fs4, 128(sp)
  LD ra, 136(sp)
  LD s10, 144(sp)
  LD s11, 152(sp)
  LD s6, 160(sp)
  FLD fs1, 168(sp)
  ADDI sp, sp, 176
  JALR zero, 0(ra)
bb27:
  SLT s10, s9, s3
  XOR s11, s10, zero
  SLTU s10, zero, s11
  BNE s10, zero, bb28
  JAL zero, bb29
bb28:
  ADDI s10, zero, 32
  LW t4, 16(sp)
  MULW s11, t4, s10
  ADD s10, s0, s11
  ADDI s11, zero, 4
  MULW t0, s9, s11
  ADD s11, s10, t0
  FCVT.S.L fs0, zero
  FSW fs0, 0(s11)
  ADD s10, s7, zero
  ADD s11, zero, zero
  JAL zero, bb30
bb29:
  LW t4, 16(sp)
  ADDIW s6, t4, 1
  ADD s4, s7, zero
  ADD s5, s8, zero
  ADD t4, s6, zero
  SW t4, 16(sp)
  JAL zero, bb24
bb30:
  SLT t0, s11, s2
  XOR t1, t0, zero
  SLTU t0, zero, t1
  BNE t0, zero, bb31
  JAL zero, bb32
bb31:
  ADD t4, zero, zero
  SW t4, 8(sp)
  JAL zero, bb33
bb32:
  ADDIW s6, s9, 1
  ADD s7, s10, zero
  ADD s8, s11, zero
  ADD s9, s6, zero
  JAL zero, bb27
bb33:
  LW t4, 8(sp)
  SLT t1, t4, s3
  XOR t2, t1, zero
  SLTU t1, zero, t2
  BNE t1, zero, bb34
  JAL zero, bb35
bb34:
  ADDI t1, zero, 32
  LW t4, 16(sp)
  MULW t2, t4, t1
  ADD t1, s0, t2
  ADDI t2, zero, 4
  MULW a4, s9, t2
  ADD t4, t1, a4
  SD t4, 0(sp)
  ADDI t1, zero, 32
  LW t4, 16(sp)
  MULW a4, t4, t1
  ADD t1, s0, a4
  ADDI a4, zero, 4
  MULW a5, s9, a4
  ADD a4, t1, a5
  FLW fs0, 0(a4)
  ADDI t1, zero, 32
  MULW a4, s11, t1
  ADD t1, s1, a4
  ADDI a4, zero, 4
  LW t4, 8(sp)
  MULW a5, t4, a4
  ADD a4, t1, a5
  FLW fs1, 0(a4)
  LA t1, PI
  FLW fs2, 0(t1)
  FCVT.S.W fs3, s2
  FDIV.S fs4, fs2, fs3
  LA t1, .CONSTANT.7.2
  FLW fs2, 0(t1)
  LA t1, .CONSTANT.7.1
  FLW fs3, 0(t1)
  FDIV.S fs5, fs2, fs3
  FCVT.S.W fs2, s11
  FADD.S fs3, fs2, fs5
  FMUL.S fs2, fs4, fs3
  LW t4, 16(sp)
  FCVT.S.W fs3, t4
  FMUL.S fs4, fs2, fs3
  FSGNJ.S fa0, fs4, fs4
  CALL my_cos
  FSGNJ.D fs2, fa0, fa0
  FMUL.S fs3, fs1, fs2
  LA s6, PI
  FLW fs1, 0(s6)
  FCVT.S.W fs2, s3
  FDIV.S fs4, fs1, fs2
  LA s6, .CONSTANT.7.2
  FLW fs1, 0(s6)
  LA s6, .CONSTANT.7.1
  FLW fs2, 0(s6)
  FDIV.S fs5, fs1, fs2
  LW t4, 8(sp)
  FCVT.S.W fs1, t4
  FADD.S fs2, fs1, fs5
  FMUL.S fs1, fs4, fs2
  FCVT.S.W fs2, s9
  FMUL.S fs4, fs1, fs2
  FSGNJ.S fa0, fs4, fs4
  CALL my_cos
  FSGNJ.D fs1, fa0, fa0
  FMUL.S fs2, fs3, fs1
  FADD.S fs1, fs0, fs2
  LD t4, 0(sp)
  FSW fs1, 0(t4)
  LW t4, 8(sp)
  ADDIW s6, t4, 1
  ADD t4, s6, zero
  SW t4, 8(sp)
  JAL zero, bb33
bb35:
  ADDIW s6, s11, 1
  LW t4, 8(sp)
  ADD s10, t4, zero
  ADD s11, s6, zero
  JAL zero, bb30
my_sin:
  ADDI sp, sp, -80
  FSD fs4, 0(sp)
  SD ra, 8(sp)
  FSD fs3, 16(sp)
  SD s1, 24(sp)
  FSD fs2, 32(sp)
  FSD fs1, 40(sp)
  SD s0, 48(sp)
  SD s2, 56(sp)
  FSD fs0, 64(sp)
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
  BNE s0, zero, bb40
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
  LA s1, PI
  FLW fs1, 0(s1)
  FLT.S s1, fs1, fs2
  BNE s1, zero, bb42
  JAL zero, bb47
bb42:
  LA s1, TWO_PI
  FLW fs1, 0(s1)
  FSUB.S fs3, fs2, fs1
  FSGNJ.S fs1, fs3, fs3
  JAL zero, bb43
bb43:
  LA s1, PI
  FLW fs3, 0(s1)
  FSGNJN.S fs4, fs3, fs3
  FLT.S s1, fs1, fs4
  BNE s1, zero, bb44
  JAL zero, bb48
bb44:
  LA s1, TWO_PI
  FLW fs3, 0(s1)
  FADD.S fs4, fs1, fs3
  FSGNJ.S fs3, fs4, fs4
  JAL zero, bb45
bb45:
  FSGNJ.S fa0, fs3, fs3
  CALL my_sin_impl
  FSGNJ.D fs4, fa0, fa0
  FSGNJ.S fa0, fs4, fs4
  FLD fs4, 0(sp)
  LD ra, 8(sp)
  FLD fs3, 16(sp)
  LD s1, 24(sp)
  FLD fs2, 32(sp)
  FLD fs1, 40(sp)
  LD s0, 48(sp)
  LD s2, 56(sp)
  FLD fs0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb46:
  FSGNJ.S fs2, fs0, fs0
  JAL zero, bb41
bb47:
  FSGNJ.S fs1, fs2, fs2
  JAL zero, bb43
bb48:
  FSGNJ.S fs3, fs1, fs1
  JAL zero, bb45
write_mat:
  ADDI sp, sp, -80
  SD s7, 0(sp)
  SD ra, 8(sp)
  SD s0, 16(sp)
  SD s5, 24(sp)
  SD s1, 32(sp)
  SD s6, 40(sp)
  SD s2, 48(sp)
  SD s3, 56(sp)
  SD s4, 64(sp)
  FSD fs0, 72(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, zero, zero
  JAL zero, bb50
bb50:
  SLT s4, s3, s1
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb51
  JAL zero, bb52
bb51:
  ADDI s4, zero, 32
  MULW s5, s3, s4
  ADD s4, s0, s5
  ADDI s5, zero, 4
  MUL s6, zero, s5
  ADD s5, s4, s6
  FLW fs0, 0(s5)
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  ADDI s4, zero, 1
  JAL zero, bb53
bb52:
  ADDI a0, zero, 10
  CALL putch
  LD s7, 0(sp)
  LD ra, 8(sp)
  LD s0, 16(sp)
  LD s5, 24(sp)
  LD s1, 32(sp)
  LD s6, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  FLD fs0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb53:
  SLT s5, s4, s2
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb54
  JAL zero, bb55
bb54:
  ADDI a0, zero, 32
  CALL putch
  ADDI s5, zero, 32
  MULW s6, s3, s5
  ADD s5, s0, s6
  ADDI s6, zero, 4
  MULW s7, s4, s6
  ADD s6, s5, s7
  FLW fs0, 0(s6)
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  ADDIW s5, s4, 1
  ADD s4, s5, zero
  JAL zero, bb53
bb55:
  ADDI a0, zero, 10
  CALL putch
  ADDIW s4, s3, 1
  ADD s3, s4, zero
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
  ADDI sp, sp, -80
  SD s0, 0(sp)
  SD s5, 8(sp)
  FSD fs0, 16(sp)
  SD s1, 24(sp)
  SD s6, 32(sp)
  SD s2, 40(sp)
  SD s3, 48(sp)
  SD s4, 56(sp)
  SD ra, 64(sp)
  CALL getint
  ADD s0, a0, zero
  CALL getint
  ADD s1, a0, zero
  ADD s2, zero, zero
  JAL zero, bb58
bb58:
  SLT s3, s2, s0
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb59
  JAL zero, bb60
bb59:
  ADD s3, zero, zero
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
  LD s0, 0(sp)
  LD s5, 8(sp)
  FLD fs0, 16(sp)
  LD s1, 24(sp)
  LD s6, 32(sp)
  LD s2, 40(sp)
  LD s3, 48(sp)
  LD s4, 56(sp)
  LD ra, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb61:
  SLT s4, s3, s1
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb62
  JAL zero, bb63
bb62:
  ADDI s4, zero, 32
  MULW s5, s2, s4
  LA s4, test_block
  ADD s6, s4, s5
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s4, s6, s5
  CALL getfloat
  FSGNJ.D fs0, fa0, fa0
  FSW fs0, 0(s4)
  ADDIW s4, s3, 1
  ADD s3, s4, zero
  JAL zero, bb61
bb63:
  ADDIW s3, s2, 1
  ADD s2, s3, zero
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
