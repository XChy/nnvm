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
.word 0x3f000000
.CONSTANT.7.4:
.word 0x40c90fdb
.CONSTANT.7.5:
.word 0x358637bd
.CONSTANT.7.6:
.word 0x40400000
.section .text
idct:
  ADDI sp, sp, -272
  SD ra, 80(sp)
  SD s0, 88(sp)
  SD s1, 96(sp)
  SD s2, 104(sp)
  SD s3, 112(sp)
  SD s4, 120(sp)
  SD s5, 128(sp)
  SD s6, 136(sp)
  SD s7, 144(sp)
  SD s8, 152(sp)
  SD s9, 160(sp)
  SD s10, 168(sp)
  SD s11, 176(sp)
  FSD fs0, 184(sp)
  FSD fs1, 192(sp)
  FSD fs2, 200(sp)
  FSD fs3, 208(sp)
  FSD fs4, 216(sp)
  FSD fs5, 224(sp)
  FSD fs6, 232(sp)
  FSD fs7, 240(sp)
  ADD t4, a0, zero
  SD t4, 256(sp)
  ADD t4, a1, zero
  SD t4, 264(sp)
  ADD t4, a2, zero
  SW t4, 52(sp)
  ADD t4, a3, zero
  SW t4, 60(sp)
  ADDI a4, zero, 0
  LW t4, 52(sp)
  BLT a4, t4, bb2
  # implict jump to bb1
bb1:
  LD ra, 80(sp)
  LD s0, 88(sp)
  LD s1, 96(sp)
  LD s2, 104(sp)
  LD s3, 112(sp)
  LD s4, 120(sp)
  LD s5, 128(sp)
  LD s6, 136(sp)
  LD s7, 144(sp)
  LD s8, 152(sp)
  LD s9, 160(sp)
  LD s10, 168(sp)
  LD s11, 176(sp)
  FLD fs0, 184(sp)
  FLD fs1, 192(sp)
  FLD fs2, 200(sp)
  FLD fs3, 208(sp)
  FLD fs4, 216(sp)
  FLD fs5, 224(sp)
  FLD fs6, 232(sp)
  FLD fs7, 240(sp)
  ADDI sp, sp, 272
  JALR zero, 0(ra)
bb2:
  ADD t4, zero, zero
  SW t4, 72(sp)
  ADD t4, zero, zero
  SW t4, 40(sp)
  ADD t4, zero, zero
  SW t4, 48(sp)
  # implict jump to bb3
bb3:
  LW t4, 48(sp)
  ADD a7, t4, zero
  LW t4, 40(sp)
  ADD t6, t4, zero
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  ADDI t2, zero, 0
  LW t4, 60(sp)
  BLT t2, t4, bb8
  # implict jump to bb4
bb4:
  ADD t4, t6, zero
  SW t4, 44(sp)
  ADD t4, a7, zero
  SW t4, 4(sp)
  # implict jump to bb5
bb5:
  LW t4, 4(sp)
  ADD s9, t4, zero
  LW t4, 44(sp)
  ADD s8, t4, zero
  LW t4, 64(sp)
  ADDIW s4, t4, 1
  # implict jump to bb6
bb6:
  LW t4, 52(sp)
  BLT s4, t4, bb7
  JAL zero, bb1
bb7:
  ADD t4, s4, zero
  SW t4, 72(sp)
  ADD t4, s8, zero
  SW t4, 40(sp)
  ADD t4, s9, zero
  SW t4, 48(sp)
  JAL zero, bb3
bb8:
  ADD t4, zero, zero
  SW t4, 8(sp)
  # implict jump to bb9
bb9:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LW t4, 64(sp)
  SLLIW t1, t4, 5
  LD t4, 256(sp)
  ADD t1, t4, t1
  LW t4, 56(sp)
  SLLIW t0, t4, 2
  ADD t4, t1, t0
  SD t4, 248(sp)
  ADDI t1, zero, 1
  FCVT.S.W fs0, t1
  LA t1, .CONSTANT.7.0
  FLW fs1, 0(t1)
  FDIV.S fs1, fs0, fs1
  LD t4, 264(sp)
  FLW fs2, 0(t4)
  FMUL.S fs1, fs1, fs2
  LD t4, 248(sp)
  FSW fs1, 0(t4)
  ADDI t1, zero, 1
  LW t4, 52(sp)
  BLT t1, t4, bb59
  # implict jump to bb10
bb10:
  ADDI s11, zero, 1
  LW t4, 60(sp)
  BLT s11, t4, bb54
  # implict jump to bb11
bb11:
  ADDI s11, zero, 1
  # implict jump to bb12
bb12:
  ADDI s2, zero, 1
  LW t4, 52(sp)
  BLT s2, t4, bb18
  # implict jump to bb13
bb13:
  ADDI s2, zero, 1
  # implict jump to bb14
bb14:
  ADD s3, s11, zero
  ADD s0, s2, zero
  LD t4, 248(sp)
  FLW fs1, 0(t4)
  LA s1, .CONSTANT.7.1
  FLW fs2, 0(s1)
  FMUL.S fs1, fs1, fs2
  LW t4, 52(sp)
  FCVT.S.W fs2, t4
  FDIV.S fs1, fs1, fs2
  LA s1, .CONSTANT.7.1
  FLW fs2, 0(s1)
  FMUL.S fs1, fs1, fs2
  LW t4, 60(sp)
  FCVT.S.W fs2, t4
  FDIV.S fs1, fs1, fs2
  LD t4, 248(sp)
  FSW fs1, 0(t4)
  LW t4, 56(sp)
  ADDIW s5, t4, 1
  # implict jump to bb15
bb15:
  LW t4, 60(sp)
  BLT s5, t4, bb17
  # implict jump to bb16
bb16:
  ADD t4, s0, zero
  SW t4, 44(sp)
  ADD t4, s3, zero
  SW t4, 4(sp)
  JAL zero, bb5
bb17:
  ADD t4, s5, zero
  SW t4, 8(sp)
  JAL zero, bb9
bb18:
  ADDI t4, zero, 1
  SW t4, 12(sp)
  # implict jump to bb19
bb19:
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  ADDI s1, zero, 1
  LW t4, 60(sp)
  BLT s1, t4, bb25
  # implict jump to bb20
bb20:
  ADDI s1, zero, 1
  # implict jump to bb21
bb21:
  ADD s6, s1, zero
  LW t4, 24(sp)
  ADDIW s7, t4, 1
  # implict jump to bb22
bb22:
  LW t4, 52(sp)
  BLT s7, t4, bb24
  # implict jump to bb23
bb23:
  ADD s2, s7, zero
  ADD s11, s6, zero
  JAL zero, bb14
bb24:
  ADD t4, s7, zero
  SW t4, 12(sp)
  JAL zero, bb19
bb25:
  ADDI t4, zero, 1
  SW t4, 20(sp)
  # implict jump to bb26
bb26:
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  LD t4, 248(sp)
  FLW fs1, 0(t4)
  LW t4, 24(sp)
  SLLIW s10, t4, 5
  LD t4, 264(sp)
  ADD s10, t4, s10
  LW t4, 68(sp)
  SLLIW t1, t4, 2
  ADD s10, s10, t1
  FLW fs2, 0(s10)
  LW t4, 52(sp)
  FCVT.S.W fs3, t4
  LA s10, .CONSTANT.7.2
  FLW fs4, 0(s10)
  FDIV.S fs3, fs4, fs3
  LW t4, 64(sp)
  FCVT.S.W fs4, t4
  LA s10, .CONSTANT.7.3
  FLW fs5, 0(s10)
  FADD.S fs4, fs4, fs5
  FMUL.S fs3, fs3, fs4
  LW t4, 24(sp)
  FCVT.S.W fs4, t4
  FMUL.S fs3, fs3, fs4
  ADDI s10, zero, 2
  FCVT.S.W fs4, s10
  LA s10, .CONSTANT.7.2
  FLW fs5, 0(s10)
  FDIV.S fs4, fs5, fs4
  FADD.S fs3, fs3, fs4
  LA s10, .CONSTANT.7.4
  FLW fs5, 0(s10)
  FLT.S s10, fs5, fs3
  BNE s10, zero, bb53
  # implict jump to bb27
bb27:
  LA s10, .CONSTANT.7.4
  FLW fs5, 0(s10)
  LA s10, .CONSTANT.7.4
  FLW fs6, 0(s10)
  FSGNJN.S fs5, fs5, fs6
  FLT.S s10, fs3, fs5
  # implict jump to bb28
bb28:
  BNE s10, zero, bb52
  # implict jump to bb29
bb29:
  FSGNJ.S fs5, fs3, fs3
  # implict jump to bb30
bb30:
  LA s10, .CONSTANT.7.2
  FLW fs3, 0(s10)
  FLT.S s10, fs3, fs5
  BNE s10, zero, bb51
  # implict jump to bb31
bb31:
  FSGNJ.S fs3, fs5, fs5
  # implict jump to bb32
bb32:
  LA s10, .CONSTANT.7.2
  FLW fs5, 0(s10)
  LA s10, .CONSTANT.7.2
  FLW fs6, 0(s10)
  FSGNJN.S fs5, fs5, fs6
  FLT.S s10, fs3, fs5
  BNE s10, zero, bb50
  # implict jump to bb33
bb33:
  FSGNJ.S fs6, fs3, fs3
  # implict jump to bb34
bb34:
  FSGNJ.S fa0, fs6, fs6
  CALL my_sin_impl
  FSGNJ.D fs3, fa0, fa0
  FMUL.S fs2, fs2, fs3
  LW t4, 60(sp)
  FCVT.S.W fs3, t4
  LA s10, .CONSTANT.7.2
  FLW fs6, 0(s10)
  FDIV.S fs3, fs6, fs3
  LW t4, 56(sp)
  FCVT.S.W fs6, t4
  LA s10, .CONSTANT.7.3
  FLW fs7, 0(s10)
  FADD.S fs6, fs6, fs7
  FMUL.S fs3, fs3, fs6
  LW t4, 68(sp)
  FCVT.S.W fs6, t4
  FMUL.S fs3, fs3, fs6
  FADD.S fs3, fs3, fs4
  LA s10, .CONSTANT.7.4
  FLW fs4, 0(s10)
  FLT.S s10, fs4, fs3
  BNE s10, zero, bb49
  # implict jump to bb35
bb35:
  LA s10, .CONSTANT.7.4
  FLW fs4, 0(s10)
  LA s10, .CONSTANT.7.4
  FLW fs6, 0(s10)
  FSGNJN.S fs4, fs4, fs6
  FLT.S s10, fs3, fs4
  # implict jump to bb36
bb36:
  BNE s10, zero, bb48
  # implict jump to bb37
bb37:
  FSGNJ.S fs4, fs3, fs3
  # implict jump to bb38
bb38:
  LA s10, .CONSTANT.7.2
  FLW fs3, 0(s10)
  FLT.S s10, fs3, fs4
  BNE s10, zero, bb47
  # implict jump to bb39
bb39:
  FSGNJ.S fs3, fs4, fs4
  # implict jump to bb40
bb40:
  FLT.S s10, fs3, fs5
  BNE s10, zero, bb46
  # implict jump to bb41
bb41:
  FSGNJ.S fs4, fs3, fs3
  # implict jump to bb42
bb42:
  FSGNJ.S fa0, fs4, fs4
  CALL my_sin_impl
  FMUL.S fs2, fs2, fa0
  FADD.S fs1, fs1, fs2
  LD t4, 248(sp)
  FSW fs1, 0(t4)
  LW t3, 68(sp)
  ADDIW t4, t3, 1
  SW t4, 16(sp)
  # implict jump to bb43
bb43:
  LW t4, 16(sp)
  LW t3, 60(sp)
  BLT t4, t3, bb45
  # implict jump to bb44
bb44:
  LW t4, 16(sp)
  ADD s1, t4, zero
  JAL zero, bb21
bb45:
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  JAL zero, bb26
bb46:
  LA s10, .CONSTANT.7.4
  FLW fs5, 0(s10)
  FADD.S fs3, fs3, fs5
  FSGNJ.S fs4, fs3, fs3
  JAL zero, bb42
bb47:
  LA s10, .CONSTANT.7.4
  FLW fs6, 0(s10)
  FSUB.S fs4, fs4, fs6
  FSGNJ.S fs3, fs4, fs4
  JAL zero, bb40
bb48:
  LA s10, .CONSTANT.7.4
  FLW fs6, 0(s10)
  FDIV.S fs6, fs3, fs6
  FCVT.W.S s10, fs6, rtz
  FCVT.S.W fs6, s10
  LA s10, .CONSTANT.7.4
  FLW fs7, 0(s10)
  FMUL.S fs6, fs6, fs7
  FSUB.S fs3, fs3, fs6
  FSGNJ.S fs4, fs3, fs3
  JAL zero, bb38
bb49:
  ADDI s10, zero, 1
  JAL zero, bb36
bb50:
  LA s10, .CONSTANT.7.4
  FLW fs7, 0(s10)
  FADD.S fs3, fs3, fs7
  FSGNJ.S fs6, fs3, fs3
  JAL zero, bb34
bb51:
  LA s10, .CONSTANT.7.4
  FLW fs6, 0(s10)
  FSUB.S fs5, fs5, fs6
  FSGNJ.S fs3, fs5, fs5
  JAL zero, bb32
bb52:
  LA s10, .CONSTANT.7.4
  FLW fs6, 0(s10)
  FDIV.S fs6, fs3, fs6
  FCVT.W.S s10, fs6, rtz
  FCVT.S.W fs6, s10
  LA s10, .CONSTANT.7.4
  FLW fs7, 0(s10)
  FMUL.S fs6, fs6, fs7
  FSUB.S fs3, fs3, fs6
  FSGNJ.S fs5, fs3, fs3
  JAL zero, bb30
bb53:
  ADDI s10, zero, 1
  JAL zero, bb28
bb54:
  ADDI t4, zero, 1
  SW t4, 32(sp)
  # implict jump to bb55
bb55:
  LW t4, 32(sp)
  ADD t1, t4, zero
  LD t4, 248(sp)
  FLW fs1, 0(t4)
  LA s2, .CONSTANT.7.1
  FLW fs2, 0(s2)
  FDIV.S fs2, fs0, fs2
  SLLIW s2, t1, 2
  LD t4, 264(sp)
  ADD s2, t4, s2
  FLW fs3, 0(s2)
  FMUL.S fs2, fs2, fs3
  FADD.S fs1, fs1, fs2
  LD t4, 248(sp)
  FSW fs1, 0(t4)
  ADDIW t4, t1, 1
  SW t4, 28(sp)
  # implict jump to bb56
bb56:
  LW t4, 28(sp)
  LW t3, 60(sp)
  BLT t4, t3, bb58
  # implict jump to bb57
bb57:
  LW t4, 28(sp)
  ADD s11, t4, zero
  JAL zero, bb12
bb58:
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  JAL zero, bb55
bb59:
  ADDI t4, zero, 1
  SW t4, 0(sp)
  # implict jump to bb60
bb60:
  LW t4, 0(sp)
  ADD s11, t4, zero
  LD t4, 248(sp)
  FLW fs1, 0(t4)
  LA t0, .CONSTANT.7.1
  FLW fs2, 0(t0)
  FDIV.S fs2, fs0, fs2
  SLLIW t0, s11, 5
  LD t4, 264(sp)
  ADD t0, t4, t0
  FLW fs3, 0(t0)
  FMUL.S fs2, fs2, fs3
  FADD.S fs1, fs1, fs2
  LD t4, 248(sp)
  FSW fs1, 0(t4)
  ADDIW t4, s11, 1
  SW t4, 36(sp)
  # implict jump to bb61
bb61:
  LW t4, 36(sp)
  LW t3, 52(sp)
  BLT t4, t3, bb62
  JAL zero, bb10
bb62:
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  JAL zero, bb60
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
  BNE s0, zero, bb68
  # implict jump to bb64
bb64:
  FSGNJN.S fs1, fs0, fs0
  # implict jump to bb65
bb65:
  LA s0, .CONSTANT.7.5
  FLW fs2, 0(s0)
  FLE.S s0, fs1, fs2
  BNE s0, zero, bb67
  # implict jump to bb66
bb66:
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
bb67:
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  FLD fs2, 32(sp)
  FLD fs3, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb68:
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb65
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
  ADDI sp, sp, -256
  SD ra, 72(sp)
  SD s0, 80(sp)
  SD s1, 88(sp)
  SD s2, 96(sp)
  SD s4, 104(sp)
  SD s3, 112(sp)
  SD s5, 120(sp)
  SD s6, 128(sp)
  SD s7, 160(sp)
  SD s8, 168(sp)
  SD s9, 176(sp)
  SD s10, 184(sp)
  SD s11, 192(sp)
  FSD fs0, 200(sp)
  FSD fs1, 208(sp)
  FSD fs2, 216(sp)
  FSD fs3, 224(sp)
  FSD fs4, 232(sp)
  FSD fs5, 240(sp)
  FSD fs6, 248(sp)
  ADD t4, a0, zero
  SD t4, 144(sp)
  ADD t4, a1, zero
  SD t4, 136(sp)
  ADD t4, a2, zero
  SW t4, 56(sp)
  ADD t4, a3, zero
  SW t4, 60(sp)
  LW t4, 56(sp)
  BLT zero, t4, bb72
  # implict jump to bb71
bb71:
  LD ra, 72(sp)
  LD s0, 80(sp)
  LD s1, 88(sp)
  LD s2, 96(sp)
  LD s4, 104(sp)
  LD s3, 112(sp)
  LD s5, 120(sp)
  LD s6, 128(sp)
  LD s7, 160(sp)
  LD s8, 168(sp)
  LD s9, 176(sp)
  LD s10, 184(sp)
  LD s11, 192(sp)
  FLD fs0, 200(sp)
  FLD fs1, 208(sp)
  FLD fs2, 216(sp)
  FLD fs3, 224(sp)
  FLD fs4, 232(sp)
  FLD fs5, 240(sp)
  FLD fs6, 248(sp)
  ADDI sp, sp, 256
  JALR zero, 0(ra)
bb72:
  ADD t4, zero, zero
  SW t4, 12(sp)
  ADD t4, zero, zero
  SW t4, 44(sp)
  ADD t4, zero, zero
  SW t4, 48(sp)
  # implict jump to bb73
bb73:
  LW t4, 48(sp)
  ADD a5, t4, zero
  LW t4, 44(sp)
  ADD a6, t4, zero
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  LW t4, 60(sp)
  BLT zero, t4, bb78
  # implict jump to bb74
bb74:
  ADD t4, a6, zero
  SW t4, 64(sp)
  ADD t4, a5, zero
  SW t4, 40(sp)
  # implict jump to bb75
bb75:
  LW t4, 40(sp)
  ADD s1, t4, zero
  LW t4, 64(sp)
  ADD s2, t4, zero
  LW t4, 36(sp)
  ADDIW s7, t4, 1
  # implict jump to bb76
bb76:
  LW t4, 56(sp)
  BLT s7, t4, bb77
  JAL zero, bb71
bb77:
  ADD t4, s7, zero
  SW t4, 12(sp)
  ADD t4, s2, zero
  SW t4, 44(sp)
  ADD t4, s1, zero
  SW t4, 48(sp)
  JAL zero, bb73
bb78:
  ADD t4, zero, zero
  SW t4, 4(sp)
  ADD t4, a5, zero
  SW t4, 16(sp)
  # implict jump to bb79
bb79:
  LW t4, 16(sp)
  ADD s11, t4, zero
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  LW t4, 36(sp)
  SLLIW s10, t4, 5
  LD t4, 144(sp)
  ADD s10, t4, s10
  LW t4, 52(sp)
  SLLIW s9, t4, 2
  ADD t4, s10, s9
  SD t4, 152(sp)
  FCVT.S.L fs0, zero
  LD t4, 152(sp)
  FSW fs0, 0(t4)
  LW t4, 56(sp)
  BLT zero, t4, bb85
  # implict jump to bb80
bb80:
  ADD s10, zero, zero
  # implict jump to bb81
bb81:
  ADD s4, s11, zero
  ADD s8, s10, zero
  LW t4, 52(sp)
  ADDIW s5, t4, 1
  # implict jump to bb82
bb82:
  LW t4, 60(sp)
  BLT s5, t4, bb84
  # implict jump to bb83
bb83:
  ADD t4, s8, zero
  SW t4, 64(sp)
  ADD t4, s4, zero
  SW t4, 40(sp)
  JAL zero, bb75
bb84:
  ADD t4, s5, zero
  SW t4, 4(sp)
  ADD t4, s4, zero
  SW t4, 16(sp)
  JAL zero, bb79
bb85:
  ADD t4, zero, zero
  SW t4, 24(sp)
  # implict jump to bb86
bb86:
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  LW t4, 60(sp)
  BLT zero, t4, bb92
  # implict jump to bb87
bb87:
  ADD t4, zero, zero
  SW t4, 8(sp)
  # implict jump to bb88
bb88:
  LW t4, 8(sp)
  ADD s3, t4, zero
  LW t3, 0(sp)
  ADDIW t4, t3, 1
  SW t4, 20(sp)
  # implict jump to bb89
bb89:
  LW t4, 20(sp)
  LW t3, 56(sp)
  BLT t4, t3, bb91
  # implict jump to bb90
bb90:
  LW t4, 20(sp)
  ADD s10, t4, zero
  ADD s11, s3, zero
  JAL zero, bb81
bb91:
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  JAL zero, bb86
bb92:
  ADD t4, zero, zero
  SW t4, 32(sp)
  # implict jump to bb93
bb93:
  LW t4, 32(sp)
  ADD s6, t4, zero
  LD t4, 152(sp)
  FLW fs0, 0(t4)
  LW t4, 0(sp)
  SLLIW s9, t4, 5
  LD t4, 136(sp)
  ADD s9, t4, s9
  SLLIW s0, s6, 2
  ADD s0, s9, s0
  FLW fs1, 0(s0)
  LW t4, 56(sp)
  FCVT.S.W fs2, t4
  LA s0, .CONSTANT.7.2
  FLW fs3, 0(s0)
  FDIV.S fs2, fs3, fs2
  LW t4, 0(sp)
  FCVT.S.W fs3, t4
  LA s0, .CONSTANT.7.3
  FLW fs4, 0(s0)
  FADD.S fs3, fs3, fs4
  FMUL.S fs2, fs2, fs3
  LW t4, 36(sp)
  FCVT.S.W fs3, t4
  FMUL.S fs2, fs2, fs3
  ADDI s0, zero, 2
  FCVT.S.W fs3, s0
  LA s0, .CONSTANT.7.2
  FLW fs4, 0(s0)
  FDIV.S fs3, fs4, fs3
  FADD.S fs2, fs2, fs3
  LA s0, .CONSTANT.7.4
  FLW fs4, 0(s0)
  FLT.S s0, fs4, fs2
  BNE s0, zero, bb120
  # implict jump to bb94
bb94:
  LA s0, .CONSTANT.7.4
  FLW fs4, 0(s0)
  LA s0, .CONSTANT.7.4
  FLW fs5, 0(s0)
  FSGNJN.S fs4, fs4, fs5
  FLT.S s0, fs2, fs4
  # implict jump to bb95
bb95:
  BNE s0, zero, bb119
  # implict jump to bb96
bb96:
  FSGNJ.S fs4, fs2, fs2
  # implict jump to bb97
bb97:
  LA s0, .CONSTANT.7.2
  FLW fs2, 0(s0)
  FLT.S s0, fs2, fs4
  BNE s0, zero, bb118
  # implict jump to bb98
bb98:
  FSGNJ.S fs2, fs4, fs4
  # implict jump to bb99
bb99:
  LA s0, .CONSTANT.7.2
  FLW fs4, 0(s0)
  LA s0, .CONSTANT.7.2
  FLW fs5, 0(s0)
  FSGNJN.S fs4, fs4, fs5
  FLT.S s0, fs2, fs4
  BNE s0, zero, bb117
  # implict jump to bb100
bb100:
  FSGNJ.S fs5, fs2, fs2
  # implict jump to bb101
bb101:
  FSGNJ.S fa0, fs5, fs5
  CALL my_sin_impl
  FSGNJ.D fs2, fa0, fa0
  FMUL.S fs1, fs1, fs2
  LW t4, 60(sp)
  FCVT.S.W fs2, t4
  LA s0, .CONSTANT.7.2
  FLW fs5, 0(s0)
  FDIV.S fs2, fs5, fs2
  FCVT.S.W fs5, s6
  LA s0, .CONSTANT.7.3
  FLW fs6, 0(s0)
  FADD.S fs5, fs5, fs6
  FMUL.S fs2, fs2, fs5
  LW t4, 52(sp)
  FCVT.S.W fs5, t4
  FMUL.S fs2, fs2, fs5
  FADD.S fs2, fs2, fs3
  LA s0, .CONSTANT.7.4
  FLW fs3, 0(s0)
  FLT.S s0, fs3, fs2
  BNE s0, zero, bb116
  # implict jump to bb102
bb102:
  LA s0, .CONSTANT.7.4
  FLW fs3, 0(s0)
  LA s0, .CONSTANT.7.4
  FLW fs5, 0(s0)
  FSGNJN.S fs3, fs3, fs5
  FLT.S s0, fs2, fs3
  # implict jump to bb103
bb103:
  BNE s0, zero, bb115
  # implict jump to bb104
bb104:
  FSGNJ.S fs3, fs2, fs2
  # implict jump to bb105
bb105:
  LA s0, .CONSTANT.7.2
  FLW fs2, 0(s0)
  FLT.S s0, fs2, fs3
  BNE s0, zero, bb114
  # implict jump to bb106
bb106:
  FSGNJ.S fs2, fs3, fs3
  # implict jump to bb107
bb107:
  FLT.S s0, fs2, fs4
  BNE s0, zero, bb113
  # implict jump to bb108
bb108:
  FSGNJ.S fs3, fs2, fs2
  # implict jump to bb109
bb109:
  FSGNJ.S fa0, fs3, fs3
  CALL my_sin_impl
  FMUL.S fs1, fs1, fa0
  FADD.S fs0, fs0, fs1
  LD t4, 152(sp)
  FSW fs0, 0(t4)
  ADDIW t4, s6, 1
  SW t4, 28(sp)
  # implict jump to bb110
bb110:
  LW t4, 28(sp)
  LW t3, 60(sp)
  BLT t4, t3, bb112
  # implict jump to bb111
bb111:
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  JAL zero, bb88
bb112:
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  JAL zero, bb93
bb113:
  LA s0, .CONSTANT.7.4
  FLW fs4, 0(s0)
  FADD.S fs2, fs2, fs4
  FSGNJ.S fs3, fs2, fs2
  JAL zero, bb109
bb114:
  LA s0, .CONSTANT.7.4
  FLW fs5, 0(s0)
  FSUB.S fs3, fs3, fs5
  FSGNJ.S fs2, fs3, fs3
  JAL zero, bb107
bb115:
  LA s0, .CONSTANT.7.4
  FLW fs5, 0(s0)
  FDIV.S fs5, fs2, fs5
  FCVT.W.S s0, fs5, rtz
  FCVT.S.W fs5, s0
  LA s0, .CONSTANT.7.4
  FLW fs6, 0(s0)
  FMUL.S fs5, fs5, fs6
  FSUB.S fs2, fs2, fs5
  FSGNJ.S fs3, fs2, fs2
  JAL zero, bb105
bb116:
  ADDI s0, zero, 1
  JAL zero, bb103
bb117:
  LA s0, .CONSTANT.7.4
  FLW fs6, 0(s0)
  FADD.S fs2, fs2, fs6
  FSGNJ.S fs5, fs2, fs2
  JAL zero, bb101
bb118:
  LA s0, .CONSTANT.7.4
  FLW fs5, 0(s0)
  FSUB.S fs4, fs4, fs5
  FSGNJ.S fs2, fs4, fs4
  JAL zero, bb99
bb119:
  LA s0, .CONSTANT.7.4
  FLW fs5, 0(s0)
  FDIV.S fs5, fs2, fs5
  FCVT.W.S s0, fs5, rtz
  FCVT.S.W fs5, s0
  LA s0, .CONSTANT.7.4
  FLW fs6, 0(s0)
  FMUL.S fs5, fs5, fs6
  FSUB.S fs2, fs2, fs5
  FSGNJ.S fs4, fs2, fs2
  JAL zero, bb97
bb120:
  ADDI s0, zero, 1
  JAL zero, bb95
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
  BNE s0, zero, bb133
  # implict jump to bb122
bb122:
  LA s0, .CONSTANT.7.4
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FSGNJN.S fs1, fs1, fs2
  FLT.S s0, fs0, fs1
  # implict jump to bb123
bb123:
  BNE s0, zero, bb132
  # implict jump to bb124
bb124:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb125
bb125:
  LA s0, .CONSTANT.7.2
  FLW fs0, 0(s0)
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb131
  # implict jump to bb126
bb126:
  FSGNJ.S fs0, fs1, fs1
  # implict jump to bb127
bb127:
  LA s0, .CONSTANT.7.2
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.2
  FLW fs2, 0(s0)
  FSGNJN.S fs1, fs1, fs2
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb130
  # implict jump to bb128
bb128:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb129
bb129:
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
bb130:
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FADD.S fs0, fs0, fs2
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb129
bb131:
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FSUB.S fs1, fs1, fs2
  FSGNJ.S fs0, fs1, fs1
  JAL zero, bb127
bb132:
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
  JAL zero, bb125
bb133:
  ADDI s0, zero, 1
  JAL zero, bb123
write_mat:
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s5, 24(sp)
  FSD fs0, 32(sp)
  SD s2, 40(sp)
  SD s3, 48(sp)
  SD s4, 56(sp)
  SD s6, 64(sp)
  SD s7, 72(sp)
  SD s8, 80(sp)
  SD s9, 88(sp)
  SD s10, 96(sp)
  ADD s2, a0, zero
  ADD s3, a1, zero
  ADD s4, a2, zero
  BLT zero, s3, bb136
  # implict jump to bb135
bb135:
  ADDI a0, zero, 10
  CALL putch
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s5, 24(sp)
  FLD fs0, 32(sp)
  LD s2, 40(sp)
  LD s3, 48(sp)
  LD s4, 56(sp)
  LD s6, 64(sp)
  LD s7, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  LD s10, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb136:
  ADD s5, zero, zero
  # implict jump to bb137
bb137:
  ADD s6, s5, zero
  SLLIW s7, s6, 5
  ADD s7, s2, s7
  FLW fs0, 0(s7)
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  ADDI s8, zero, 1
  BLT s8, s4, bb141
  # implict jump to bb138
bb138:
  ADDI a0, zero, 10
  CALL putch
  ADDIW s1, s6, 1
  # implict jump to bb139
bb139:
  BLT s1, s3, bb140
  JAL zero, bb135
bb140:
  ADD s5, s1, zero
  JAL zero, bb137
bb141:
  ADDI s8, zero, 1
  # implict jump to bb142
bb142:
  ADD s9, s8, zero
  ADDI a0, zero, 32
  CALL putch
  SLLIW s10, s9, 2
  ADD s10, s7, s10
  FLW fs0, 0(s10)
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  ADDIW s0, s9, 1
  # implict jump to bb143
bb143:
  BLT s0, s4, bb144
  JAL zero, bb138
bb144:
  ADD s8, s0, zero
  JAL zero, bb142
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
  BNE s0, zero, bb157
  # implict jump to bb146
bb146:
  LA s0, .CONSTANT.7.4
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FSGNJN.S fs1, fs1, fs2
  FLT.S s0, fs0, fs1
  # implict jump to bb147
bb147:
  BNE s0, zero, bb156
  # implict jump to bb148
bb148:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb149
bb149:
  LA s0, .CONSTANT.7.2
  FLW fs0, 0(s0)
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb155
  # implict jump to bb150
bb150:
  FSGNJ.S fs0, fs1, fs1
  # implict jump to bb151
bb151:
  LA s0, .CONSTANT.7.2
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.2
  FLW fs2, 0(s0)
  FSGNJN.S fs1, fs1, fs2
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb154
  # implict jump to bb152
bb152:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb153
bb153:
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
bb154:
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FADD.S fs0, fs0, fs2
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb153
bb155:
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FSUB.S fs1, fs1, fs2
  FSGNJ.S fs0, fs1, fs1
  JAL zero, bb151
bb156:
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
  JAL zero, bb149
bb157:
  ADDI s0, zero, 1
  JAL zero, bb147
main:
  ADDI sp, sp, -400
  SD ra, 200(sp)
  SD s0, 208(sp)
  SD s1, 216(sp)
  SD s2, 224(sp)
  SD s3, 232(sp)
  SD s4, 240(sp)
  SD s5, 248(sp)
  SD s6, 256(sp)
  SD s7, 264(sp)
  SD s8, 272(sp)
  SD s9, 280(sp)
  SD s10, 288(sp)
  SD s11, 296(sp)
  FSD fs0, 304(sp)
  FSD fs1, 312(sp)
  FSD fs4, 320(sp)
  FSD fs2, 328(sp)
  FSD fs5, 336(sp)
  FSD fs3, 352(sp)
  FSD fs6, 360(sp)
  FSD fs7, 368(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 68(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 64(sp)
  LW t4, 68(sp)
  BLT zero, t4, bb292
  # implict jump to bb159
bb159:
  LW t4, 68(sp)
  BLT zero, t4, bb243
  # implict jump to bb160
bb160:
  LW t4, 68(sp)
  BLT zero, t4, bb234
  # implict jump to bb161
bb161:
  ADDI a0, zero, 10
  CALL putch
  LW t4, 68(sp)
  BLT zero, t4, bb173
  # implict jump to bb162
bb162:
  LW t4, 68(sp)
  BLT zero, t4, bb164
  # implict jump to bb163
bb163:
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 200(sp)
  LD s0, 208(sp)
  LD s1, 216(sp)
  LD s2, 224(sp)
  LD s3, 232(sp)
  LD s4, 240(sp)
  LD s5, 248(sp)
  LD s6, 256(sp)
  LD s7, 264(sp)
  LD s8, 272(sp)
  LD s9, 280(sp)
  LD s10, 288(sp)
  LD s11, 296(sp)
  FLD fs0, 304(sp)
  FLD fs1, 312(sp)
  FLD fs4, 320(sp)
  FLD fs2, 328(sp)
  FLD fs5, 336(sp)
  FLD fs3, 352(sp)
  FLD fs6, 360(sp)
  FLD fs7, 368(sp)
  ADDI sp, sp, 400
  JALR zero, 0(ra)
bb164:
  ADD s0, zero, zero
  # implict jump to bb165
bb165:
  ADD s1, s0, zero
  SLLIW s2, s1, 5
  LA s3, test_idct
  ADD s2, s3, s2
  FLW fs1, 0(s2)
  FSGNJ.S fa0, fs1, fs1
  CALL putfloat
  ADDI s3, zero, 1
  LW t4, 64(sp)
  BLT s3, t4, bb169
  # implict jump to bb166
bb166:
  ADDI a0, zero, 10
  CALL putch
  ADDIW t4, s1, 1
  SW t4, 92(sp)
  # implict jump to bb167
bb167:
  LW t4, 92(sp)
  LW t3, 68(sp)
  BLT t4, t3, bb168
  JAL zero, bb163
bb168:
  LW t4, 92(sp)
  ADD s0, t4, zero
  JAL zero, bb165
bb169:
  ADDI s3, zero, 1
  # implict jump to bb170
bb170:
  ADD s6, s3, zero
  ADDI a0, zero, 32
  CALL putch
  SLLIW s7, s6, 2
  ADD s7, s2, s7
  FLW fs1, 0(s7)
  FSGNJ.S fa0, fs1, fs1
  CALL putfloat
  ADDIW t4, s6, 1
  SW t4, 88(sp)
  # implict jump to bb171
bb171:
  LW t4, 88(sp)
  LW t3, 64(sp)
  BLT t4, t3, bb172
  JAL zero, bb166
bb172:
  LW t4, 88(sp)
  ADD s3, t4, zero
  JAL zero, bb170
bb173:
  ADD s4, zero, zero
  ADD s5, zero, zero
  ADD t4, zero, zero
  SW t4, 136(sp)
  # implict jump to bb174
bb174:
  LW t4, 136(sp)
  ADD s9, t4, zero
  ADD s10, s5, zero
  ADD t4, s4, zero
  SW t4, 120(sp)
  LW t4, 64(sp)
  BLT zero, t4, bb179
  # implict jump to bb175
bb175:
  # implict jump to bb176
bb176:
  ADD t4, s9, zero
  SW t4, 132(sp)
  ADD t4, s10, zero
  SW t4, 4(sp)
  LW t3, 120(sp)
  ADDIW t4, t3, 1
  SW t4, 84(sp)
  # implict jump to bb177
bb177:
  LW t4, 84(sp)
  LW t3, 68(sp)
  BLT t4, t3, bb178
  JAL zero, bb162
bb178:
  LW t4, 84(sp)
  ADD s4, t4, zero
  LW t4, 4(sp)
  ADD s5, t4, zero
  LW t3, 132(sp)
  ADD t4, t3, zero
  SW t4, 136(sp)
  JAL zero, bb174
bb179:
  ADD t4, zero, zero
  SW t4, 140(sp)
  # implict jump to bb180
bb180:
  LW t3, 140(sp)
  ADD t4, t3, zero
  SW t4, 116(sp)
  LW t4, 120(sp)
  SLLIW s3, t4, 5
  LA s0, test_idct
  ADD s0, s0, s3
  LW t4, 116(sp)
  SLLIW s3, t4, 2
  ADD t4, s0, s3
  SD t4, 344(sp)
  ADDI s3, zero, 1
  FCVT.S.W fs0, s3
  LA s3, .CONSTANT.7.0
  FLW fs1, 0(s3)
  FDIV.S fs1, fs0, fs1
  LA s3, test_dct
  FLW fs2, 0(s3)
  FMUL.S fs1, fs1, fs2
  LD t4, 344(sp)
  FSW fs1, 0(t4)
  ADDI s3, zero, 1
  LW t4, 68(sp)
  BLT s3, t4, bb230
  # implict jump to bb181
bb181:
  ADDI s0, zero, 1
  LW t4, 64(sp)
  BLT s0, t4, bb225
  # implict jump to bb182
bb182:
  ADDI s0, zero, 1
  # implict jump to bb183
bb183:
  ADDI s1, zero, 1
  LW t4, 68(sp)
  BLT s1, t4, bb189
  # implict jump to bb184
bb184:
  ADDI s1, zero, 1
  # implict jump to bb185
bb185:
  ADD s7, s0, zero
  ADD s8, s1, zero
  LD t4, 344(sp)
  FLW fs1, 0(t4)
  LA s0, .CONSTANT.7.1
  FLW fs2, 0(s0)
  FMUL.S fs1, fs1, fs2
  LW t4, 68(sp)
  FCVT.S.W fs2, t4
  FDIV.S fs1, fs1, fs2
  LA s0, .CONSTANT.7.1
  FLW fs2, 0(s0)
  FMUL.S fs1, fs1, fs2
  LW t4, 64(sp)
  FCVT.S.W fs2, t4
  FDIV.S fs1, fs1, fs2
  LD t4, 344(sp)
  FSW fs1, 0(t4)
  LW t3, 116(sp)
  ADDIW t4, t3, 1
  SW t4, 8(sp)
  # implict jump to bb186
bb186:
  LW t4, 8(sp)
  LW t3, 64(sp)
  BLT t4, t3, bb188
  # implict jump to bb187
bb187:
  ADD s10, s8, zero
  ADD s9, s7, zero
  JAL zero, bb176
bb188:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 140(sp)
  JAL zero, bb180
bb189:
  ADDI t4, zero, 1
  SW t4, 36(sp)
  # implict jump to bb190
bb190:
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  ADDI s11, zero, 1
  LW t4, 64(sp)
  BLT s11, t4, bb196
  # implict jump to bb191
bb191:
  ADDI s11, zero, 1
  # implict jump to bb192
bb192:
  ADD t4, s11, zero
  SW t4, 172(sp)
  LW t3, 112(sp)
  ADDIW t4, t3, 1
  SW t4, 40(sp)
  # implict jump to bb193
bb193:
  LW t4, 40(sp)
  LW t3, 68(sp)
  BLT t4, t3, bb195
  # implict jump to bb194
bb194:
  LW t4, 40(sp)
  ADD s1, t4, zero
  LW t4, 172(sp)
  ADD s0, t4, zero
  JAL zero, bb185
bb195:
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  JAL zero, bb190
bb196:
  ADDI t4, zero, 1
  SW t4, 96(sp)
  # implict jump to bb197
bb197:
  LW t4, 96(sp)
  ADD s3, t4, zero
  LD t4, 344(sp)
  FLW fs1, 0(t4)
  LW t4, 112(sp)
  SLLIW s2, t4, 5
  LA s6, test_dct
  ADD s2, s6, s2
  SLLIW s6, s3, 2
  ADD s2, s2, s6
  FLW fs2, 0(s2)
  LW t4, 68(sp)
  FCVT.S.W fs3, t4
  LA s2, .CONSTANT.7.2
  FLW fs4, 0(s2)
  FDIV.S fs3, fs4, fs3
  LW t4, 120(sp)
  FCVT.S.W fs4, t4
  LA s2, .CONSTANT.7.3
  FLW fs5, 0(s2)
  FADD.S fs4, fs4, fs5
  FMUL.S fs3, fs3, fs4
  LW t4, 112(sp)
  FCVT.S.W fs4, t4
  FMUL.S fs3, fs3, fs4
  ADDI s2, zero, 2
  FCVT.S.W fs4, s2
  LA s2, .CONSTANT.7.2
  FLW fs5, 0(s2)
  FDIV.S fs4, fs5, fs4
  FADD.S fs3, fs3, fs4
  LA s2, .CONSTANT.7.4
  FLW fs5, 0(s2)
  FLT.S s2, fs5, fs3
  BNE s2, zero, bb224
  # implict jump to bb198
bb198:
  LA s2, .CONSTANT.7.4
  FLW fs5, 0(s2)
  LA s2, .CONSTANT.7.4
  FLW fs6, 0(s2)
  FSGNJN.S fs5, fs5, fs6
  FLT.S s2, fs3, fs5
  # implict jump to bb199
bb199:
  BNE s2, zero, bb223
  # implict jump to bb200
bb200:
  FSGNJ.S fs5, fs3, fs3
  # implict jump to bb201
bb201:
  LA s2, .CONSTANT.7.2
  FLW fs3, 0(s2)
  FLT.S s2, fs3, fs5
  BNE s2, zero, bb222
  # implict jump to bb202
bb202:
  FSGNJ.S fs3, fs5, fs5
  # implict jump to bb203
bb203:
  LA s2, .CONSTANT.7.2
  FLW fs5, 0(s2)
  LA s2, .CONSTANT.7.2
  FLW fs6, 0(s2)
  FSGNJN.S fs5, fs5, fs6
  FLT.S s2, fs3, fs5
  BNE s2, zero, bb221
  # implict jump to bb204
bb204:
  FSGNJ.S fs6, fs3, fs3
  # implict jump to bb205
bb205:
  FSGNJ.S fa0, fs6, fs6
  CALL my_sin_impl
  FSGNJ.D fs3, fa0, fa0
  FMUL.S fs2, fs2, fs3
  LW t4, 64(sp)
  FCVT.S.W fs3, t4
  LA s2, .CONSTANT.7.2
  FLW fs6, 0(s2)
  FDIV.S fs3, fs6, fs3
  LW t4, 116(sp)
  FCVT.S.W fs6, t4
  LA s2, .CONSTANT.7.3
  FLW fs7, 0(s2)
  FADD.S fs6, fs6, fs7
  FMUL.S fs3, fs3, fs6
  FCVT.S.W fs6, s3
  FMUL.S fs3, fs3, fs6
  FADD.S fs3, fs3, fs4
  LA s2, .CONSTANT.7.4
  FLW fs4, 0(s2)
  FLT.S s2, fs4, fs3
  BNE s2, zero, bb220
  # implict jump to bb206
bb206:
  LA s2, .CONSTANT.7.4
  FLW fs4, 0(s2)
  LA s2, .CONSTANT.7.4
  FLW fs6, 0(s2)
  FSGNJN.S fs4, fs4, fs6
  FLT.S s2, fs3, fs4
  # implict jump to bb207
bb207:
  BNE s2, zero, bb219
  # implict jump to bb208
bb208:
  FSGNJ.S fs4, fs3, fs3
  # implict jump to bb209
bb209:
  LA s2, .CONSTANT.7.2
  FLW fs3, 0(s2)
  FLT.S s2, fs3, fs4
  BNE s2, zero, bb218
  # implict jump to bb210
bb210:
  FSGNJ.S fs3, fs4, fs4
  # implict jump to bb211
bb211:
  FLT.S s2, fs3, fs5
  BNE s2, zero, bb217
  # implict jump to bb212
bb212:
  FSGNJ.S fs4, fs3, fs3
  # implict jump to bb213
bb213:
  FSGNJ.S fa0, fs4, fs4
  CALL my_sin_impl
  FSGNJ.D fs3, fa0, fa0
  FMUL.S fs2, fs2, fs3
  FADD.S fs1, fs1, fs2
  LD t4, 344(sp)
  FSW fs1, 0(t4)
  ADDIW t4, s3, 1
  SW t4, 148(sp)
  # implict jump to bb214
bb214:
  LW t4, 148(sp)
  LW t3, 64(sp)
  BLT t4, t3, bb216
  # implict jump to bb215
bb215:
  LW t4, 148(sp)
  ADD s11, t4, zero
  JAL zero, bb192
bb216:
  LW t3, 148(sp)
  ADD t4, t3, zero
  SW t4, 96(sp)
  JAL zero, bb197
bb217:
  LA s2, .CONSTANT.7.4
  FLW fs5, 0(s2)
  FADD.S fs3, fs3, fs5
  FSGNJ.S fs4, fs3, fs3
  JAL zero, bb213
bb218:
  LA s2, .CONSTANT.7.4
  FLW fs6, 0(s2)
  FSUB.S fs4, fs4, fs6
  FSGNJ.S fs3, fs4, fs4
  JAL zero, bb211
bb219:
  LA s2, .CONSTANT.7.4
  FLW fs6, 0(s2)
  FDIV.S fs6, fs3, fs6
  FCVT.W.S s2, fs6, rtz
  FCVT.S.W fs6, s2
  LA s2, .CONSTANT.7.4
  FLW fs7, 0(s2)
  FMUL.S fs6, fs6, fs7
  FSUB.S fs3, fs3, fs6
  FSGNJ.S fs4, fs3, fs3
  JAL zero, bb209
bb220:
  ADDI s2, zero, 1
  JAL zero, bb207
bb221:
  LA s2, .CONSTANT.7.4
  FLW fs7, 0(s2)
  FADD.S fs3, fs3, fs7
  FSGNJ.S fs6, fs3, fs3
  JAL zero, bb205
bb222:
  LA s2, .CONSTANT.7.4
  FLW fs6, 0(s2)
  FSUB.S fs5, fs5, fs6
  FSGNJ.S fs3, fs5, fs5
  JAL zero, bb203
bb223:
  LA s2, .CONSTANT.7.4
  FLW fs6, 0(s2)
  FDIV.S fs6, fs3, fs6
  FCVT.W.S s2, fs6, rtz
  FCVT.S.W fs6, s2
  LA s2, .CONSTANT.7.4
  FLW fs7, 0(s2)
  FMUL.S fs6, fs6, fs7
  FSUB.S fs3, fs3, fs6
  FSGNJ.S fs5, fs3, fs3
  JAL zero, bb201
bb224:
  ADDI s2, zero, 1
  JAL zero, bb199
bb225:
  ADDI t4, zero, 1
  SW t4, 128(sp)
  # implict jump to bb226
bb226:
  LW t4, 128(sp)
  ADD s11, t4, zero
  LD t4, 344(sp)
  FLW fs1, 0(t4)
  LA s3, .CONSTANT.7.1
  FLW fs2, 0(s3)
  FDIV.S fs2, fs0, fs2
  SLLIW s3, s11, 2
  LA s1, test_dct
  ADD s1, s1, s3
  FLW fs3, 0(s1)
  FMUL.S fs2, fs2, fs3
  FADD.S fs1, fs1, fs2
  LD t4, 344(sp)
  FSW fs1, 0(t4)
  ADDIW t4, s11, 1
  SW t4, 44(sp)
  # implict jump to bb227
bb227:
  LW t4, 44(sp)
  LW t3, 64(sp)
  BLT t4, t3, bb229
  # implict jump to bb228
bb228:
  LW t4, 44(sp)
  ADD s0, t4, zero
  JAL zero, bb183
bb229:
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 128(sp)
  JAL zero, bb226
bb230:
  ADDI t4, zero, 1
  SW t4, 124(sp)
  # implict jump to bb231
bb231:
  LW t4, 124(sp)
  ADD s0, t4, zero
  LD t4, 344(sp)
  FLW fs1, 0(t4)
  LA s1, .CONSTANT.7.1
  FLW fs2, 0(s1)
  FDIV.S fs2, fs0, fs2
  SLLIW s1, s0, 5
  LA s11, test_dct
  ADD s1, s11, s1
  FLW fs3, 0(s1)
  FMUL.S fs2, fs2, fs3
  FADD.S fs1, fs1, fs2
  LD t4, 344(sp)
  FSW fs1, 0(t4)
  ADDIW t4, s0, 1
  SW t4, 48(sp)
  # implict jump to bb232
bb232:
  LW t4, 48(sp)
  LW t3, 68(sp)
  BLT t4, t3, bb233
  JAL zero, bb181
bb233:
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 124(sp)
  JAL zero, bb231
bb234:
  ADD t4, zero, zero
  SW t4, 108(sp)
  # implict jump to bb235
bb235:
  LW t3, 108(sp)
  ADD t4, t3, zero
  SW t4, 100(sp)
  LW t4, 100(sp)
  SLLIW s2, t4, 5
  LA s3, test_dct
  ADD t4, s3, s2
  SD t4, 384(sp)
  LD t4, 384(sp)
  FLW fs0, 0(t4)
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  ADDI s3, zero, 1
  LW t4, 64(sp)
  BLT s3, t4, bb239
  # implict jump to bb236
bb236:
  ADDI a0, zero, 10
  CALL putch
  LW t3, 100(sp)
  ADDIW t4, t3, 1
  SW t4, 188(sp)
  # implict jump to bb237
bb237:
  LW t4, 188(sp)
  LW t3, 68(sp)
  BLT t4, t3, bb238
  JAL zero, bb161
bb238:
  LW t3, 188(sp)
  ADD t4, t3, zero
  SW t4, 108(sp)
  JAL zero, bb235
bb239:
  ADDI t4, zero, 1
  SW t4, 104(sp)
  # implict jump to bb240
bb240:
  LW t4, 104(sp)
  ADD s4, t4, zero
  ADDI a0, zero, 32
  CALL putch
  SLLIW s5, s4, 2
  LD t4, 384(sp)
  ADD s5, t4, s5
  FLW fs0, 0(s5)
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  ADDIW t4, s4, 1
  SW t4, 180(sp)
  # implict jump to bb241
bb241:
  LW t4, 180(sp)
  LW t3, 64(sp)
  BLT t4, t3, bb242
  JAL zero, bb236
bb242:
  LW t3, 180(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  JAL zero, bb240
bb243:
  ADD t4, zero, zero
  SW t4, 24(sp)
  ADD t4, zero, zero
  SW t4, 32(sp)
  ADD t4, zero, zero
  SW t4, 0(sp)
  # implict jump to bb244
bb244:
  LW t4, 0(sp)
  ADD s5, t4, zero
  LW t4, 32(sp)
  ADD s3, t4, zero
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LW t4, 64(sp)
  BLT zero, t4, bb249
  # implict jump to bb245
bb245:
  ADD s0, s5, zero
  # implict jump to bb246
bb246:
  ADD t4, s0, zero
  SW t4, 192(sp)
  ADD t4, s3, zero
  SW t4, 164(sp)
  LW t3, 28(sp)
  ADDIW t4, t3, 1
  SW t4, 168(sp)
  # implict jump to bb247
bb247:
  LW t4, 168(sp)
  LW t3, 68(sp)
  BLT t4, t3, bb248
  JAL zero, bb160
bb248:
  LW t3, 168(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t3, 164(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LW t3, 192(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  JAL zero, bb244
bb249:
  ADD t4, zero, zero
  SW t4, 20(sp)
  ADD t4, s5, zero
  SW t4, 16(sp)
  # implict jump to bb250
bb250:
  LW t4, 16(sp)
  ADD s5, t4, zero
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LW t4, 28(sp)
  SLLIW s11, t4, 5
  LA s10, test_dct
  ADD s10, s10, s11
  LW t4, 12(sp)
  SLLIW s11, t4, 2
  ADD t4, s10, s11
  SD t4, 376(sp)
  FCVT.S.L fs0, zero
  LD t4, 376(sp)
  FSW fs0, 0(t4)
  LW t4, 68(sp)
  BLT zero, t4, bb256
  # implict jump to bb251
bb251:
  ADD s11, zero, zero
  # implict jump to bb252
bb252:
  ADD t4, s5, zero
  SW t4, 156(sp)
  ADD s1, s11, zero
  LW t3, 12(sp)
  ADDIW t4, t3, 1
  SW t4, 160(sp)
  # implict jump to bb253
bb253:
  LW t4, 160(sp)
  LW t3, 64(sp)
  BLT t4, t3, bb255
  # implict jump to bb254
bb254:
  ADD s3, s1, zero
  LW t4, 156(sp)
  ADD s0, t4, zero
  JAL zero, bb246
bb255:
  LW t3, 160(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  LW t3, 156(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  JAL zero, bb250
bb256:
  ADD t4, zero, zero
  SW t4, 76(sp)
  # implict jump to bb257
bb257:
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  LW t4, 64(sp)
  BLT zero, t4, bb263
  # implict jump to bb258
bb258:
  ADD s10, zero, zero
  # implict jump to bb259
bb259:
  ADD s4, s10, zero
  LW t3, 72(sp)
  ADDIW t4, t3, 1
  SW t4, 184(sp)
  # implict jump to bb260
bb260:
  LW t4, 184(sp)
  LW t3, 68(sp)
  BLT t4, t3, bb262
  # implict jump to bb261
bb261:
  LW t4, 184(sp)
  ADD s11, t4, zero
  ADD s5, s4, zero
  JAL zero, bb252
bb262:
  LW t3, 184(sp)
  ADD t4, t3, zero
  SW t4, 76(sp)
  JAL zero, bb257
bb263:
  ADD t4, zero, zero
  SW t4, 80(sp)
  # implict jump to bb264
bb264:
  LW t4, 80(sp)
  ADD s6, t4, zero
  LD t4, 376(sp)
  FLW fs0, 0(t4)
  LW t4, 72(sp)
  SLLIW s9, t4, 5
  LA s2, test_block
  ADD s2, s2, s9
  SLLIW s9, s6, 2
  ADD s2, s2, s9
  FLW fs1, 0(s2)
  LW t4, 68(sp)
  FCVT.S.W fs2, t4
  LA s2, .CONSTANT.7.2
  FLW fs3, 0(s2)
  FDIV.S fs2, fs3, fs2
  LW t4, 72(sp)
  FCVT.S.W fs3, t4
  LA s2, .CONSTANT.7.3
  FLW fs4, 0(s2)
  FADD.S fs3, fs3, fs4
  FMUL.S fs2, fs2, fs3
  LW t4, 28(sp)
  FCVT.S.W fs3, t4
  FMUL.S fs2, fs2, fs3
  ADDI s2, zero, 2
  FCVT.S.W fs3, s2
  LA s2, .CONSTANT.7.2
  FLW fs4, 0(s2)
  FDIV.S fs3, fs4, fs3
  FADD.S fs2, fs2, fs3
  LA s2, .CONSTANT.7.4
  FLW fs4, 0(s2)
  FLT.S s2, fs4, fs2
  BNE s2, zero, bb291
  # implict jump to bb265
bb265:
  LA s2, .CONSTANT.7.4
  FLW fs4, 0(s2)
  LA s2, .CONSTANT.7.4
  FLW fs5, 0(s2)
  FSGNJN.S fs4, fs4, fs5
  FLT.S s2, fs2, fs4
  # implict jump to bb266
bb266:
  BNE s2, zero, bb290
  # implict jump to bb267
bb267:
  FSGNJ.S fs4, fs2, fs2
  # implict jump to bb268
bb268:
  LA s2, .CONSTANT.7.2
  FLW fs2, 0(s2)
  FLT.S s2, fs2, fs4
  BNE s2, zero, bb289
  # implict jump to bb269
bb269:
  FSGNJ.S fs2, fs4, fs4
  # implict jump to bb270
bb270:
  LA s2, .CONSTANT.7.2
  FLW fs4, 0(s2)
  LA s2, .CONSTANT.7.2
  FLW fs5, 0(s2)
  FSGNJN.S fs4, fs4, fs5
  FLT.S s2, fs2, fs4
  BNE s2, zero, bb288
  # implict jump to bb271
bb271:
  FSGNJ.S fs5, fs2, fs2
  # implict jump to bb272
bb272:
  FSGNJ.S fa0, fs5, fs5
  CALL my_sin_impl
  FSGNJ.D fs2, fa0, fa0
  FMUL.S fs1, fs1, fs2
  LW t4, 64(sp)
  FCVT.S.W fs2, t4
  LA s2, .CONSTANT.7.2
  FLW fs5, 0(s2)
  FDIV.S fs2, fs5, fs2
  FCVT.S.W fs5, s6
  LA s2, .CONSTANT.7.3
  FLW fs6, 0(s2)
  FADD.S fs5, fs5, fs6
  FMUL.S fs2, fs2, fs5
  LW t4, 12(sp)
  FCVT.S.W fs5, t4
  FMUL.S fs2, fs2, fs5
  FADD.S fs2, fs2, fs3
  LA s2, .CONSTANT.7.4
  FLW fs3, 0(s2)
  FLT.S s2, fs3, fs2
  BNE s2, zero, bb287
  # implict jump to bb273
bb273:
  LA s2, .CONSTANT.7.4
  FLW fs3, 0(s2)
  LA s2, .CONSTANT.7.4
  FLW fs5, 0(s2)
  FSGNJN.S fs3, fs3, fs5
  FLT.S s2, fs2, fs3
  # implict jump to bb274
bb274:
  BNE s2, zero, bb286
  # implict jump to bb275
bb275:
  FSGNJ.S fs3, fs2, fs2
  # implict jump to bb276
bb276:
  LA s2, .CONSTANT.7.2
  FLW fs2, 0(s2)
  FLT.S s2, fs2, fs3
  BNE s2, zero, bb285
  # implict jump to bb277
bb277:
  FSGNJ.S fs2, fs3, fs3
  # implict jump to bb278
bb278:
  FLT.S s2, fs2, fs4
  BNE s2, zero, bb284
  # implict jump to bb279
bb279:
  FSGNJ.S fs3, fs2, fs2
  # implict jump to bb280
bb280:
  FSGNJ.S fa0, fs3, fs3
  CALL my_sin_impl
  FSGNJ.D fs2, fa0, fa0
  FMUL.S fs1, fs1, fs2
  FADD.S fs0, fs0, fs1
  LD t4, 376(sp)
  FSW fs0, 0(t4)
  ADDIW t4, s6, 1
  SW t4, 176(sp)
  # implict jump to bb281
bb281:
  LW t4, 176(sp)
  LW t3, 64(sp)
  BLT t4, t3, bb283
  # implict jump to bb282
bb282:
  LW t4, 176(sp)
  ADD s10, t4, zero
  JAL zero, bb259
bb283:
  LW t3, 176(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  JAL zero, bb264
bb284:
  LA s2, .CONSTANT.7.4
  FLW fs4, 0(s2)
  FADD.S fs2, fs2, fs4
  FSGNJ.S fs3, fs2, fs2
  JAL zero, bb280
bb285:
  LA s2, .CONSTANT.7.4
  FLW fs5, 0(s2)
  FSUB.S fs3, fs3, fs5
  FSGNJ.S fs2, fs3, fs3
  JAL zero, bb278
bb286:
  LA s2, .CONSTANT.7.4
  FLW fs5, 0(s2)
  FDIV.S fs5, fs2, fs5
  FCVT.W.S s2, fs5, rtz
  FCVT.S.W fs5, s2
  LA s2, .CONSTANT.7.4
  FLW fs6, 0(s2)
  FMUL.S fs5, fs5, fs6
  FSUB.S fs2, fs2, fs5
  FSGNJ.S fs3, fs2, fs2
  JAL zero, bb276
bb287:
  ADDI s2, zero, 1
  JAL zero, bb274
bb288:
  LA s2, .CONSTANT.7.4
  FLW fs6, 0(s2)
  FADD.S fs2, fs2, fs6
  FSGNJ.S fs5, fs2, fs2
  JAL zero, bb272
bb289:
  LA s2, .CONSTANT.7.4
  FLW fs5, 0(s2)
  FSUB.S fs4, fs4, fs5
  FSGNJ.S fs2, fs4, fs4
  JAL zero, bb270
bb290:
  LA s2, .CONSTANT.7.4
  FLW fs5, 0(s2)
  FDIV.S fs5, fs2, fs5
  FCVT.W.S s2, fs5, rtz
  FCVT.S.W fs5, s2
  LA s2, .CONSTANT.7.4
  FLW fs6, 0(s2)
  FMUL.S fs5, fs5, fs6
  FSUB.S fs2, fs2, fs5
  FSGNJ.S fs4, fs2, fs2
  JAL zero, bb268
bb291:
  ADDI s2, zero, 1
  JAL zero, bb266
bb292:
  ADD t4, zero, zero
  SW t4, 60(sp)
  # implict jump to bb293
bb293:
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LW t4, 64(sp)
  BLT zero, t4, bb297
  # implict jump to bb294
bb294:
  LW t3, 56(sp)
  ADDIW t4, t3, 1
  SW t4, 144(sp)
  # implict jump to bb295
bb295:
  LW t4, 144(sp)
  LW t3, 68(sp)
  BLT t4, t3, bb296
  JAL zero, bb159
bb296:
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  JAL zero, bb293
bb297:
  ADD t4, zero, zero
  SW t4, 52(sp)
  # implict jump to bb298
bb298:
  LW t4, 52(sp)
  ADD s5, t4, zero
  LW t4, 56(sp)
  SLLIW s3, t4, 5
  LA s0, test_block
  ADD s0, s0, s3
  SLLIW s3, s5, 2
  ADD s0, s0, s3
  CALL getfloat
  FSGNJ.D fs0, fa0, fa0
  FSW fs0, 0(s0)
  ADDIW t4, s5, 1
  SW t4, 152(sp)
  # implict jump to bb299
bb299:
  LW t4, 152(sp)
  LW t3, 64(sp)
  BLT t4, t3, bb300
  JAL zero, bb294
bb300:
  LW t3, 152(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  JAL zero, bb298
my_fabs:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs0, 16(sp)
  FSD fs1, 24(sp)
  FSGNJ.D fs0, fa0, fa0
  FCVT.S.L fs1, zero
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb303
  # implict jump to bb302
bb302:
  FSGNJN.S fs1, fs0, fs0
  FSGNJ.S fa0, fs1, fs1
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb303:
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
