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
  ADDI sp, sp, -112
  SD ra, 0(sp)
  FSD fs7, 8(sp)
  FSD fs6, 16(sp)
  FSD fs5, 24(sp)
  FSD fs0, 32(sp)
  SD s2, 40(sp)
  FSD fs1, 48(sp)
  SD s3, 56(sp)
  SD s0, 64(sp)
  FSD fs2, 72(sp)
  SD s1, 80(sp)
  FSD fs3, 88(sp)
  FSD fs4, 96(sp)
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.D fs1, fa1, fa1
  ADD s0, zero, zero
  LA s1, .CONSTANT.7.0
  FLW fs2, 0(s1)
  LA s1, .CONSTANT.7.0
  FLW fs3, 0(s1)
  FSGNJ.S fs4, fs2, fs3
  JAL zero, bb1
bb1:
  FSGNJ.S fs2, fs4, fs4
  ADD s1, s0, zero
  LA s2, N
  LW s3, 0(s2)
  SLT s2, s1, s3
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb2
  JAL zero, bb3
bb2:
  CALL rand
  ADD s2, a0, zero
  FCVT.S.W fs3, s2
  LA s2, TWO_PI
  FLW fs5, 0(s2)
  LA s2, RAND_MAX
  LW s3, 0(s2)
  FCVT.S.W fs6, s3
  FDIV.S fs7, fs3, fs6
  FCVT.S.W fs3, s1
  FADD.S fs6, fs3, fs7
  FMUL.S fs3, fs5, fs6
  LA s2, N
  LW s3, 0(s2)
  FCVT.S.W fs5, s3
  FDIV.S fs6, fs3, fs5
  FSGNJ.S fa0, fs6, fs6
  CALL my_cos
  FSGNJ.D fs3, fa0, fa0
  FSGNJ.S fa0, fs6, fs6
  CALL my_sin
  FSGNJ.D fs5, fa0, fa0
  FSGNJ.S fa0, fs0, fs0
  FSGNJ.S fa1, fs1, fs1
  FSGNJ.S fa2, fs3, fs3
  FSGNJ.S fa3, fs5, fs5
  CALL trace
  FSGNJ.D fs3, fa0, fa0
  FADD.S fs5, fs2, fs3
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  FSGNJ.S fs4, fs5, fs5
  JAL zero, bb1
bb3:
  LA s0, N
  LW s1, 0(s0)
  FCVT.S.W fs0, s1
  FDIV.S fs1, fs2, fs0
  FSGNJ.S fa0, fs1, fs1
  LD ra, 0(sp)
  FLD fs7, 8(sp)
  FLD fs6, 16(sp)
  FLD fs5, 24(sp)
  FLD fs0, 32(sp)
  LD s2, 40(sp)
  FLD fs1, 48(sp)
  LD s3, 56(sp)
  LD s0, 64(sp)
  FLD fs2, 72(sp)
  LD s1, 80(sp)
  FLD fs3, 88(sp)
  FLD fs4, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
trace:
  ADDI sp, sp, -144
  SD s5, 8(sp)
  SD ra, 16(sp)
  SD s4, 24(sp)
  FSD fs7, 32(sp)
  SD s3, 40(sp)
  FSD fs6, 48(sp)
  FSD fs0, 56(sp)
  FSD fs5, 64(sp)
  FSD fs1, 72(sp)
  FSD fs2, 80(sp)
  FSD fs8, 88(sp)
  FSD fs3, 96(sp)
  SD s2, 104(sp)
  SD s0, 112(sp)
  SD s1, 120(sp)
  FSD fs4, 128(sp)
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.D fs1, fa1, fa1
  FSGNJ.D fs2, fa2, fa2
  FSGNJ.D fs3, fa3, fa3
  ADD s0, zero, zero
  LA s1, .CONSTANT.7.0
  FLW fs4, 0(s1)
  LA s1, .CONSTANT.7.0
  FLW fs5, 0(s1)
  FSGNJ.S fs6, fs4, fs5
  JAL zero, bb5
bb5:
  FSGNJ.S fs4, fs6, fs6
  ADD s1, s0, zero
  LA s2, MAX_STEP
  LW s3, 0(s2)
  SLT s2, s1, s3
  BNE s2, zero, bb8
  JAL zero, bb9
bb6:
  FMUL.S fs5, fs2, fs4
  FADD.S fs7, fs0, fs5
  FMUL.S fs5, fs3, fs4
  FADD.S fs8, fs1, fs5
  FSGNJ.S fa0, fs7, fs7
  FSGNJ.S fa1, fs8, fs8
  ADDI a0, sp, 0
  ADD a0, a0, zero
  CALL scene
  ADDI s2, zero, 4
  MUL s4, zero, s2
  ADDI t5, sp, 0
  ADD s2, t5, s4
  FLW fs5, 0(s2)
  LA s2, EPSILON
  FLW fs7, 0(s2)
  FLT.S s2, fs5, fs7
  BNE s2, zero, bb11
  JAL zero, bb12
bb7:
  LA s0, .CONSTANT.7.0
  FLW fs5, 0(s0)
  LA s0, .CONSTANT.7.0
  FLW fs6, 0(s0)
  FSGNJ.S fa0, fs5, fs6
  LD s5, 8(sp)
  LD ra, 16(sp)
  LD s4, 24(sp)
  FLD fs7, 32(sp)
  LD s3, 40(sp)
  FLD fs6, 48(sp)
  FLD fs0, 56(sp)
  FLD fs5, 64(sp)
  FLD fs1, 72(sp)
  FLD fs2, 80(sp)
  FLD fs8, 88(sp)
  FLD fs3, 96(sp)
  LD s2, 104(sp)
  LD s0, 112(sp)
  LD s1, 120(sp)
  FLD fs4, 128(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb8:
  LA s2, MAX_DISTANCE
  FLW fs5, 0(s2)
  FLT.S s2, fs4, fs5
  ADD s3, s2, zero
  JAL zero, bb10
bb9:
  ADD s3, zero, zero
  JAL zero, bb10
bb10:
  ADD s2, s3, zero
  XOR s4, s2, zero
  SLTU s2, zero, s4
  BNE s2, zero, bb6
  JAL zero, bb7
bb11:
  ADDI s2, zero, 4
  ADDI s4, zero, 1
  MULW s5, s2, s4
  ADDI t6, sp, 0
  ADD s2, t6, s5
  FLW fs5, 0(s2)
  FSGNJ.S fa0, fs5, fs5
  LD s5, 8(sp)
  LD ra, 16(sp)
  LD s4, 24(sp)
  FLD fs7, 32(sp)
  LD s3, 40(sp)
  FLD fs6, 48(sp)
  FLD fs0, 56(sp)
  FLD fs5, 64(sp)
  FLD fs1, 72(sp)
  FLD fs2, 80(sp)
  FLD fs8, 88(sp)
  FLD fs3, 96(sp)
  LD s2, 104(sp)
  LD s0, 112(sp)
  LD s1, 120(sp)
  FLD fs4, 128(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb12:
  ADDI s2, zero, 4
  MUL s4, zero, s2
  ADDI t5, sp, 0
  ADD s2, t5, s4
  FLW fs5, 0(s2)
  FADD.S fs7, fs4, fs5
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  FSGNJ.S fs6, fs7, fs7
  JAL zero, bb5
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
  BNE s0, zero, bb14
  JAL zero, bb15
bb14:
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  FLD fs2, 8(sp)
  LD s0, 16(sp)
  FLD fs1, 24(sp)
  FLD fs0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb15:
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
my_sqrt:
  ADDI sp, sp, -96
  SD s3, 0(sp)
  SD s1, 8(sp)
  FSD fs4, 16(sp)
  SD ra, 24(sp)
  FSD fs3, 32(sp)
  FSD fs1, 40(sp)
  FSD fs2, 48(sp)
  SD s0, 56(sp)
  SD s2, 64(sp)
  FSD fs5, 72(sp)
  FSD fs0, 80(sp)
  FSGNJ.D fs0, fa0, fa0
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
  FDIV.S fs1, fs2, fs4
  FADD.S fs2, fs3, fs1
  ADDI s0, zero, 10
  FSGNJ.S fs1, fs2, fs2
  JAL zero, bb18
bb18:
  FSGNJ.S fs2, fs1, fs1
  ADD s1, s0, zero
  XOR s2, s1, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb19
  JAL zero, bb20
bb19:
  FDIV.S fs3, fs0, fs2
  FADD.S fs4, fs2, fs3
  ADDI s2, zero, 2
  FCVT.S.W fs3, s2
  FDIV.S fs5, fs4, fs3
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  ADD s0, s3, zero
  FSGNJ.S fs1, fs5, fs5
  JAL zero, bb18
bb20:
  FSGNJ.S fa0, fs2, fs2
  LD s3, 0(sp)
  LD s1, 8(sp)
  FLD fs4, 16(sp)
  LD ra, 24(sp)
  FLD fs3, 32(sp)
  FLD fs1, 40(sp)
  FLD fs2, 48(sp)
  LD s0, 56(sp)
  LD s2, 64(sp)
  FLD fs5, 72(sp)
  FLD fs0, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
circle_sdf:
  ADDI sp, sp, -64
  FSD fs4, 0(sp)
  SD ra, 8(sp)
  FSD fs3, 16(sp)
  FSD fs2, 24(sp)
  FSD fs1, 32(sp)
  FSD fs5, 40(sp)
  FSD fs0, 48(sp)
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.D fs1, fa1, fa1
  FSGNJ.D fs2, fa2, fa2
  FSGNJ.D fs3, fa3, fa3
  FSGNJ.D fs4, fa4, fa4
  FSUB.S fs5, fs0, fs2
  FSUB.S fs0, fs1, fs3
  FMUL.S fs1, fs5, fs5
  FMUL.S fs2, fs0, fs0
  FADD.S fs0, fs1, fs2
  FSGNJ.S fa0, fs0, fs0
  CALL my_sqrt
  FSGNJ.D fs0, fa0, fa0
  FSUB.S fs1, fs0, fs4
  FSGNJ.S fa0, fs1, fs1
  FLD fs4, 0(sp)
  LD ra, 8(sp)
  FLD fs3, 16(sp)
  FLD fs2, 24(sp)
  FLD fs1, 32(sp)
  FLD fs5, 40(sp)
  FLD fs0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
my_fabs:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs1, 16(sp)
  FSD fs0, 24(sp)
  FSGNJ.D fs0, fa0, fa0
  FCVT.S.L fs1, zero
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb23
  JAL zero, bb24
bb23:
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs1, 16(sp)
  FLD fs0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb24:
  FSGNJN.S fs1, fs0, fs0
  FSGNJ.S fa0, fs1, fs1
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs1, 16(sp)
  FLD fs0, 24(sp)
  ADDI sp, sp, 32
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
  BNE s0, zero, bb26
  JAL zero, bb27
bb26:
  ADDI s0, zero, 1
  JAL zero, bb28
bb27:
  LA s1, TWO_PI
  FLW fs1, 0(s1)
  FSGNJN.S fs2, fs1, fs1
  FLT.S s1, fs0, fs2
  XOR s2, s1, zero
  SLTU s1, zero, s2
  ADD s0, s1, zero
  JAL zero, bb28
bb28:
  ADD s1, s0, zero
  BNE s1, zero, bb29
  JAL zero, bb35
bb29:
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
  JAL zero, bb30
bb30:
  FSGNJ.S fs1, fs2, fs2
  LA s1, PI
  FLW fs3, 0(s1)
  FLT.S s1, fs3, fs1
  BNE s1, zero, bb31
  JAL zero, bb36
bb31:
  LA s1, TWO_PI
  FLW fs3, 0(s1)
  FSUB.S fs4, fs1, fs3
  FSGNJ.S fs3, fs4, fs4
  JAL zero, bb32
bb32:
  FSGNJ.S fs4, fs3, fs3
  LA s1, PI
  FLW fs5, 0(s1)
  FSGNJN.S fs6, fs5, fs5
  FLT.S s1, fs4, fs6
  BNE s1, zero, bb33
  JAL zero, bb37
bb33:
  LA s1, TWO_PI
  FLW fs5, 0(s1)
  FADD.S fs6, fs4, fs5
  FSGNJ.S fs5, fs6, fs6
  JAL zero, bb34
bb34:
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
bb35:
  FSGNJ.S fs2, fs0, fs0
  JAL zero, bb30
bb36:
  FSGNJ.S fs3, fs1, fs1
  JAL zero, bb32
bb37:
  FSGNJ.S fs5, fs4, fs4
  JAL zero, bb34
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
  BNE s0, zero, bb39
  JAL zero, bb40
bb39:
  LA s0, seed
  LW s1, 0(s0)
  LUI s0, 24414
  ADDI s0, s0, 263
  ADDW s2, s1, s0
  LA s0, seed
  SW s2, 0(s0)
  JAL zero, bb40
bb40:
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
  ADDI sp, sp, -80
  SD ra, 0(sp)
  FSD fs0, 8(sp)
  FSD fs1, 16(sp)
  SD s0, 24(sp)
  SD s2, 32(sp)
  FSD fs2, 40(sp)
  SD s1, 48(sp)
  SD s3, 56(sp)
  FSD fs3, 64(sp)
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.D fs1, fa1, fa1
  ADD s0, a0, zero
  FSGNJ.S fa0, fs0, fs0
  FSGNJ.S fa1, fs1, fs1
  LA s1, .CONSTANT.7.3
  FLW fs2, 0(s1)
  LA s1, .CONSTANT.7.3
  FLW fs3, 0(s1)
  FSGNJ.S fa2, fs2, fs3
  LA s1, .CONSTANT.7.3
  FLW fs2, 0(s1)
  LA s1, .CONSTANT.7.3
  FLW fs3, 0(s1)
  FSGNJ.S fa3, fs2, fs3
  LA s1, .CONSTANT.7.4
  FLW fs2, 0(s1)
  LA s1, .CONSTANT.7.4
  FLW fs3, 0(s1)
  FSGNJ.S fa4, fs2, fs3
  CALL circle_sdf
  FSGNJ.D fs2, fa0, fa0
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
  FLT.S s1, fs2, fs0
  BNE s1, zero, bb42
  JAL zero, bb44
bb42:
  ADDI s1, zero, 4
  MUL s2, zero, s1
  ADD s1, s0, s2
  FSW fs2, 0(s1)
  ADDI s1, zero, 4
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADD s1, s0, s3
  LA s2, .CONSTANT.7.1
  FLW fs1, 0(s2)
  FSW fs1, 0(s1)
  JAL zero, bb43
bb43:
  LD ra, 0(sp)
  FLD fs0, 8(sp)
  FLD fs1, 16(sp)
  LD s0, 24(sp)
  LD s2, 32(sp)
  FLD fs2, 40(sp)
  LD s1, 48(sp)
  LD s3, 56(sp)
  FLD fs3, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb44:
  ADDI s1, zero, 4
  MUL s2, zero, s1
  ADD s1, s0, s2
  FSW fs0, 0(s1)
  ADDI s1, zero, 4
  ADDI s2, zero, 1
  MULW s3, s1, s2
  ADD s1, s0, s3
  LA s0, .CONSTANT.7.0
  FLW fs0, 0(s0)
  FSW fs0, 0(s1)
  JAL zero, bb43
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
  ADDI sp, sp, -16
  SD ra, 0(sp)
  CALL write_pgm
  ADD a0, zero, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
write_pgm:
  ADDI sp, sp, -192
  FSD fs10, 0(sp)
  FSD fs7, 8(sp)
  FSD fs6, 16(sp)
  SD s6, 24(sp)
  SD s10, 32(sp)
  FSD fs5, 40(sp)
  FSD fs9, 48(sp)
  SD ra, 56(sp)
  SD s9, 64(sp)
  FSD fs4, 72(sp)
  FSD fs8, 80(sp)
  SD s7, 88(sp)
  FSD fs2, 96(sp)
  SD s0, 104(sp)
  SD s5, 112(sp)
  SD s1, 120(sp)
  FSD fs0, 128(sp)
  SD s2, 136(sp)
  FSD fs1, 144(sp)
  SD s8, 152(sp)
  FSD fs3, 160(sp)
  SD s3, 168(sp)
  SD s4, 176(sp)
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
  ADD s0, zero, zero
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.D fs1, fa0, fa0
  ADD s1, zero, zero
  JAL zero, bb48
bb48:
  ADD s2, s1, zero
  FSGNJ.S fs2, fs1, fs1
  FSGNJ.S fs3, fs0, fs0
  ADD s3, s0, zero
  LA s4, H
  LW s5, 0(s4)
  SLT s4, s2, s5
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb49
  JAL zero, bb50
bb49:
  ADD s4, s3, zero
  FSGNJ.S fs4, fs3, fs3
  FSGNJ.S fs3, fs2, fs2
  ADD s3, zero, zero
  JAL zero, bb51
bb50:
  FLD fs10, 0(sp)
  FLD fs7, 8(sp)
  FLD fs6, 16(sp)
  LD s6, 24(sp)
  LD s10, 32(sp)
  FLD fs5, 40(sp)
  FLD fs9, 48(sp)
  LD ra, 56(sp)
  LD s9, 64(sp)
  FLD fs4, 72(sp)
  FLD fs8, 80(sp)
  LD s7, 88(sp)
  FLD fs2, 96(sp)
  LD s0, 104(sp)
  LD s5, 112(sp)
  LD s1, 120(sp)
  FLD fs0, 128(sp)
  LD s2, 136(sp)
  FLD fs1, 144(sp)
  LD s8, 152(sp)
  FLD fs3, 160(sp)
  LD s3, 168(sp)
  LD s4, 176(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb51:
  ADD s5, s3, zero
  FSGNJ.S fs2, fs3, fs3
  FSGNJ.S fs5, fs4, fs4
  ADD s6, s4, zero
  LA s7, W
  LW s8, 0(s7)
  SLT s7, s5, s8
  XOR s8, s7, zero
  SLTU s7, zero, s8
  BNE s7, zero, bb52
  JAL zero, bb53
bb52:
  FCVT.S.W fs6, s5
  FCVT.S.W fs7, s2
  LA s7, W
  LW s8, 0(s7)
  FCVT.S.W fs8, s8
  FDIV.S fs9, fs6, fs8
  LA s7, H
  LW s8, 0(s7)
  FCVT.S.W fs8, s8
  FDIV.S fs10, fs7, fs8
  FSGNJ.S fa0, fs9, fs9
  FSGNJ.S fa1, fs10, fs10
  CALL sample
  FSGNJ.D fs8, fa0, fa0
  LA s7, .CONSTANT.7.7
  FLW fs9, 0(s7)
  FMUL.S fs10, fs8, fs9
  FCVT.W.S s7, fs10, rtz
  ADDI s8, zero, 255
  SLT s9, s8, s7
  BNE s9, zero, bb54
  JAL zero, bb56
bb53:
  ADDI a0, zero, 10
  CALL putch
  ADDIW s3, s2, 1
  ADD s0, s6, zero
  FSGNJ.S fs0, fs5, fs5
  FSGNJ.S fs1, fs2, fs2
  ADD s1, s3, zero
  JAL zero, bb48
bb54:
  ADDI s8, zero, 255
  JAL zero, bb55
bb55:
  ADD s9, s8, zero
  ADD a0, s9, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDIW s10, s5, 1
  ADD s4, s9, zero
  FSGNJ.S fs4, fs7, fs7
  FSGNJ.S fs3, fs6, fs6
  ADD s3, s10, zero
  JAL zero, bb51
bb56:
  ADD s8, s7, zero
  JAL zero, bb55
