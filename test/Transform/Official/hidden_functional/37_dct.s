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
.word 0x40490fdb
.CONSTANT.7.3:
.word 0x3f800000
.CONSTANT.7.4:
.word 0x40c90fdb
.CONSTANT.7.5:
.word 0x358637bd
.CONSTANT.7.6:
.word 0x40400000
.section .text
idct:
  ADDI sp, sp, -192
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
  FSD fs4, 152(sp)
  FSD fs5, 160(sp)
  FSD fs6, 168(sp)
  FSD fs7, 176(sp)
  FSD fs8, 184(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  ADD s4, zero, zero
  ADD s5, zero, zero
  ADD s6, zero, zero
  # implict jump to bb1
bb1:
  ADD s7, s6, zero
  ADD s8, s5, zero
  ADD s9, s4, zero
  SLT s10, s7, s2
  BNE s10, zero, bb3
  # implict jump to bb2
bb2:
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
  FLD fs4, 152(sp)
  FLD fs5, 160(sp)
  FLD fs6, 168(sp)
  FLD fs7, 176(sp)
  FLD fs8, 184(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb3:
  ADD s10, zero, zero
  # implict jump to bb4
bb4:
  ADD s11, s10, zero
  ADD t0, s8, zero
  ADD t1, s9, zero
  SLT t2, s11, s3
  BNE t2, zero, bb6
  # implict jump to bb5
bb5:
  ADDIW t2, s7, 1
  ADD s4, t1, zero
  ADD s5, t0, zero
  ADD s6, t2, zero
  JAL zero, bb1
bb6:
  SLLIW s4, s7, 5
  ADD s4, s0, s4
  SLLIW s5, s11, 2
  ADD s4, s4, s5
  ADDI s5, zero, 1
  FCVT.S.W fs0, s5
  LA s5, .CONSTANT.7.0
  FLW fs1, 0(s5)
  FDIV.S fs1, fs0, fs1
  FLW fs2, 0(s1)
  FMUL.S fs1, fs1, fs2
  FSW fs1, 0(s4)
  ADDI s5, zero, 1
  # implict jump to bb7
bb7:
  ADD s6, s5, zero
  SLT t0, s6, s2
  BNE t0, zero, bb42
  # implict jump to bb8
bb8:
  ADDI t4, zero, 1
  SW t4, 4(sp)
  # implict jump to bb9
bb9:
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  LW t4, 0(sp)
  SLT t2, t4, s3
  BNE t2, zero, bb41
  # implict jump to bb10
bb10:
  LW t4, 0(sp)
  ADD t2, t4, zero
  ADDI a4, zero, 1
  # implict jump to bb11
bb11:
  ADD t4, a4, zero
  SW t4, 8(sp)
  ADD a6, t2, zero
  LW t4, 8(sp)
  SLT a7, t4, s2
  BNE a7, zero, bb13
  # implict jump to bb12
bb12:
  FLW fs1, 0(s4)
  LA a7, .CONSTANT.7.1
  FLW fs2, 0(a7)
  FMUL.S fs1, fs1, fs2
  FCVT.S.W fs2, s2
  FDIV.S fs1, fs1, fs2
  LA a7, .CONSTANT.7.1
  FLW fs2, 0(a7)
  FMUL.S fs1, fs1, fs2
  FCVT.S.W fs2, s3
  FDIV.S fs1, fs1, fs2
  FSW fs1, 0(s4)
  ADDIW a7, s11, 1
  ADD s9, a6, zero
  LW t4, 8(sp)
  ADD s8, t4, zero
  ADD s10, a7, zero
  JAL zero, bb4
bb13:
  ADDI s8, zero, 1
  # implict jump to bb14
bb14:
  ADD s9, s8, zero
  SLT s10, s9, s3
  BNE s10, zero, bb16
  # implict jump to bb15
bb15:
  LW t4, 8(sp)
  ADDIW s10, t4, 1
  ADD t2, s9, zero
  ADD a4, s10, zero
  JAL zero, bb11
bb16:
  FLW fs1, 0(s4)
  LW t4, 8(sp)
  SLLIW s10, t4, 5
  ADD s10, s1, s10
  SLLIW t2, s9, 2
  ADD s10, s10, t2
  FLW fs2, 0(s10)
  FCVT.S.W fs3, s2
  LA s10, .CONSTANT.7.2
  FLW fs4, 0(s10)
  FDIV.S fs3, fs4, fs3
  LA s10, .CONSTANT.7.3
  FLW fs4, 0(s10)
  LA s10, .CONSTANT.7.1
  FLW fs5, 0(s10)
  FDIV.S fs4, fs4, fs5
  FCVT.S.W fs5, s7
  FADD.S fs5, fs5, fs4
  FMUL.S fs3, fs3, fs5
  LW t4, 8(sp)
  FCVT.S.W fs5, t4
  FMUL.S fs3, fs3, fs5
  ADDI s10, zero, 2
  FCVT.S.W fs5, s10
  LA s10, .CONSTANT.7.2
  FLW fs6, 0(s10)
  FDIV.S fs5, fs6, fs5
  FADD.S fs3, fs3, fs5
  LA s10, .CONSTANT.7.4
  FLW fs6, 0(s10)
  FLT.S s10, fs6, fs3
  BNE s10, zero, bb40
  # implict jump to bb17
bb17:
  LA s10, .CONSTANT.7.4
  FLW fs6, 0(s10)
  LA s10, .CONSTANT.7.4
  FLW fs7, 0(s10)
  FSGNJN.S fs6, fs6, fs7
  FLT.S s10, fs3, fs6
  # implict jump to bb18
bb18:
  BNE s10, zero, bb39
  # implict jump to bb19
bb19:
  FSGNJ.S fs6, fs3, fs3
  # implict jump to bb20
bb20:
  LA s10, .CONSTANT.7.2
  FLW fs3, 0(s10)
  FLT.S s10, fs3, fs6
  BNE s10, zero, bb38
  # implict jump to bb21
bb21:
  FSGNJ.S fs3, fs6, fs6
  # implict jump to bb22
bb22:
  LA s10, .CONSTANT.7.2
  FLW fs6, 0(s10)
  LA s10, .CONSTANT.7.2
  FLW fs7, 0(s10)
  FSGNJN.S fs6, fs6, fs7
  FLT.S s10, fs3, fs6
  BNE s10, zero, bb37
  # implict jump to bb23
bb23:
  FSGNJ.S fs7, fs3, fs3
  # implict jump to bb24
bb24:
  FSGNJ.S fa0, fs7, fs7
  CALL my_sin_impl
  FSGNJ.D fs3, fa0, fa0
  FMUL.S fs2, fs2, fs3
  FCVT.S.W fs3, s3
  LA s10, .CONSTANT.7.2
  FLW fs7, 0(s10)
  FDIV.S fs3, fs7, fs3
  FCVT.S.W fs7, s11
  FADD.S fs4, fs7, fs4
  FMUL.S fs3, fs3, fs4
  FCVT.S.W fs4, s9
  FMUL.S fs3, fs3, fs4
  FADD.S fs3, fs3, fs5
  LA s10, .CONSTANT.7.4
  FLW fs4, 0(s10)
  FLT.S s10, fs4, fs3
  BNE s10, zero, bb36
  # implict jump to bb25
bb25:
  LA s10, .CONSTANT.7.4
  FLW fs4, 0(s10)
  LA s10, .CONSTANT.7.4
  FLW fs5, 0(s10)
  FSGNJN.S fs4, fs4, fs5
  FLT.S s10, fs3, fs4
  # implict jump to bb26
bb26:
  BNE s10, zero, bb35
  # implict jump to bb27
bb27:
  FSGNJ.S fs4, fs3, fs3
  # implict jump to bb28
bb28:
  LA s10, .CONSTANT.7.2
  FLW fs3, 0(s10)
  FLT.S s10, fs3, fs4
  BNE s10, zero, bb34
  # implict jump to bb29
bb29:
  FSGNJ.S fs3, fs4, fs4
  # implict jump to bb30
bb30:
  FLT.S s10, fs3, fs6
  BNE s10, zero, bb33
  # implict jump to bb31
bb31:
  FSGNJ.S fs4, fs3, fs3
  # implict jump to bb32
bb32:
  FSGNJ.S fa0, fs4, fs4
  CALL my_sin_impl
  FMUL.S fs2, fs2, fa0
  FADD.S fs1, fs1, fs2
  FSW fs1, 0(s4)
  ADDIW s9, s9, 1
  ADD s8, s9, zero
  JAL zero, bb14
bb33:
  LA s10, .CONSTANT.7.4
  FLW fs5, 0(s10)
  FADD.S fs3, fs3, fs5
  FSGNJ.S fs4, fs3, fs3
  JAL zero, bb32
bb34:
  LA s10, .CONSTANT.7.4
  FLW fs5, 0(s10)
  FSUB.S fs4, fs4, fs5
  FSGNJ.S fs3, fs4, fs4
  JAL zero, bb30
bb35:
  LA s10, .CONSTANT.7.4
  FLW fs5, 0(s10)
  FDIV.S fs5, fs3, fs5
  FCVT.W.S s10, fs5, rtz
  FCVT.S.W fs5, s10
  LA s10, .CONSTANT.7.4
  FLW fs7, 0(s10)
  FMUL.S fs5, fs5, fs7
  FSUB.S fs3, fs3, fs5
  FSGNJ.S fs4, fs3, fs3
  JAL zero, bb28
bb36:
  ADDI s10, zero, 1
  JAL zero, bb26
bb37:
  LA s10, .CONSTANT.7.4
  FLW fs8, 0(s10)
  FADD.S fs3, fs3, fs8
  FSGNJ.S fs7, fs3, fs3
  JAL zero, bb24
bb38:
  LA s10, .CONSTANT.7.4
  FLW fs7, 0(s10)
  FSUB.S fs6, fs6, fs7
  FSGNJ.S fs3, fs6, fs6
  JAL zero, bb22
bb39:
  LA s10, .CONSTANT.7.4
  FLW fs7, 0(s10)
  FDIV.S fs7, fs3, fs7
  FCVT.W.S s10, fs7, rtz
  FCVT.S.W fs7, s10
  LA s10, .CONSTANT.7.4
  FLW fs8, 0(s10)
  FMUL.S fs7, fs7, fs8
  FSUB.S fs3, fs3, fs7
  FSGNJ.S fs6, fs3, fs3
  JAL zero, bb20
bb40:
  ADDI s10, zero, 1
  JAL zero, bb18
bb41:
  FLW fs1, 0(s4)
  LA s8, .CONSTANT.7.1
  FLW fs2, 0(s8)
  FDIV.S fs2, fs0, fs2
  LW t4, 0(sp)
  SLLIW s8, t4, 2
  ADD s8, s1, s8
  FLW fs3, 0(s8)
  FMUL.S fs2, fs2, fs3
  FADD.S fs1, fs1, fs2
  FSW fs1, 0(s4)
  LW t4, 0(sp)
  ADDIW s8, t4, 1
  ADD t4, s8, zero
  SW t4, 4(sp)
  JAL zero, bb9
bb42:
  FLW fs1, 0(s4)
  LA s8, .CONSTANT.7.1
  FLW fs2, 0(s8)
  FDIV.S fs2, fs0, fs2
  SLLIW s8, s6, 5
  ADD s8, s1, s8
  FLW fs3, 0(s8)
  FMUL.S fs2, fs2, fs3
  FADD.S fs1, fs1, fs2
  FSW fs1, 0(s4)
  ADDIW s6, s6, 1
  ADD s5, s6, zero
  JAL zero, bb7
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
  BNE s0, zero, bb48
  # implict jump to bb44
bb44:
  FSGNJN.S fs1, fs0, fs0
  # implict jump to bb45
bb45:
  LA s0, .CONSTANT.7.5
  FLW fs2, 0(s0)
  FLE.S s0, fs1, fs2
  BNE s0, zero, bb47
  # implict jump to bb46
bb46:
  LA s0, .CONSTANT.7.6
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
bb47:
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  FLD fs2, 32(sp)
  FLD fs3, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb48:
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb45
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
dct:
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
  SD s11, 104(sp)
  FSD fs0, 112(sp)
  FSD fs1, 120(sp)
  FSD fs2, 128(sp)
  FSD fs3, 136(sp)
  FSD fs4, 144(sp)
  FSD fs5, 152(sp)
  FSD fs7, 160(sp)
  FSD fs6, 168(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  ADD s4, zero, zero
  ADD s5, zero, zero
  ADD s6, zero, zero
  # implict jump to bb51
bb51:
  ADD s7, s6, zero
  ADD s8, s5, zero
  ADD s9, s4, zero
  SLT s10, s7, s2
  BNE s10, zero, bb53
  # implict jump to bb52
bb52:
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
  LD s11, 104(sp)
  FLD fs0, 112(sp)
  FLD fs1, 120(sp)
  FLD fs2, 128(sp)
  FLD fs3, 136(sp)
  FLD fs4, 144(sp)
  FLD fs5, 152(sp)
  FLD fs7, 160(sp)
  FLD fs6, 168(sp)
  ADDI sp, sp, 176
  JALR zero, 0(ra)
bb53:
  ADD s10, zero, zero
  # implict jump to bb54
bb54:
  ADD s11, s10, zero
  ADD t0, s8, zero
  ADD t1, s9, zero
  SLT t2, s11, s3
  BNE t2, zero, bb56
  # implict jump to bb55
bb55:
  ADDIW t2, s7, 1
  ADD s4, t1, zero
  ADD s5, t0, zero
  ADD s6, t2, zero
  JAL zero, bb51
bb56:
  SLLIW s4, s7, 5
  ADD s4, s0, s4
  SLLIW s5, s11, 2
  ADD s4, s4, s5
  FCVT.S.L fs0, zero
  FSW fs0, 0(s4)
  ADD s5, t1, zero
  ADD s6, zero, zero
  # implict jump to bb57
bb57:
  ADD t4, s6, zero
  SW t4, 0(sp)
  ADD t1, s5, zero
  LW t4, 0(sp)
  SLT t2, t4, s2
  BNE t2, zero, bb59
  # implict jump to bb58
bb58:
  ADDIW t2, s11, 1
  ADD s9, t1, zero
  LW t4, 0(sp)
  ADD s8, t4, zero
  ADD s10, t2, zero
  JAL zero, bb54
bb59:
  ADD s8, zero, zero
  # implict jump to bb60
bb60:
  ADD s9, s8, zero
  SLT s10, s9, s3
  BNE s10, zero, bb62
  # implict jump to bb61
bb61:
  LW t4, 0(sp)
  ADDIW s10, t4, 1
  ADD s5, s9, zero
  ADD s6, s10, zero
  JAL zero, bb57
bb62:
  FLW fs0, 0(s4)
  LW t4, 0(sp)
  SLLIW s5, t4, 5
  ADD s5, s1, s5
  SLLIW s6, s9, 2
  ADD s5, s5, s6
  FLW fs1, 0(s5)
  FCVT.S.W fs2, s2
  LA s5, .CONSTANT.7.2
  FLW fs3, 0(s5)
  FDIV.S fs2, fs3, fs2
  LA s5, .CONSTANT.7.3
  FLW fs3, 0(s5)
  LA s5, .CONSTANT.7.1
  FLW fs4, 0(s5)
  FDIV.S fs3, fs3, fs4
  LW t4, 0(sp)
  FCVT.S.W fs4, t4
  FADD.S fs4, fs4, fs3
  FMUL.S fs2, fs2, fs4
  FCVT.S.W fs4, s7
  FMUL.S fs2, fs2, fs4
  ADDI s5, zero, 2
  FCVT.S.W fs4, s5
  LA s5, .CONSTANT.7.2
  FLW fs5, 0(s5)
  FDIV.S fs4, fs5, fs4
  FADD.S fs2, fs2, fs4
  LA s5, .CONSTANT.7.4
  FLW fs5, 0(s5)
  FLT.S s5, fs5, fs2
  BNE s5, zero, bb86
  # implict jump to bb63
bb63:
  LA s5, .CONSTANT.7.4
  FLW fs5, 0(s5)
  LA s5, .CONSTANT.7.4
  FLW fs6, 0(s5)
  FSGNJN.S fs5, fs5, fs6
  FLT.S s5, fs2, fs5
  # implict jump to bb64
bb64:
  BNE s5, zero, bb85
  # implict jump to bb65
bb65:
  FSGNJ.S fs5, fs2, fs2
  # implict jump to bb66
bb66:
  LA s5, .CONSTANT.7.2
  FLW fs2, 0(s5)
  FLT.S s5, fs2, fs5
  BNE s5, zero, bb84
  # implict jump to bb67
bb67:
  FSGNJ.S fs2, fs5, fs5
  # implict jump to bb68
bb68:
  LA s5, .CONSTANT.7.2
  FLW fs5, 0(s5)
  LA s5, .CONSTANT.7.2
  FLW fs6, 0(s5)
  FSGNJN.S fs5, fs5, fs6
  FLT.S s5, fs2, fs5
  BNE s5, zero, bb83
  # implict jump to bb69
bb69:
  FSGNJ.S fs6, fs2, fs2
  # implict jump to bb70
bb70:
  FSGNJ.S fa0, fs6, fs6
  CALL my_sin_impl
  FSGNJ.D fs2, fa0, fa0
  FMUL.S fs1, fs1, fs2
  FCVT.S.W fs2, s3
  LA s5, .CONSTANT.7.2
  FLW fs6, 0(s5)
  FDIV.S fs2, fs6, fs2
  FCVT.S.W fs6, s9
  FADD.S fs3, fs6, fs3
  FMUL.S fs2, fs2, fs3
  FCVT.S.W fs3, s11
  FMUL.S fs2, fs2, fs3
  FADD.S fs2, fs2, fs4
  LA s5, .CONSTANT.7.4
  FLW fs3, 0(s5)
  FLT.S s5, fs3, fs2
  BNE s5, zero, bb82
  # implict jump to bb71
bb71:
  LA s5, .CONSTANT.7.4
  FLW fs3, 0(s5)
  LA s5, .CONSTANT.7.4
  FLW fs4, 0(s5)
  FSGNJN.S fs3, fs3, fs4
  FLT.S s5, fs2, fs3
  # implict jump to bb72
bb72:
  BNE s5, zero, bb81
  # implict jump to bb73
bb73:
  FSGNJ.S fs3, fs2, fs2
  # implict jump to bb74
bb74:
  LA s5, .CONSTANT.7.2
  FLW fs2, 0(s5)
  FLT.S s5, fs2, fs3
  BNE s5, zero, bb80
  # implict jump to bb75
bb75:
  FSGNJ.S fs2, fs3, fs3
  # implict jump to bb76
bb76:
  FLT.S s5, fs2, fs5
  BNE s5, zero, bb79
  # implict jump to bb77
bb77:
  FSGNJ.S fs3, fs2, fs2
  # implict jump to bb78
bb78:
  FSGNJ.S fa0, fs3, fs3
  CALL my_sin_impl
  FMUL.S fs1, fs1, fa0
  FADD.S fs0, fs0, fs1
  FSW fs0, 0(s4)
  ADDIW s5, s9, 1
  ADD s8, s5, zero
  JAL zero, bb60
bb79:
  LA s5, .CONSTANT.7.4
  FLW fs4, 0(s5)
  FADD.S fs2, fs2, fs4
  FSGNJ.S fs3, fs2, fs2
  JAL zero, bb78
bb80:
  LA s5, .CONSTANT.7.4
  FLW fs4, 0(s5)
  FSUB.S fs3, fs3, fs4
  FSGNJ.S fs2, fs3, fs3
  JAL zero, bb76
bb81:
  LA s5, .CONSTANT.7.4
  FLW fs4, 0(s5)
  FDIV.S fs4, fs2, fs4
  FCVT.W.S s5, fs4, rtz
  FCVT.S.W fs4, s5
  LA s5, .CONSTANT.7.4
  FLW fs6, 0(s5)
  FMUL.S fs4, fs4, fs6
  FSUB.S fs2, fs2, fs4
  FSGNJ.S fs3, fs2, fs2
  JAL zero, bb74
bb82:
  ADDI s5, zero, 1
  JAL zero, bb72
bb83:
  LA s5, .CONSTANT.7.4
  FLW fs7, 0(s5)
  FADD.S fs2, fs2, fs7
  FSGNJ.S fs6, fs2, fs2
  JAL zero, bb70
bb84:
  LA s5, .CONSTANT.7.4
  FLW fs6, 0(s5)
  FSUB.S fs5, fs5, fs6
  FSGNJ.S fs2, fs5, fs5
  JAL zero, bb68
bb85:
  LA s5, .CONSTANT.7.4
  FLW fs6, 0(s5)
  FDIV.S fs6, fs2, fs6
  FCVT.W.S s5, fs6, rtz
  FCVT.S.W fs6, s5
  LA s5, .CONSTANT.7.4
  FLW fs7, 0(s5)
  FMUL.S fs6, fs6, fs7
  FSUB.S fs2, fs2, fs6
  FSGNJ.S fs5, fs2, fs2
  JAL zero, bb66
bb86:
  ADDI s5, zero, 1
  JAL zero, bb64
my_sin:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs0, 16(sp)
  FSD fs1, 24(sp)
  FSD fs2, 32(sp)
  FSD fs3, 40(sp)
  FSGNJ.D fs0, fa0, fa0
  LA s0, .CONSTANT.7.4
  FLW fs1, 0(s0)
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb99
  # implict jump to bb88
bb88:
  LA s0, .CONSTANT.7.4
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FSGNJN.S fs1, fs1, fs2
  FLT.S s0, fs0, fs1
  # implict jump to bb89
bb89:
  BNE s0, zero, bb98
  # implict jump to bb90
bb90:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb91
bb91:
  LA s0, .CONSTANT.7.2
  FLW fs0, 0(s0)
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb97
  # implict jump to bb92
bb92:
  FSGNJ.S fs0, fs1, fs1
  # implict jump to bb93
bb93:
  LA s0, .CONSTANT.7.2
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.2
  FLW fs2, 0(s0)
  FSGNJN.S fs1, fs1, fs2
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb96
  # implict jump to bb94
bb94:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb95
bb95:
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
bb96:
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FADD.S fs0, fs0, fs2
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb95
bb97:
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FSUB.S fs1, fs1, fs2
  FSGNJ.S fs0, fs1, fs1
  JAL zero, bb93
bb98:
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FDIV.S fs2, fs0, fs2
  FCVT.W.S s0, fs2, rtz
  FCVT.S.W fs2, s0
  LA s0, .CONSTANT.7.4
  FLW fs3, 0(s0)
  FMUL.S fs2, fs2, fs3
  FSUB.S fs0, fs0, fs2
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb91
bb99:
  ADDI s0, zero, 1
  JAL zero, bb89
write_mat:
  ADDI sp, sp, -96
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s3, 16(sp)
  SD s4, 24(sp)
  FSD fs0, 32(sp)
  SD s0, 40(sp)
  SD s1, 48(sp)
  SD s5, 56(sp)
  SD s6, 64(sp)
  SD s7, 72(sp)
  SD s8, 80(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, zero, zero
  # implict jump to bb101
bb101:
  ADD s4, s3, zero
  SLT s5, s4, s1
  BNE s5, zero, bb103
  # implict jump to bb102
bb102:
  ADDI a0, zero, 10
  CALL putch
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s3, 16(sp)
  LD s4, 24(sp)
  FLD fs0, 32(sp)
  LD s0, 40(sp)
  LD s1, 48(sp)
  LD s5, 56(sp)
  LD s6, 64(sp)
  LD s7, 72(sp)
  LD s8, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb103:
  SLLIW s5, s4, 5
  ADD s5, s0, s5
  FLW fs0, 0(s5)
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  ADDI s6, zero, 1
  # implict jump to bb104
bb104:
  ADD s7, s6, zero
  SLT s8, s7, s2
  BNE s8, zero, bb106
  # implict jump to bb105
bb105:
  ADDI a0, zero, 10
  CALL putch
  ADDIW s8, s4, 1
  ADD s3, s8, zero
  JAL zero, bb101
bb106:
  ADDI a0, zero, 32
  CALL putch
  SLLIW s3, s7, 2
  ADD s3, s5, s3
  FLW fs0, 0(s3)
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  ADDIW s3, s7, 1
  ADD s6, s3, zero
  JAL zero, bb104
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
  LA s0, .CONSTANT.7.2
  FLW fs2, 0(s0)
  FDIV.S fs1, fs2, fs1
  FADD.S fs0, fs0, fs1
  LA s0, .CONSTANT.7.4
  FLW fs1, 0(s0)
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb119
  # implict jump to bb108
bb108:
  LA s0, .CONSTANT.7.4
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FSGNJN.S fs1, fs1, fs2
  FLT.S s0, fs0, fs1
  # implict jump to bb109
bb109:
  BNE s0, zero, bb118
  # implict jump to bb110
bb110:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb111
bb111:
  LA s0, .CONSTANT.7.2
  FLW fs0, 0(s0)
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb117
  # implict jump to bb112
bb112:
  FSGNJ.S fs0, fs1, fs1
  # implict jump to bb113
bb113:
  LA s0, .CONSTANT.7.2
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.2
  FLW fs2, 0(s0)
  FSGNJN.S fs1, fs1, fs2
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb116
  # implict jump to bb114
bb114:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb115
bb115:
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
bb116:
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FADD.S fs0, fs0, fs2
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb115
bb117:
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FSUB.S fs1, fs1, fs2
  FSGNJ.S fs0, fs1, fs1
  JAL zero, bb113
bb118:
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FDIV.S fs2, fs0, fs2
  FCVT.W.S s0, fs2, rtz
  FCVT.S.W fs2, s0
  LA s0, .CONSTANT.7.4
  FLW fs3, 0(s0)
  FMUL.S fs2, fs2, fs3
  FSUB.S fs0, fs0, fs2
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb111
bb119:
  ADDI s0, zero, 1
  JAL zero, bb109
main:
  ADDI sp, sp, -240
  SD ra, 64(sp)
  SD s0, 72(sp)
  SD s1, 80(sp)
  SD s2, 88(sp)
  SD s3, 96(sp)
  SD s4, 104(sp)
  SD s5, 112(sp)
  SD s6, 120(sp)
  SD s7, 128(sp)
  SD s8, 136(sp)
  SD s10, 144(sp)
  SD s9, 152(sp)
  FSD fs3, 160(sp)
  SD s11, 168(sp)
  FSD fs0, 176(sp)
  FSD fs1, 184(sp)
  FSD fs2, 192(sp)
  FSD fs4, 200(sp)
  FSD fs5, 208(sp)
  FSD fs6, 216(sp)
  FSD fs7, 224(sp)
  FSD fs8, 232(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 20(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 24(sp)
  ADD t4, zero, zero
  SW t4, 16(sp)
  # implict jump to bb121
bb121:
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LW t4, 28(sp)
  LW t3, 20(sp)
  SLT s4, t4, t3
  BNE s4, zero, bb213
  # implict jump to bb122
bb122:
  ADD t4, zero, zero
  SW t4, 0(sp)
  ADD t4, zero, zero
  SW t4, 4(sp)
  ADD t4, zero, zero
  SW t4, 8(sp)
  # implict jump to bb123
bb123:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  LW t4, 12(sp)
  LW t3, 20(sp)
  SLT s10, t4, t3
  BNE s10, zero, bb179
  # implict jump to bb124
bb124:
  ADD t4, zero, zero
  SW t4, 52(sp)
  # implict jump to bb125
bb125:
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LW t4, 48(sp)
  LW t3, 20(sp)
  SLT s3, t4, t3
  BNE s3, zero, bb175
  # implict jump to bb126
bb126:
  ADDI a0, zero, 10
  CALL putch
  ADD s3, zero, zero
  ADD s1, zero, zero
  ADD s0, zero, zero
  # implict jump to bb127
bb127:
  ADD t4, s0, zero
  SW t4, 40(sp)
  ADD s7, s1, zero
  ADD s6, s3, zero
  LW t4, 40(sp)
  LW t3, 20(sp)
  SLT s5, t4, t3
  BNE s5, zero, bb135
  # implict jump to bb128
bb128:
  ADD s5, zero, zero
  # implict jump to bb129
bb129:
  ADD s4, s5, zero
  LW t4, 20(sp)
  SLT s8, s4, t4
  BNE s8, zero, bb131
  # implict jump to bb130
bb130:
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 64(sp)
  LD s0, 72(sp)
  LD s1, 80(sp)
  LD s2, 88(sp)
  LD s3, 96(sp)
  LD s4, 104(sp)
  LD s5, 112(sp)
  LD s6, 120(sp)
  LD s7, 128(sp)
  LD s8, 136(sp)
  LD s10, 144(sp)
  LD s9, 152(sp)
  FLD fs3, 160(sp)
  LD s11, 168(sp)
  FLD fs0, 176(sp)
  FLD fs1, 184(sp)
  FLD fs2, 192(sp)
  FLD fs4, 200(sp)
  FLD fs5, 208(sp)
  FLD fs6, 216(sp)
  FLD fs7, 224(sp)
  FLD fs8, 232(sp)
  ADDI sp, sp, 240
  JALR zero, 0(ra)
bb131:
  SLLIW s8, s4, 5
  LA s9, test_idct
  ADD s8, s9, s8
  FLW fs0, 0(s8)
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  ADDI s9, zero, 1
  # implict jump to bb132
bb132:
  ADD s11, s9, zero
  LW t4, 24(sp)
  SLT s10, s11, t4
  BNE s10, zero, bb134
  # implict jump to bb133
bb133:
  ADDI a0, zero, 10
  CALL putch
  ADDIW s10, s4, 1
  ADD s5, s10, zero
  JAL zero, bb129
bb134:
  ADDI a0, zero, 32
  CALL putch
  SLLIW s5, s11, 2
  ADD s5, s8, s5
  FLW fs0, 0(s5)
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  ADDIW s5, s11, 1
  ADD s9, s5, zero
  JAL zero, bb132
bb135:
  ADD s4, s6, zero
  ADD s5, s7, zero
  ADD s6, zero, zero
  # implict jump to bb136
bb136:
  ADD t4, s6, zero
  SW t4, 44(sp)
  ADD s8, s5, zero
  ADD s9, s4, zero
  LW t4, 44(sp)
  LW t3, 24(sp)
  SLT s10, t4, t3
  BNE s10, zero, bb138
  # implict jump to bb137
bb137:
  LW t4, 40(sp)
  ADDIW s10, t4, 1
  ADD s3, s9, zero
  ADD s1, s8, zero
  ADD s0, s10, zero
  JAL zero, bb127
bb138:
  LW t4, 40(sp)
  SLLIW s0, t4, 5
  LA s1, test_idct
  ADD s0, s1, s0
  LW t4, 44(sp)
  SLLIW s1, t4, 2
  ADD t4, s0, s1
  SD t4, 56(sp)
  ADDI s1, zero, 1
  FCVT.S.W fs0, s1
  LA s1, .CONSTANT.7.0
  FLW fs1, 0(s1)
  FDIV.S fs1, fs0, fs1
  LA s1, test_dct
  FLW fs2, 0(s1)
  FMUL.S fs1, fs1, fs2
  LD t4, 56(sp)
  FSW fs1, 0(t4)
  ADDI s1, zero, 1
  # implict jump to bb139
bb139:
  ADD s3, s1, zero
  LW t4, 20(sp)
  SLT s8, s3, t4
  BNE s8, zero, bb174
  # implict jump to bb140
bb140:
  ADDI s8, zero, 1
  # implict jump to bb141
bb141:
  ADD s9, s8, zero
  LW t4, 24(sp)
  SLT s10, s9, t4
  BNE s10, zero, bb173
  # implict jump to bb142
bb142:
  ADD s10, s9, zero
  ADDI s11, zero, 1
  # implict jump to bb143
bb143:
  ADD s0, s11, zero
  ADD s7, s10, zero
  LW t4, 20(sp)
  SLT s2, s0, t4
  BNE s2, zero, bb145
  # implict jump to bb144
bb144:
  LD t4, 56(sp)
  FLW fs1, 0(t4)
  LA s2, .CONSTANT.7.1
  FLW fs2, 0(s2)
  FMUL.S fs1, fs1, fs2
  LW t4, 20(sp)
  FCVT.S.W fs2, t4
  FDIV.S fs1, fs1, fs2
  LA s2, .CONSTANT.7.1
  FLW fs2, 0(s2)
  FMUL.S fs1, fs1, fs2
  LW t4, 24(sp)
  FCVT.S.W fs2, t4
  FDIV.S fs1, fs1, fs2
  LD t4, 56(sp)
  FSW fs1, 0(t4)
  LW t4, 44(sp)
  ADDIW s2, t4, 1
  ADD s4, s7, zero
  ADD s5, s0, zero
  ADD s6, s2, zero
  JAL zero, bb136
bb145:
  ADDI s2, zero, 1
  # implict jump to bb146
bb146:
  ADD s4, s2, zero
  LW t4, 24(sp)
  SLT s5, s4, t4
  BNE s5, zero, bb148
  # implict jump to bb147
bb147:
  ADDIW s5, s0, 1
  ADD s10, s4, zero
  ADD s11, s5, zero
  JAL zero, bb143
bb148:
  LD t4, 56(sp)
  FLW fs1, 0(t4)
  SLLIW s5, s0, 5
  LA s6, test_dct
  ADD s5, s6, s5
  SLLIW s6, s4, 2
  ADD s5, s5, s6
  FLW fs2, 0(s5)
  LW t4, 20(sp)
  FCVT.S.W fs3, t4
  LA s5, .CONSTANT.7.2
  FLW fs4, 0(s5)
  FDIV.S fs3, fs4, fs3
  LA s5, .CONSTANT.7.3
  FLW fs4, 0(s5)
  LA s5, .CONSTANT.7.1
  FLW fs5, 0(s5)
  FDIV.S fs4, fs4, fs5
  LW t4, 40(sp)
  FCVT.S.W fs5, t4
  FADD.S fs5, fs5, fs4
  FMUL.S fs3, fs3, fs5
  FCVT.S.W fs5, s0
  FMUL.S fs3, fs3, fs5
  ADDI s5, zero, 2
  FCVT.S.W fs5, s5
  LA s5, .CONSTANT.7.2
  FLW fs6, 0(s5)
  FDIV.S fs5, fs6, fs5
  FADD.S fs3, fs3, fs5
  LA s5, .CONSTANT.7.4
  FLW fs6, 0(s5)
  FLT.S s5, fs6, fs3
  BNE s5, zero, bb172
  # implict jump to bb149
bb149:
  LA s5, .CONSTANT.7.4
  FLW fs6, 0(s5)
  LA s5, .CONSTANT.7.4
  FLW fs7, 0(s5)
  FSGNJN.S fs6, fs6, fs7
  FLT.S s5, fs3, fs6
  # implict jump to bb150
bb150:
  BNE s5, zero, bb171
  # implict jump to bb151
bb151:
  FSGNJ.S fs6, fs3, fs3
  # implict jump to bb152
bb152:
  LA s5, .CONSTANT.7.2
  FLW fs3, 0(s5)
  FLT.S s5, fs3, fs6
  BNE s5, zero, bb170
  # implict jump to bb153
bb153:
  FSGNJ.S fs3, fs6, fs6
  # implict jump to bb154
bb154:
  LA s5, .CONSTANT.7.2
  FLW fs6, 0(s5)
  LA s5, .CONSTANT.7.2
  FLW fs7, 0(s5)
  FSGNJN.S fs6, fs6, fs7
  FLT.S s5, fs3, fs6
  BNE s5, zero, bb169
  # implict jump to bb155
bb155:
  FSGNJ.S fs7, fs3, fs3
  # implict jump to bb156
bb156:
  FSGNJ.S fa0, fs7, fs7
  CALL my_sin_impl
  FSGNJ.D fs3, fa0, fa0
  FMUL.S fs2, fs2, fs3
  LW t4, 24(sp)
  FCVT.S.W fs3, t4
  LA s5, .CONSTANT.7.2
  FLW fs7, 0(s5)
  FDIV.S fs3, fs7, fs3
  LW t4, 44(sp)
  FCVT.S.W fs7, t4
  FADD.S fs4, fs7, fs4
  FMUL.S fs3, fs3, fs4
  FCVT.S.W fs4, s4
  FMUL.S fs3, fs3, fs4
  FADD.S fs3, fs3, fs5
  LA s5, .CONSTANT.7.4
  FLW fs4, 0(s5)
  FLT.S s5, fs4, fs3
  BNE s5, zero, bb168
  # implict jump to bb157
bb157:
  LA s5, .CONSTANT.7.4
  FLW fs4, 0(s5)
  LA s5, .CONSTANT.7.4
  FLW fs5, 0(s5)
  FSGNJN.S fs4, fs4, fs5
  FLT.S s5, fs3, fs4
  # implict jump to bb158
bb158:
  BNE s5, zero, bb167
  # implict jump to bb159
bb159:
  FSGNJ.S fs4, fs3, fs3
  # implict jump to bb160
bb160:
  LA s5, .CONSTANT.7.2
  FLW fs3, 0(s5)
  FLT.S s5, fs3, fs4
  BNE s5, zero, bb166
  # implict jump to bb161
bb161:
  FSGNJ.S fs3, fs4, fs4
  # implict jump to bb162
bb162:
  FLT.S s5, fs3, fs6
  BNE s5, zero, bb165
  # implict jump to bb163
bb163:
  FSGNJ.S fs4, fs3, fs3
  # implict jump to bb164
bb164:
  FSGNJ.S fa0, fs4, fs4
  CALL my_sin_impl
  FSGNJ.D fs3, fa0, fa0
  FMUL.S fs2, fs2, fs3
  FADD.S fs1, fs1, fs2
  LD t4, 56(sp)
  FSW fs1, 0(t4)
  ADDIW s4, s4, 1
  ADD s2, s4, zero
  JAL zero, bb146
bb165:
  LA s5, .CONSTANT.7.4
  FLW fs5, 0(s5)
  FADD.S fs3, fs3, fs5
  FSGNJ.S fs4, fs3, fs3
  JAL zero, bb164
bb166:
  LA s5, .CONSTANT.7.4
  FLW fs5, 0(s5)
  FSUB.S fs4, fs4, fs5
  FSGNJ.S fs3, fs4, fs4
  JAL zero, bb162
bb167:
  LA s5, .CONSTANT.7.4
  FLW fs5, 0(s5)
  FDIV.S fs5, fs3, fs5
  FCVT.W.S s5, fs5, rtz
  FCVT.S.W fs5, s5
  LA s5, .CONSTANT.7.4
  FLW fs7, 0(s5)
  FMUL.S fs5, fs5, fs7
  FSUB.S fs3, fs3, fs5
  FSGNJ.S fs4, fs3, fs3
  JAL zero, bb160
bb168:
  ADDI s5, zero, 1
  JAL zero, bb158
bb169:
  LA s5, .CONSTANT.7.4
  FLW fs8, 0(s5)
  FADD.S fs3, fs3, fs8
  FSGNJ.S fs7, fs3, fs3
  JAL zero, bb156
bb170:
  LA s5, .CONSTANT.7.4
  FLW fs7, 0(s5)
  FSUB.S fs6, fs6, fs7
  FSGNJ.S fs3, fs6, fs6
  JAL zero, bb154
bb171:
  LA s5, .CONSTANT.7.4
  FLW fs7, 0(s5)
  FDIV.S fs7, fs3, fs7
  FCVT.W.S s5, fs7, rtz
  FCVT.S.W fs7, s5
  LA s5, .CONSTANT.7.4
  FLW fs8, 0(s5)
  FMUL.S fs7, fs7, fs8
  FSUB.S fs3, fs3, fs7
  FSGNJ.S fs6, fs3, fs3
  JAL zero, bb152
bb172:
  ADDI s5, zero, 1
  JAL zero, bb150
bb173:
  LD t4, 56(sp)
  FLW fs1, 0(t4)
  LA s0, .CONSTANT.7.1
  FLW fs2, 0(s0)
  FDIV.S fs2, fs0, fs2
  SLLIW s0, s9, 2
  LA s2, test_dct
  ADD s0, s2, s0
  FLW fs3, 0(s0)
  FMUL.S fs2, fs2, fs3
  FADD.S fs1, fs1, fs2
  LD t4, 56(sp)
  FSW fs1, 0(t4)
  ADDIW s0, s9, 1
  ADD s8, s0, zero
  JAL zero, bb141
bb174:
  LD t4, 56(sp)
  FLW fs1, 0(t4)
  LA s0, .CONSTANT.7.1
  FLW fs2, 0(s0)
  FDIV.S fs2, fs0, fs2
  SLLIW s0, s3, 5
  LA s2, test_dct
  ADD s0, s2, s0
  FLW fs3, 0(s0)
  FMUL.S fs2, fs2, fs3
  FADD.S fs1, fs1, fs2
  LD t4, 56(sp)
  FSW fs1, 0(t4)
  ADDIW s0, s3, 1
  ADD s1, s0, zero
  JAL zero, bb139
bb175:
  LW t4, 48(sp)
  SLLIW s0, t4, 5
  LA s1, test_dct
  ADD s0, s1, s0
  FLW fs0, 0(s0)
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  ADDI s1, zero, 1
  # implict jump to bb176
bb176:
  ADD s2, s1, zero
  LW t4, 24(sp)
  SLT s3, s2, t4
  BNE s3, zero, bb178
  # implict jump to bb177
bb177:
  ADDI a0, zero, 10
  CALL putch
  LW t4, 48(sp)
  ADDIW s3, t4, 1
  ADD t4, s3, zero
  SW t4, 52(sp)
  JAL zero, bb125
bb178:
  ADDI a0, zero, 32
  CALL putch
  SLLIW s3, s2, 2
  ADD s3, s0, s3
  FLW fs0, 0(s3)
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  ADDIW s2, s2, 1
  ADD s1, s2, zero
  JAL zero, bb176
bb179:
  LW t4, 36(sp)
  ADD s0, t4, zero
  LW t4, 32(sp)
  ADD s1, t4, zero
  ADD s2, zero, zero
  # implict jump to bb180
bb180:
  ADD s3, s2, zero
  ADD s4, s1, zero
  ADD s5, s0, zero
  LW t4, 24(sp)
  SLT s6, s3, t4
  BNE s6, zero, bb182
  # implict jump to bb181
bb181:
  LW t4, 12(sp)
  ADDIW s6, t4, 1
  ADD t4, s5, zero
  SW t4, 0(sp)
  ADD t4, s4, zero
  SW t4, 4(sp)
  ADD t4, s6, zero
  SW t4, 8(sp)
  JAL zero, bb123
bb182:
  LW t4, 12(sp)
  SLLIW s4, t4, 5
  LA s6, test_dct
  ADD s4, s6, s4
  SLLIW s6, s3, 2
  ADD s4, s4, s6
  FCVT.S.L fs0, zero
  FSW fs0, 0(s4)
  ADD s6, zero, zero
  # implict jump to bb183
bb183:
  ADD s7, s6, zero
  ADD s8, s5, zero
  LW t4, 20(sp)
  SLT s9, s7, t4
  BNE s9, zero, bb185
  # implict jump to bb184
bb184:
  ADDIW s9, s3, 1
  ADD s0, s8, zero
  ADD s1, s7, zero
  ADD s2, s9, zero
  JAL zero, bb180
bb185:
  ADD s0, zero, zero
  # implict jump to bb186
bb186:
  ADD s1, s0, zero
  LW t4, 24(sp)
  SLT s2, s1, t4
  BNE s2, zero, bb188
  # implict jump to bb187
bb187:
  ADDIW s2, s7, 1
  ADD s5, s1, zero
  ADD s6, s2, zero
  JAL zero, bb183
bb188:
  FLW fs0, 0(s4)
  SLLIW s2, s7, 5
  LA s5, test_block
  ADD s2, s5, s2
  SLLIW s5, s1, 2
  ADD s2, s2, s5
  FLW fs1, 0(s2)
  LW t4, 20(sp)
  FCVT.S.W fs2, t4
  LA s2, .CONSTANT.7.2
  FLW fs3, 0(s2)
  FDIV.S fs2, fs3, fs2
  LA s2, .CONSTANT.7.3
  FLW fs3, 0(s2)
  LA s2, .CONSTANT.7.1
  FLW fs4, 0(s2)
  FDIV.S fs3, fs3, fs4
  FCVT.S.W fs4, s7
  FADD.S fs4, fs4, fs3
  FMUL.S fs2, fs2, fs4
  LW t4, 12(sp)
  FCVT.S.W fs4, t4
  FMUL.S fs2, fs2, fs4
  ADDI s2, zero, 2
  FCVT.S.W fs4, s2
  LA s2, .CONSTANT.7.2
  FLW fs5, 0(s2)
  FDIV.S fs4, fs5, fs4
  FADD.S fs2, fs2, fs4
  LA s2, .CONSTANT.7.4
  FLW fs5, 0(s2)
  FLT.S s2, fs5, fs2
  BNE s2, zero, bb212
  # implict jump to bb189
bb189:
  LA s2, .CONSTANT.7.4
  FLW fs5, 0(s2)
  LA s2, .CONSTANT.7.4
  FLW fs6, 0(s2)
  FSGNJN.S fs5, fs5, fs6
  FLT.S s2, fs2, fs5
  # implict jump to bb190
bb190:
  BNE s2, zero, bb211
  # implict jump to bb191
bb191:
  FSGNJ.S fs5, fs2, fs2
  # implict jump to bb192
bb192:
  LA s2, .CONSTANT.7.2
  FLW fs2, 0(s2)
  FLT.S s2, fs2, fs5
  BNE s2, zero, bb210
  # implict jump to bb193
bb193:
  FSGNJ.S fs2, fs5, fs5
  # implict jump to bb194
bb194:
  LA s2, .CONSTANT.7.2
  FLW fs5, 0(s2)
  LA s2, .CONSTANT.7.2
  FLW fs6, 0(s2)
  FSGNJN.S fs5, fs5, fs6
  FLT.S s2, fs2, fs5
  BNE s2, zero, bb209
  # implict jump to bb195
bb195:
  FSGNJ.S fs6, fs2, fs2
  # implict jump to bb196
bb196:
  FSGNJ.S fa0, fs6, fs6
  CALL my_sin_impl
  FSGNJ.D fs2, fa0, fa0
  FMUL.S fs1, fs1, fs2
  LW t4, 24(sp)
  FCVT.S.W fs2, t4
  LA s2, .CONSTANT.7.2
  FLW fs6, 0(s2)
  FDIV.S fs2, fs6, fs2
  FCVT.S.W fs6, s1
  FADD.S fs3, fs6, fs3
  FMUL.S fs2, fs2, fs3
  FCVT.S.W fs3, s3
  FMUL.S fs2, fs2, fs3
  FADD.S fs2, fs2, fs4
  LA s2, .CONSTANT.7.4
  FLW fs3, 0(s2)
  FLT.S s2, fs3, fs2
  BNE s2, zero, bb208
  # implict jump to bb197
bb197:
  LA s2, .CONSTANT.7.4
  FLW fs3, 0(s2)
  LA s2, .CONSTANT.7.4
  FLW fs4, 0(s2)
  FSGNJN.S fs3, fs3, fs4
  FLT.S s2, fs2, fs3
  # implict jump to bb198
bb198:
  BNE s2, zero, bb207
  # implict jump to bb199
bb199:
  FSGNJ.S fs3, fs2, fs2
  # implict jump to bb200
bb200:
  LA s2, .CONSTANT.7.2
  FLW fs2, 0(s2)
  FLT.S s2, fs2, fs3
  BNE s2, zero, bb206
  # implict jump to bb201
bb201:
  FSGNJ.S fs2, fs3, fs3
  # implict jump to bb202
bb202:
  FLT.S s2, fs2, fs5
  BNE s2, zero, bb205
  # implict jump to bb203
bb203:
  FSGNJ.S fs3, fs2, fs2
  # implict jump to bb204
bb204:
  FSGNJ.S fa0, fs3, fs3
  CALL my_sin_impl
  FSGNJ.D fs2, fa0, fa0
  FMUL.S fs1, fs1, fs2
  FADD.S fs0, fs0, fs1
  FSW fs0, 0(s4)
  ADDIW s1, s1, 1
  ADD s0, s1, zero
  JAL zero, bb186
bb205:
  LA s2, .CONSTANT.7.4
  FLW fs4, 0(s2)
  FADD.S fs2, fs2, fs4
  FSGNJ.S fs3, fs2, fs2
  JAL zero, bb204
bb206:
  LA s2, .CONSTANT.7.4
  FLW fs4, 0(s2)
  FSUB.S fs3, fs3, fs4
  FSGNJ.S fs2, fs3, fs3
  JAL zero, bb202
bb207:
  LA s2, .CONSTANT.7.4
  FLW fs4, 0(s2)
  FDIV.S fs4, fs2, fs4
  FCVT.W.S s2, fs4, rtz
  FCVT.S.W fs4, s2
  LA s2, .CONSTANT.7.4
  FLW fs6, 0(s2)
  FMUL.S fs4, fs4, fs6
  FSUB.S fs2, fs2, fs4
  FSGNJ.S fs3, fs2, fs2
  JAL zero, bb200
bb208:
  ADDI s2, zero, 1
  JAL zero, bb198
bb209:
  LA s2, .CONSTANT.7.4
  FLW fs7, 0(s2)
  FADD.S fs2, fs2, fs7
  FSGNJ.S fs6, fs2, fs2
  JAL zero, bb196
bb210:
  LA s2, .CONSTANT.7.4
  FLW fs6, 0(s2)
  FSUB.S fs5, fs5, fs6
  FSGNJ.S fs2, fs5, fs5
  JAL zero, bb194
bb211:
  LA s2, .CONSTANT.7.4
  FLW fs6, 0(s2)
  FDIV.S fs6, fs2, fs6
  FCVT.W.S s2, fs6, rtz
  FCVT.S.W fs6, s2
  LA s2, .CONSTANT.7.4
  FLW fs7, 0(s2)
  FMUL.S fs6, fs6, fs7
  FSUB.S fs2, fs2, fs6
  FSGNJ.S fs5, fs2, fs2
  JAL zero, bb192
bb212:
  ADDI s2, zero, 1
  JAL zero, bb190
bb213:
  ADD s0, zero, zero
  # implict jump to bb214
bb214:
  ADD s1, s0, zero
  LW t4, 24(sp)
  SLT s2, s1, t4
  BNE s2, zero, bb216
  # implict jump to bb215
bb215:
  LW t4, 28(sp)
  ADDIW s2, t4, 1
  ADD t4, s2, zero
  SW t4, 16(sp)
  JAL zero, bb121
bb216:
  LW t4, 28(sp)
  SLLIW s2, t4, 5
  LA s3, test_block
  ADD s2, s3, s2
  SLLIW s3, s1, 2
  ADD s2, s2, s3
  CALL getfloat
  FSW fa0, 0(s2)
  ADDIW s1, s1, 1
  ADD s0, s1, zero
  JAL zero, bb214
my_fabs:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs0, 16(sp)
  FSD fs1, 24(sp)
  FSGNJ.D fs0, fa0, fa0
  FCVT.S.L fs1, zero
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb219
  # implict jump to bb218
bb218:
  FSGNJN.S fs1, fs0, fs0
  FSGNJ.S fa0, fs1, fs1
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb219:
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
