.global sample
.global trace
.global my_sin_impl
.global p
.global my_sqrt
.global circle_sdf
.global my_fabs
.global my_sin
.global rand
.global scene
.global my_cos
.global main
.global write_pgm
.section .bss


















.section .data
seed:
.word 0x00000000
MAX_DISTANCE:
.word 0x40000000
MAX_STEP:
.word 0x0000000a
EPSILON:
.word 0x358637bd
PI:
.word 0x40490fdb
TWO_PI:
.word 0x40c90fdb
N:
.word 0x00000018
RAND_MAX:
.word 0x05f5e106
H:
.word 0x000000c0
W:
.word 0x000000c0
.CONSTANT.7.0:
.word 0x00000000
.CONSTANT.7.1:
.word 0x40400000
.CONSTANT.7.2:
.word 0x3f000000
.CONSTANT.7.3:
.word 0x3ecccccd
.CONSTANT.7.4:
.word 0x3dcccccd
.CONSTANT.7.5:
.word 0x3f19999a
.CONSTANT.7.6:
.word 0x3d4ccccd
.CONSTANT.7.7:
.word 0x437f0000
.section .text
sample:
  ADDI sp, sp, -128
  SD ra, 48(sp)
  FSD fs0, 56(sp)
  SD s2, 64(sp)
  FSD fs1, 72(sp)
  SD s0, 80(sp)
  FSD fs2, 88(sp)
  SD s1, 96(sp)
  FSD fs3, 104(sp)
  FSD fs4, 112(sp)
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.D fs1, fa1, fa1
  FSW fs0, 40(sp)
  FSW fs1, 32(sp)
  LA s0, .CONSTANT.7.0
  FLW fs0, 0(s0)
  FSW fs0, 24(sp)
  ADDI s0, zero, 0
  SW s0, 16(sp)
  JAL zero, bb1
bb1:
  LW s0, 16(sp)
  LA s1, N
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb2
  JAL zero, bb3
bb2:
  CALL rand
  ADD s0, a0, zero
  FCVT.S.W fs0, s0
  FSW fs0, 8(sp)
  LA s0, TWO_PI
  FLW fs1, 0(s0)
  LW s0, 16(sp)
  LA s1, RAND_MAX
  LW s2, 0(s1)
  FCVT.S.W fs2, s2
  FDIV.S fs3, fs0, fs2
  FCVT.S.W fs0, s0
  FADD.S fs2, fs0, fs3
  FMUL.S fs0, fs1, fs2
  LA s0, N
  LW s1, 0(s0)
  FCVT.S.W fs1, s1
  FDIV.S fs2, fs0, fs1
  FSW fs2, 0(sp)
  FLW fs0, 24(sp)
  FLW fs1, 40(sp)
  FLW fs3, 32(sp)
  FSGNJ.S fa0, fs2, fs2
  CALL my_cos
  FSGNJ.D fs2, fa0, fa0
  FLW fs4, 0(sp)
  FSGNJ.S fa0, fs4, fs4
  CALL my_sin
  FSGNJ.D fs4, fa0, fa0
  FSGNJ.S fa0, fs1, fs1
  FSGNJ.S fa1, fs3, fs3
  FSGNJ.S fa2, fs2, fs2
  FSGNJ.S fa3, fs4, fs4
  CALL trace
  FSGNJ.D fs1, fa0, fa0
  FADD.S fs2, fs0, fs1
  FSW fs2, 24(sp)
  LW s0, 16(sp)
  ADDIW s1, s0, 1
  SW s1, 16(sp)
  JAL zero, bb1
bb3:
  FLW fs0, 24(sp)
  LA s0, N
  LW s1, 0(s0)
  FCVT.S.W fs1, s1
  FDIV.S fs2, fs0, fs1
  FSGNJ.S fa0, fs2, fs2
  LD ra, 48(sp)
  FLD fs0, 56(sp)
  LD s2, 64(sp)
  FLD fs1, 72(sp)
  LD s0, 80(sp)
  FLD fs2, 88(sp)
  LD s1, 96(sp)
  FLD fs3, 104(sp)
  FLD fs4, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
trace:
  ADDI sp, sp, -144
  SD ra, 64(sp)
  FSD fs0, 72(sp)
  FSD fs1, 80(sp)
  FSD fs2, 88(sp)
  FSD fs3, 96(sp)
  SD s2, 104(sp)
  SD s0, 112(sp)
  SD s1, 120(sp)
  FSD fs4, 128(sp)
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.D fs1, fa1, fa1
  FSGNJ.D fs2, fa2, fa2
  FSGNJ.D fs3, fa3, fa3
  FSW fs0, 56(sp)
  FSW fs1, 48(sp)
  FSW fs2, 40(sp)
  FSW fs3, 32(sp)
  LA s0, .CONSTANT.7.0
  FLW fs0, 0(s0)
  FSW fs0, 24(sp)
  ADDI s0, zero, 0
  SW s0, 16(sp)
  JAL zero, bb5
bb5:
  LW s0, 16(sp)
  LA s1, MAX_STEP
  LW s2, 0(s1)
  SLT s1, s0, s2
  BNE s1, zero, bb8
  JAL zero, bb9
bb6:
  FLW fs0, 56(sp)
  FLW fs1, 40(sp)
  FLW fs2, 24(sp)
  FMUL.S fs3, fs1, fs2
  FADD.S fs1, fs0, fs3
  FLW fs0, 48(sp)
  FLW fs2, 32(sp)
  FLW fs3, 24(sp)
  FMUL.S fs4, fs2, fs3
  FADD.S fs2, fs0, fs4
  FSGNJ.S fa0, fs1, fs1
  FSGNJ.S fa1, fs2, fs2
  ADDI a0, sp, 0
  ADD a0, a0, zero
  CALL scene
  ADDI s0, zero, 4
  MULW s1, s0, zero
  ADDI t5, sp, 0
  ADD s0, t5, s1
  FLW fs0, 0(s0)
  LA s0, EPSILON
  FLW fs1, 0(s0)
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb11
  JAL zero, bb12
bb7:
  LA s0, .CONSTANT.7.0
  FLW fs0, 0(s0)
  LA s0, .CONSTANT.7.0
  FLW fs1, 0(s0)
  FSGNJ.S fa0, fs0, fs1
  LD ra, 64(sp)
  FLD fs0, 72(sp)
  FLD fs1, 80(sp)
  FLD fs2, 88(sp)
  FLD fs3, 96(sp)
  LD s2, 104(sp)
  LD s0, 112(sp)
  LD s1, 120(sp)
  FLD fs4, 128(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb8:
  FLW fs0, 24(sp)
  LA s0, MAX_DISTANCE
  FLW fs1, 0(s0)
  FLT.S s0, fs0, fs1
  SB s0, 8(sp)
  JAL zero, bb10
bb9:
  SB zero, 8(sp)
  JAL zero, bb10
bb10:
  LB s0, 8(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb6
  JAL zero, bb7
bb11:
  ADDI s0, zero, 4
  ADDI s1, zero, 1
  MULW s2, s0, s1
  ADDI t6, sp, 0
  ADD s0, t6, s2
  FLW fs0, 0(s0)
  FSGNJ.S fa0, fs0, fs0
  LD ra, 64(sp)
  FLD fs0, 72(sp)
  FLD fs1, 80(sp)
  FLD fs2, 88(sp)
  FLD fs3, 96(sp)
  LD s2, 104(sp)
  LD s0, 112(sp)
  LD s1, 120(sp)
  FLD fs4, 128(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb12:
  FLW fs0, 24(sp)
  ADDI s0, zero, 4
  MULW s1, zero, s0
  ADDI t5, sp, 0
  ADD s0, t5, s1
  FLW fs1, 0(s0)
  FADD.S fs2, fs0, fs1
  FSW fs2, 24(sp)
  LW s0, 16(sp)
  ADDIW s1, s0, 1
  SW s1, 16(sp)
  JAL zero, bb5
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
  BNE s0, zero, bb14
  JAL zero, bb15
bb14:
  FLW fs0, 0(sp)
  FSGNJ.S fa0, fs0, fs0
  LD ra, 8(sp)
  FLD fs2, 16(sp)
  FLD fs1, 24(sp)
  LD s0, 32(sp)
  FLD fs0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb15:
  FLW fs0, 0(sp)
  LA s0, .CONSTANT.7.1
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
my_sqrt:
  ADDI sp, sp, -96
  SD s1, 24(sp)
  FSD fs4, 32(sp)
  SD ra, 40(sp)
  FSD fs3, 48(sp)
  FSD fs1, 56(sp)
  FSD fs2, 64(sp)
  SD s0, 72(sp)
  SD s2, 80(sp)
  FSD fs0, 88(sp)
  FSGNJ.D fs0, fa0, fa0
  FSW fs0, 16(sp)
  ADDI s0, zero, 8
  FCVT.S.W fs1, s0
  FDIV.S fs2, fs0, fs1
  LA s0, .CONSTANT.7.2
  FLW fs1, 0(s0)
  FADD.S fs3, fs2, fs1
  ADDI s0, zero, 2
  FCVT.S.W fs1, s0
  FMUL.S fs2, fs1, fs0
  ADDI s0, zero, 4
  FCVT.S.W fs1, s0
  FADD.S fs4, fs1, fs0
  FDIV.S fs0, fs2, fs4
  FADD.S fs1, fs3, fs0
  FSW fs1, 8(sp)
  ADDI s0, zero, 10
  SW s0, 0(sp)
  JAL zero, bb18
bb18:
  LW s0, 0(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb19
  JAL zero, bb20
bb19:
  FLW fs0, 8(sp)
  FLW fs1, 16(sp)
  FLW fs2, 8(sp)
  FDIV.S fs3, fs1, fs2
  FADD.S fs1, fs0, fs3
  ADDI s0, zero, 2
  FCVT.S.W fs0, s0
  FDIV.S fs2, fs1, fs0
  FSW fs2, 8(sp)
  LW s0, 0(sp)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  SW s2, 0(sp)
  JAL zero, bb18
bb20:
  FLW fs0, 8(sp)
  FSGNJ.S fa0, fs0, fs0
  LD s1, 24(sp)
  FLD fs4, 32(sp)
  LD ra, 40(sp)
  FLD fs3, 48(sp)
  FLD fs1, 56(sp)
  FLD fs2, 64(sp)
  LD s0, 72(sp)
  LD s2, 80(sp)
  FLD fs0, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
circle_sdf:
  ADDI sp, sp, -112
  FSD fs4, 56(sp)
  SD ra, 64(sp)
  FSD fs3, 72(sp)
  FSD fs2, 80(sp)
  FSD fs1, 88(sp)
  FSD fs0, 96(sp)
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.D fs1, fa1, fa1
  FSGNJ.D fs2, fa2, fa2
  FSGNJ.D fs3, fa3, fa3
  FSGNJ.D fs4, fa4, fa4
  FSW fs0, 48(sp)
  FSW fs1, 40(sp)
  FSW fs2, 32(sp)
  FSW fs3, 24(sp)
  FSW fs4, 16(sp)
  FLW fs0, 48(sp)
  FLW fs1, 32(sp)
  FSUB.S fs2, fs0, fs1
  FSW fs2, 8(sp)
  FLW fs0, 40(sp)
  FLW fs1, 24(sp)
  FSUB.S fs2, fs0, fs1
  FSW fs2, 0(sp)
  FLW fs0, 8(sp)
  FLW fs1, 8(sp)
  FMUL.S fs3, fs0, fs1
  FMUL.S fs0, fs2, fs2
  FADD.S fs1, fs3, fs0
  FSGNJ.S fa0, fs1, fs1
  CALL my_sqrt
  FSGNJ.D fs0, fa0, fa0
  FLW fs1, 16(sp)
  FSUB.S fs2, fs0, fs1
  FSGNJ.S fa0, fs2, fs2
  FLD fs4, 56(sp)
  LD ra, 64(sp)
  FLD fs3, 72(sp)
  FLD fs2, 80(sp)
  FLD fs1, 88(sp)
  FLD fs0, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
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
  BNE s0, zero, bb23
  JAL zero, bb24
bb23:
  FLW fs0, 0(sp)
  FSGNJ.S fa0, fs0, fs0
  LD ra, 8(sp)
  LD s0, 16(sp)
  FLD fs1, 24(sp)
  FLD fs0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb24:
  FLW fs0, 0(sp)
  FSGNJN.S fs1, fs0, fs0
  FSGNJ.S fa0, fs1, fs1
  LD ra, 8(sp)
  LD s0, 16(sp)
  FLD fs1, 24(sp)
  FLD fs0, 32(sp)
  ADDI sp, sp, 48
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
  BNE s0, zero, bb26
  JAL zero, bb27
bb26:
  ADDI s0, zero, 1
  SB s0, 8(sp)
  JAL zero, bb28
bb27:
  FLW fs0, 16(sp)
  LA s0, TWO_PI
  FLW fs1, 0(s0)
  FSGNJN.S fs2, fs1, fs1
  FLT.S s0, fs0, fs2
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 8(sp)
  JAL zero, bb28
bb28:
  LB s0, 8(sp)
  BNE s0, zero, bb29
  JAL zero, bb30
bb29:
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
  JAL zero, bb30
bb30:
  FLW fs0, 16(sp)
  LA s0, PI
  FLW fs1, 0(s0)
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb31
  JAL zero, bb32
bb31:
  FLW fs0, 16(sp)
  LA s0, TWO_PI
  FLW fs1, 0(s0)
  FSUB.S fs2, fs0, fs1
  FSW fs2, 16(sp)
  JAL zero, bb32
bb32:
  FLW fs0, 16(sp)
  LA s0, PI
  FLW fs1, 0(s0)
  FSGNJN.S fs2, fs1, fs1
  FLT.S s0, fs0, fs2
  BNE s0, zero, bb33
  JAL zero, bb34
bb33:
  FLW fs0, 16(sp)
  LA s0, TWO_PI
  FLW fs1, 0(s0)
  FADD.S fs2, fs0, fs1
  FSW fs2, 16(sp)
  JAL zero, bb34
bb34:
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
rand:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  LA s0, seed
  LW s1, 0(s0)
  LUI s0, 4878
  ADDI s0, s0, -158
  MULW s2, s1, s0
  LUI s0, 6
  ADDI s0, s0, -1243
  ADDW s1, s2, s0
  LUI s0, 24414
  ADDI s0, s0, 263
  REMW s2, s1, s0
  LA s0, seed
  SW s2, 0(s0)
  SLT s0, s2, zero
  BNE s0, zero, bb36
  JAL zero, bb37
bb36:
  LA s0, seed
  LW s1, 0(s0)
  LUI s0, 24414
  ADDI s0, s0, 263
  ADDW s2, s1, s0
  LA s0, seed
  SW s2, 0(s0)
  JAL zero, bb37
bb37:
  LA s0, seed
  LW s1, 0(s0)
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
scene:
  ADDI sp, sp, -96
  SD ra, 32(sp)
  FSD fs0, 40(sp)
  FSD fs1, 48(sp)
  SD s0, 56(sp)
  SD s2, 64(sp)
  SD s1, 72(sp)
  SD s3, 80(sp)
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.D fs1, fa1, fa1
  ADD s0, a0, zero
  FSW fs0, 24(sp)
  FSW fs1, 16(sp)
  FLW fs0, 24(sp)
  FSGNJ.S fa0, fs0, fs0
  FSGNJ.S fa1, fs1, fs1
  LA s1, .CONSTANT.7.3
  FLW fs0, 0(s1)
  LA s1, .CONSTANT.7.3
  FLW fs1, 0(s1)
  FSGNJ.S fa2, fs0, fs1
  LA s1, .CONSTANT.7.3
  FLW fs0, 0(s1)
  LA s1, .CONSTANT.7.3
  FLW fs1, 0(s1)
  FSGNJ.S fa3, fs0, fs1
  LA s1, .CONSTANT.7.4
  FLW fs0, 0(s1)
  LA s1, .CONSTANT.7.4
  FLW fs1, 0(s1)
  FSGNJ.S fa4, fs0, fs1
  CALL circle_sdf
  FSGNJ.D fs0, fa0, fa0
  FSW fs0, 8(sp)
  FLW fs0, 24(sp)
  FLW fs1, 16(sp)
  FSGNJ.S fa0, fs0, fs0
  FSGNJ.S fa1, fs1, fs1
  LA s1, .CONSTANT.7.5
  FLW fs0, 0(s1)
  LA s1, .CONSTANT.7.5
  FLW fs1, 0(s1)
  FSGNJ.S fa2, fs0, fs1
  LA s1, .CONSTANT.7.5
  FLW fs0, 0(s1)
  LA s1, .CONSTANT.7.5
  FLW fs1, 0(s1)
  FSGNJ.S fa3, fs0, fs1
  LA s1, .CONSTANT.7.6
  FLW fs0, 0(s1)
  LA s1, .CONSTANT.7.6
  FLW fs1, 0(s1)
  FSGNJ.S fa4, fs0, fs1
  CALL circle_sdf
  FSGNJ.D fs0, fa0, fa0
  FSW fs0, 0(sp)
  FLW fs1, 8(sp)
  FLT.S s1, fs1, fs0
  BNE s1, zero, bb39
  JAL zero, bb41
bb39:
  ADDI s1, zero, 4
  MUL s2, zero, s1
  ADD s1, s0, s2
  FLW fs0, 8(sp)
  FSW fs0, 0(s1)
  ADDI s1, zero, 4
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADD s1, s0, s3
  LA s2, .CONSTANT.7.1
  FLW fs0, 0(s2)
  FSW fs0, 0(s1)
  JAL zero, bb40
bb40:
  LD ra, 32(sp)
  FLD fs0, 40(sp)
  FLD fs1, 48(sp)
  LD s0, 56(sp)
  LD s2, 64(sp)
  LD s1, 72(sp)
  LD s3, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb41:
  ADDI s1, zero, 4
  MUL s2, zero, s1
  ADD s1, s0, s2
  FLW fs0, 0(sp)
  FSW fs0, 0(s1)
  ADDI s1, zero, 4
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADD s1, s0, s3
  LA s0, .CONSTANT.7.0
  FLW fs0, 0(s0)
  FSW fs0, 0(s1)
  JAL zero, bb40
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
  ADDI sp, sp, -16
  SD ra, 0(sp)
  CALL write_pgm
  ADD a0, zero, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
write_pgm:
  ADDI sp, sp, -112
  FSD fs1, 40(sp)
  FSD fs0, 48(sp)
  FSD fs3, 56(sp)
  SD ra, 64(sp)
  SD s2, 72(sp)
  SD s1, 80(sp)
  SD s0, 88(sp)
  FSD fs2, 96(sp)
  ADDI a0, zero, 80
  CALL putch
  ADDI a0, zero, 50
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  LA s0, W
  LW s1, 0(s0)
  ADD a0, s1, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LA s0, H
  LW s1, 0(s0)
  ADD a0, s1, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDI a0, zero, 255
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  SW zero, 32(sp)
  JAL zero, bb45
bb45:
  LW s0, 32(sp)
  LA s1, H
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb46
  JAL zero, bb47
bb46:
  SW zero, 24(sp)
  JAL zero, bb48
bb47:
  FLD fs1, 40(sp)
  FLD fs0, 48(sp)
  FLD fs3, 56(sp)
  LD ra, 64(sp)
  LD s2, 72(sp)
  LD s1, 80(sp)
  LD s0, 88(sp)
  FLD fs2, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb48:
  LW s0, 24(sp)
  LA s1, W
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb49
  JAL zero, bb50
bb49:
  LW s0, 24(sp)
  FCVT.S.W fs0, s0
  FSW fs0, 16(sp)
  LW s0, 32(sp)
  FCVT.S.W fs0, s0
  FSW fs0, 8(sp)
  FLW fs1, 16(sp)
  LA s0, W
  LW s1, 0(s0)
  FCVT.S.W fs2, s1
  FDIV.S fs3, fs1, fs2
  LA s0, H
  LW s1, 0(s0)
  FCVT.S.W fs1, s1
  FDIV.S fs2, fs0, fs1
  FSGNJ.S fa0, fs3, fs3
  FSGNJ.S fa1, fs2, fs2
  CALL sample
  FSGNJ.D fs0, fa0, fa0
  LA s0, .CONSTANT.7.7
  FLW fs1, 0(s0)
  FMUL.S fs2, fs0, fs1
  FCVT.W.S s0, fs2, rtz
  SW s0, 0(sp)
  ADDI s1, zero, 255
  SLT s2, s1, s0
  BNE s2, zero, bb51
  JAL zero, bb52
bb50:
  ADDI a0, zero, 10
  CALL putch
  LW s0, 32(sp)
  ADDIW s1, s0, 1
  SW s1, 32(sp)
  JAL zero, bb45
bb51:
  ADDI s0, zero, 255
  SW s0, 0(sp)
  JAL zero, bb52
bb52:
  LW s0, 0(sp)
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LW s0, 24(sp)
  ADDIW s1, s0, 1
  SW s1, 24(sp)
  JAL zero, bb48
