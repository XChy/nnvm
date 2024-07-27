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
  SD s7, 128(sp)
  SD s6, 136(sp)
  SD s5, 168(sp)
  SD s8, 176(sp)
  SD s9, 184(sp)
  SD s10, 192(sp)
  SD s11, 200(sp)
  FSD fs0, 208(sp)
  FSD fs1, 216(sp)
  FSD fs2, 224(sp)
  FSD fs3, 232(sp)
  FSD fs4, 240(sp)
  FSD fs5, 248(sp)
  FSD fs6, 256(sp)
  FSD fs7, 264(sp)
  ADD t4, a0, zero
  SD t4, 152(sp)
  ADD t4, a1, zero
  SD t4, 144(sp)
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
  LD s7, 128(sp)
  LD s6, 136(sp)
  LD s5, 168(sp)
  LD s8, 176(sp)
  LD s9, 184(sp)
  LD s10, 192(sp)
  LD s11, 200(sp)
  FLD fs0, 208(sp)
  FLD fs1, 216(sp)
  FLD fs2, 224(sp)
  FLD fs3, 232(sp)
  FLD fs4, 240(sp)
  FLD fs5, 248(sp)
  FLD fs6, 256(sp)
  FLD fs7, 264(sp)
  ADDI sp, sp, 272
  JALR zero, 0(ra)
bb2:
  # implict jump to bb3
bb3:
  ADD t4, zero, zero
  SW t4, 44(sp)
  ADD t4, zero, zero
  SW t4, 40(sp)
  ADD t4, zero, zero
  SW t4, 4(sp)
  # implict jump to bb4
bb4:
  LW t4, 4(sp)
  ADD a7, t4, zero
  LW t4, 40(sp)
  ADD t6, t4, zero
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  ADDI t2, zero, 0
  LW t4, 60(sp)
  BLT t2, t4, bb9
  # implict jump to bb5
bb5:
  ADD t4, t6, zero
  SW t4, 48(sp)
  ADD t4, a7, zero
  SW t4, 72(sp)
  # implict jump to bb6
bb6:
  LW t4, 72(sp)
  ADD s9, t4, zero
  LW t4, 48(sp)
  ADD s5, t4, zero
  LW t4, 64(sp)
  ADDIW s6, t4, 1
  # implict jump to bb7
bb7:
  LW t4, 52(sp)
  BLT s6, t4, bb8
  JAL zero, bb1
bb8:
  ADD t4, s6, zero
  SW t4, 44(sp)
  ADD t4, s5, zero
  SW t4, 40(sp)
  ADD t4, s9, zero
  SW t4, 4(sp)
  JAL zero, bb4
bb9:
  # implict jump to bb10
bb10:
  ADD t4, zero, zero
  SW t4, 8(sp)
  # implict jump to bb11
bb11:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LW t4, 64(sp)
  SLLIW t1, t4, 5
  LD t4, 152(sp)
  ADD t1, t4, t1
  LW t4, 56(sp)
  SLLIW t0, t4, 2
  ADD t4, t1, t0
  SD t4, 160(sp)
  ADDI t1, zero, 1
  FCVT.S.W fs0, t1
  LA t1, .CONSTANT.7.0
  FLW fs1, 0(t1)
  FDIV.S fs1, fs0, fs1
  LD t4, 144(sp)
  FLW fs2, 0(t4)
  FMUL.S fs1, fs1, fs2
  LD t4, 160(sp)
  FSW fs1, 0(t4)
  ADDI t1, zero, 1
  LW t4, 52(sp)
  BLT t1, t4, bb64
  # implict jump to bb12
bb12:
  ADDI s11, zero, 1
  LW t4, 60(sp)
  BLT s11, t4, bb58
  # implict jump to bb13
bb13:
  ADDI s11, zero, 1
  # implict jump to bb14
bb14:
  ADDI s1, zero, 1
  LW t4, 52(sp)
  BLT s1, t4, bb20
  # implict jump to bb15
bb15:
  ADDI s1, zero, 1
  # implict jump to bb16
bb16:
  ADD s2, s11, zero
  ADD s3, s1, zero
  LD t4, 160(sp)
  FLW fs1, 0(t4)
  LA s0, .CONSTANT.7.1
  FLW fs2, 0(s0)
  FMUL.S fs1, fs1, fs2
  LW t4, 52(sp)
  FCVT.S.W fs2, t4
  FDIV.S fs1, fs1, fs2
  LA s0, .CONSTANT.7.1
  FLW fs2, 0(s0)
  FMUL.S fs1, fs1, fs2
  LW t4, 60(sp)
  FCVT.S.W fs2, t4
  FDIV.S fs1, fs1, fs2
  LD t4, 160(sp)
  FSW fs1, 0(t4)
  LW t4, 56(sp)
  ADDIW s8, t4, 1
  # implict jump to bb17
bb17:
  LW t4, 60(sp)
  BLT s8, t4, bb19
  # implict jump to bb18
bb18:
  ADD t4, s3, zero
  SW t4, 48(sp)
  ADD t4, s2, zero
  SW t4, 72(sp)
  JAL zero, bb6
bb19:
  ADD t4, s8, zero
  SW t4, 8(sp)
  JAL zero, bb11
bb20:
  ADDI t1, zero, 1
  # implict jump to bb21
bb21:
  ADD t4, t1, zero
  SW t4, 12(sp)
  # implict jump to bb22
bb22:
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  ADDI s0, zero, 1
  LW t4, 60(sp)
  BLT s0, t4, bb28
  # implict jump to bb23
bb23:
  ADDI s0, zero, 1
  # implict jump to bb24
bb24:
  ADD s10, s0, zero
  LW t4, 24(sp)
  ADDIW s7, t4, 1
  # implict jump to bb25
bb25:
  LW t4, 52(sp)
  BLT s7, t4, bb27
  # implict jump to bb26
bb26:
  ADD s1, s7, zero
  ADD s11, s10, zero
  JAL zero, bb16
bb27:
  ADD t4, s7, zero
  SW t4, 12(sp)
  JAL zero, bb22
bb28:
  ADDI t0, zero, 1
  # implict jump to bb29
bb29:
  ADD t4, t0, zero
  SW t4, 20(sp)
  # implict jump to bb30
bb30:
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  LD t4, 160(sp)
  FLW fs1, 0(t4)
  LW t4, 24(sp)
  SLLIW s4, t4, 5
  LD t4, 144(sp)
  ADD s4, t4, s4
  LW t4, 68(sp)
  SLLIW t1, t4, 2
  ADD s4, s4, t1
  FLW fs2, 0(s4)
  LW t4, 52(sp)
  FCVT.S.W fs3, t4
  LA s4, .CONSTANT.7.2
  FLW fs4, 0(s4)
  FDIV.S fs3, fs4, fs3
  LW t4, 64(sp)
  FCVT.S.W fs4, t4
  LA s4, .CONSTANT.7.3
  FLW fs5, 0(s4)
  FADD.S fs4, fs4, fs5
  FMUL.S fs3, fs3, fs4
  LW t4, 24(sp)
  FCVT.S.W fs4, t4
  FMUL.S fs3, fs3, fs4
  ADDI s4, zero, 2
  FCVT.S.W fs4, s4
  LA s4, .CONSTANT.7.2
  FLW fs5, 0(s4)
  FDIV.S fs4, fs5, fs4
  FADD.S fs3, fs3, fs4
  LA s4, .CONSTANT.7.4
  FLW fs5, 0(s4)
  FLT.S s4, fs5, fs3
  BNE s4, zero, bb57
  # implict jump to bb31
bb31:
  LA s4, .CONSTANT.7.4
  FLW fs5, 0(s4)
  LA s4, .CONSTANT.7.4
  FLW fs6, 0(s4)
  FSGNJN.S fs5, fs5, fs6
  FLT.S s4, fs3, fs5
  # implict jump to bb32
bb32:
  BNE s4, zero, bb56
  # implict jump to bb33
bb33:
  FSGNJ.S fs5, fs3, fs3
  # implict jump to bb34
bb34:
  LA s4, .CONSTANT.7.2
  FLW fs3, 0(s4)
  FLT.S s4, fs3, fs5
  BNE s4, zero, bb55
  # implict jump to bb35
bb35:
  FSGNJ.S fs3, fs5, fs5
  # implict jump to bb36
bb36:
  LA s4, .CONSTANT.7.2
  FLW fs5, 0(s4)
  LA s4, .CONSTANT.7.2
  FLW fs6, 0(s4)
  FSGNJN.S fs5, fs5, fs6
  FLT.S s4, fs3, fs5
  BNE s4, zero, bb54
  # implict jump to bb37
bb37:
  FSGNJ.S fs6, fs3, fs3
  # implict jump to bb38
bb38:
  FSGNJ.S fa0, fs6, fs6
  CALL my_sin_impl
  FSGNJ.D fs3, fa0, fa0
  FMUL.S fs2, fs2, fs3
  LW t4, 60(sp)
  FCVT.S.W fs3, t4
  LA s4, .CONSTANT.7.2
  FLW fs6, 0(s4)
  FDIV.S fs3, fs6, fs3
  LW t4, 56(sp)
  FCVT.S.W fs6, t4
  LA s4, .CONSTANT.7.3
  FLW fs7, 0(s4)
  FADD.S fs6, fs6, fs7
  FMUL.S fs3, fs3, fs6
  LW t4, 68(sp)
  FCVT.S.W fs6, t4
  FMUL.S fs3, fs3, fs6
  FADD.S fs3, fs3, fs4
  LA s4, .CONSTANT.7.4
  FLW fs4, 0(s4)
  FLT.S s4, fs4, fs3
  BNE s4, zero, bb53
  # implict jump to bb39
bb39:
  LA s4, .CONSTANT.7.4
  FLW fs4, 0(s4)
  LA s4, .CONSTANT.7.4
  FLW fs6, 0(s4)
  FSGNJN.S fs4, fs4, fs6
  FLT.S s4, fs3, fs4
  # implict jump to bb40
bb40:
  BNE s4, zero, bb52
  # implict jump to bb41
bb41:
  FSGNJ.S fs4, fs3, fs3
  # implict jump to bb42
bb42:
  LA s4, .CONSTANT.7.2
  FLW fs3, 0(s4)
  FLT.S s4, fs3, fs4
  BNE s4, zero, bb51
  # implict jump to bb43
bb43:
  FSGNJ.S fs3, fs4, fs4
  # implict jump to bb44
bb44:
  FLT.S s4, fs3, fs5
  BNE s4, zero, bb50
  # implict jump to bb45
bb45:
  FSGNJ.S fs4, fs3, fs3
  # implict jump to bb46
bb46:
  FSGNJ.S fa0, fs4, fs4
  CALL my_sin_impl
  FMUL.S fs2, fs2, fa0
  FADD.S fs1, fs1, fs2
  LD t4, 160(sp)
  FSW fs1, 0(t4)
  LW t3, 68(sp)
  ADDIW t4, t3, 1
  SW t4, 16(sp)
  # implict jump to bb47
bb47:
  LW t4, 16(sp)
  LW t3, 60(sp)
  BLT t4, t3, bb49
  # implict jump to bb48
bb48:
  LW t4, 16(sp)
  ADD s0, t4, zero
  JAL zero, bb24
bb49:
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  JAL zero, bb30
bb50:
  LA s4, .CONSTANT.7.4
  FLW fs5, 0(s4)
  FADD.S fs3, fs3, fs5
  FSGNJ.S fs4, fs3, fs3
  JAL zero, bb46
bb51:
  LA s4, .CONSTANT.7.4
  FLW fs6, 0(s4)
  FSUB.S fs4, fs4, fs6
  FSGNJ.S fs3, fs4, fs4
  JAL zero, bb44
bb52:
  LA s4, .CONSTANT.7.4
  FLW fs6, 0(s4)
  FDIV.S fs6, fs3, fs6
  FCVT.W.S s4, fs6, rtz
  FCVT.S.W fs6, s4
  LA s4, .CONSTANT.7.4
  FLW fs7, 0(s4)
  FMUL.S fs6, fs6, fs7
  FSUB.S fs3, fs3, fs6
  FSGNJ.S fs4, fs3, fs3
  JAL zero, bb42
bb53:
  ADDI s4, zero, 1
  JAL zero, bb40
bb54:
  LA s4, .CONSTANT.7.4
  FLW fs7, 0(s4)
  FADD.S fs3, fs3, fs7
  FSGNJ.S fs6, fs3, fs3
  JAL zero, bb38
bb55:
  LA s4, .CONSTANT.7.4
  FLW fs6, 0(s4)
  FSUB.S fs5, fs5, fs6
  FSGNJ.S fs3, fs5, fs5
  JAL zero, bb36
bb56:
  LA s4, .CONSTANT.7.4
  FLW fs6, 0(s4)
  FDIV.S fs6, fs3, fs6
  FCVT.W.S s4, fs6, rtz
  FCVT.S.W fs6, s4
  LA s4, .CONSTANT.7.4
  FLW fs7, 0(s4)
  FMUL.S fs6, fs6, fs7
  FSUB.S fs3, fs3, fs6
  FSGNJ.S fs5, fs3, fs3
  JAL zero, bb34
bb57:
  ADDI s4, zero, 1
  JAL zero, bb32
bb58:
  ADDI t0, zero, 1
  # implict jump to bb59
bb59:
  ADD t4, t0, zero
  SW t4, 32(sp)
  # implict jump to bb60
bb60:
  LW t4, 32(sp)
  ADD t1, t4, zero
  LD t4, 160(sp)
  FLW fs1, 0(t4)
  LA s1, .CONSTANT.7.1
  FLW fs2, 0(s1)
  FDIV.S fs2, fs0, fs2
  SLLIW s1, t1, 2
  LD t4, 144(sp)
  ADD s1, t4, s1
  FLW fs3, 0(s1)
  FMUL.S fs2, fs2, fs3
  FADD.S fs1, fs1, fs2
  LD t4, 160(sp)
  FSW fs1, 0(t4)
  ADDIW t4, t1, 1
  SW t4, 28(sp)
  # implict jump to bb61
bb61:
  LW t4, 28(sp)
  LW t3, 60(sp)
  BLT t4, t3, bb63
  # implict jump to bb62
bb62:
  LW t4, 28(sp)
  ADD s11, t4, zero
  JAL zero, bb14
bb63:
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  JAL zero, bb60
bb64:
  ADDI t1, zero, 1
  # implict jump to bb65
bb65:
  ADD t4, t1, zero
  SW t4, 0(sp)
  # implict jump to bb66
bb66:
  LW t4, 0(sp)
  ADD s11, t4, zero
  LD t4, 160(sp)
  FLW fs1, 0(t4)
  LA t0, .CONSTANT.7.1
  FLW fs2, 0(t0)
  FDIV.S fs2, fs0, fs2
  SLLIW t0, s11, 5
  LD t4, 144(sp)
  ADD t0, t4, t0
  FLW fs3, 0(t0)
  FMUL.S fs2, fs2, fs3
  FADD.S fs1, fs1, fs2
  LD t4, 160(sp)
  FSW fs1, 0(t4)
  ADDIW t4, s11, 1
  SW t4, 36(sp)
  # implict jump to bb67
bb67:
  LW t4, 36(sp)
  LW t3, 52(sp)
  BLT t4, t3, bb68
  JAL zero, bb12
bb68:
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  JAL zero, bb66
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
  BNE s0, zero, bb74
  # implict jump to bb70
bb70:
  FSGNJN.S fs1, fs0, fs0
  # implict jump to bb71
bb71:
  LA s0, .CONSTANT.7.5
  FLW fs2, 0(s0)
  FLE.S s0, fs1, fs2
  BNE s0, zero, bb73
  # implict jump to bb72
bb72:
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
bb73:
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  FLD fs2, 32(sp)
  FLD fs3, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb74:
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb71
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
  SD s3, 104(sp)
  SD s5, 112(sp)
  SD s6, 120(sp)
  SD s7, 128(sp)
  SD s8, 136(sp)
  SD s9, 144(sp)
  SD s10, 152(sp)
  SD s4, 160(sp)
  SD s11, 168(sp)
  FSD fs0, 176(sp)
  FSD fs1, 184(sp)
  FSD fs2, 192(sp)
  FSD fs4, 200(sp)
  FSD fs5, 208(sp)
  FSD fs3, 224(sp)
  FSD fs6, 248(sp)
  ADD t4, a0, zero
  SD t4, 232(sp)
  ADD t4, a1, zero
  SD t4, 240(sp)
  ADD t4, a2, zero
  SW t4, 60(sp)
  ADD t4, a3, zero
  SW t4, 64(sp)
  LW t4, 60(sp)
  BLT zero, t4, bb78
  # implict jump to bb77
bb77:
  LD ra, 72(sp)
  LD s0, 80(sp)
  LD s1, 88(sp)
  LD s2, 96(sp)
  LD s3, 104(sp)
  LD s5, 112(sp)
  LD s6, 120(sp)
  LD s7, 128(sp)
  LD s8, 136(sp)
  LD s9, 144(sp)
  LD s10, 152(sp)
  LD s4, 160(sp)
  LD s11, 168(sp)
  FLD fs0, 176(sp)
  FLD fs1, 184(sp)
  FLD fs2, 192(sp)
  FLD fs4, 200(sp)
  FLD fs5, 208(sp)
  FLD fs3, 224(sp)
  FLD fs6, 248(sp)
  ADDI sp, sp, 256
  JALR zero, 0(ra)
bb78:
  # implict jump to bb79
bb79:
  ADD t4, zero, zero
  SW t4, 12(sp)
  ADD t4, zero, zero
  SW t4, 24(sp)
  ADD t4, zero, zero
  SW t4, 8(sp)
  # implict jump to bb80
bb80:
  LW t4, 8(sp)
  ADD a5, t4, zero
  LW t4, 24(sp)
  ADD a6, t4, zero
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  LW t4, 64(sp)
  BLT zero, t4, bb85
  # implict jump to bb81
bb81:
  ADD t4, a6, zero
  SW t4, 48(sp)
  ADD t4, a5, zero
  SW t4, 20(sp)
  # implict jump to bb82
bb82:
  LW t4, 20(sp)
  ADD s3, t4, zero
  LW t4, 48(sp)
  ADD s2, t4, zero
  LW t4, 0(sp)
  ADDIW s6, t4, 1
  # implict jump to bb83
bb83:
  LW t4, 60(sp)
  BLT s6, t4, bb84
  JAL zero, bb77
bb84:
  ADD t4, s6, zero
  SW t4, 12(sp)
  ADD t4, s2, zero
  SW t4, 24(sp)
  ADD t4, s3, zero
  SW t4, 8(sp)
  JAL zero, bb80
bb85:
  # implict jump to bb86
bb86:
  ADD t4, zero, zero
  SW t4, 16(sp)
  ADD t4, a5, zero
  SW t4, 4(sp)
  # implict jump to bb87
bb87:
  LW t4, 4(sp)
  ADD s11, t4, zero
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LW t4, 0(sp)
  SLLIW s10, t4, 5
  LD t4, 232(sp)
  ADD s10, t4, s10
  LW t4, 56(sp)
  SLLIW s9, t4, 2
  ADD t4, s10, s9
  SD t4, 216(sp)
  FCVT.S.L fs0, zero
  LD t4, 216(sp)
  FSW fs0, 0(t4)
  LW t4, 60(sp)
  BLT zero, t4, bb93
  # implict jump to bb88
bb88:
  ADD s10, zero, zero
  # implict jump to bb89
bb89:
  ADD s4, s11, zero
  ADD s1, s10, zero
  LW t4, 56(sp)
  ADDIW s8, t4, 1
  # implict jump to bb90
bb90:
  LW t4, 64(sp)
  BLT s8, t4, bb92
  # implict jump to bb91
bb91:
  ADD t4, s1, zero
  SW t4, 48(sp)
  ADD t4, s4, zero
  SW t4, 20(sp)
  JAL zero, bb82
bb92:
  ADD t4, s8, zero
  SW t4, 16(sp)
  ADD t4, s4, zero
  SW t4, 4(sp)
  JAL zero, bb87
bb93:
  # implict jump to bb94
bb94:
  ADD t4, zero, zero
  SW t4, 32(sp)
  # implict jump to bb95
bb95:
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  LW t4, 64(sp)
  BLT zero, t4, bb101
  # implict jump to bb96
bb96:
  ADD t4, zero, zero
  SW t4, 52(sp)
  # implict jump to bb97
bb97:
  LW t4, 52(sp)
  ADD s5, t4, zero
  LW t3, 44(sp)
  ADDIW t4, t3, 1
  SW t4, 28(sp)
  # implict jump to bb98
bb98:
  LW t4, 28(sp)
  LW t3, 60(sp)
  BLT t4, t3, bb100
  # implict jump to bb99
bb99:
  LW t4, 28(sp)
  ADD s10, t4, zero
  ADD s11, s5, zero
  JAL zero, bb89
bb100:
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  JAL zero, bb95
bb101:
  # implict jump to bb102
bb102:
  ADD t4, zero, zero
  SW t4, 40(sp)
  # implict jump to bb103
bb103:
  LW t4, 40(sp)
  ADD s0, t4, zero
  LD t4, 216(sp)
  FLW fs0, 0(t4)
  LW t4, 44(sp)
  SLLIW s9, t4, 5
  LD t4, 240(sp)
  ADD s9, t4, s9
  SLLIW s7, s0, 2
  ADD s7, s9, s7
  FLW fs1, 0(s7)
  LW t4, 60(sp)
  FCVT.S.W fs2, t4
  LA s7, .CONSTANT.7.2
  FLW fs3, 0(s7)
  FDIV.S fs2, fs3, fs2
  LW t4, 44(sp)
  FCVT.S.W fs3, t4
  LA s7, .CONSTANT.7.3
  FLW fs4, 0(s7)
  FADD.S fs3, fs3, fs4
  FMUL.S fs2, fs2, fs3
  LW t4, 0(sp)
  FCVT.S.W fs3, t4
  FMUL.S fs2, fs2, fs3
  ADDI s7, zero, 2
  FCVT.S.W fs3, s7
  LA s7, .CONSTANT.7.2
  FLW fs4, 0(s7)
  FDIV.S fs3, fs4, fs3
  FADD.S fs2, fs2, fs3
  LA s7, .CONSTANT.7.4
  FLW fs4, 0(s7)
  FLT.S s7, fs4, fs2
  BNE s7, zero, bb130
  # implict jump to bb104
bb104:
  LA s7, .CONSTANT.7.4
  FLW fs4, 0(s7)
  LA s7, .CONSTANT.7.4
  FLW fs5, 0(s7)
  FSGNJN.S fs4, fs4, fs5
  FLT.S s7, fs2, fs4
  # implict jump to bb105
bb105:
  BNE s7, zero, bb129
  # implict jump to bb106
bb106:
  FSGNJ.S fs4, fs2, fs2
  # implict jump to bb107
bb107:
  LA s7, .CONSTANT.7.2
  FLW fs2, 0(s7)
  FLT.S s7, fs2, fs4
  BNE s7, zero, bb128
  # implict jump to bb108
bb108:
  FSGNJ.S fs2, fs4, fs4
  # implict jump to bb109
bb109:
  LA s7, .CONSTANT.7.2
  FLW fs4, 0(s7)
  LA s7, .CONSTANT.7.2
  FLW fs5, 0(s7)
  FSGNJN.S fs4, fs4, fs5
  FLT.S s7, fs2, fs4
  BNE s7, zero, bb127
  # implict jump to bb110
bb110:
  FSGNJ.S fs5, fs2, fs2
  # implict jump to bb111
bb111:
  FSGNJ.S fa0, fs5, fs5
  CALL my_sin_impl
  FSGNJ.D fs2, fa0, fa0
  FMUL.S fs1, fs1, fs2
  LW t4, 64(sp)
  FCVT.S.W fs2, t4
  LA s7, .CONSTANT.7.2
  FLW fs5, 0(s7)
  FDIV.S fs2, fs5, fs2
  FCVT.S.W fs5, s0
  LA s7, .CONSTANT.7.3
  FLW fs6, 0(s7)
  FADD.S fs5, fs5, fs6
  FMUL.S fs2, fs2, fs5
  LW t4, 56(sp)
  FCVT.S.W fs5, t4
  FMUL.S fs2, fs2, fs5
  FADD.S fs2, fs2, fs3
  LA s7, .CONSTANT.7.4
  FLW fs3, 0(s7)
  FLT.S s7, fs3, fs2
  BNE s7, zero, bb126
  # implict jump to bb112
bb112:
  LA s7, .CONSTANT.7.4
  FLW fs3, 0(s7)
  LA s7, .CONSTANT.7.4
  FLW fs5, 0(s7)
  FSGNJN.S fs3, fs3, fs5
  FLT.S s7, fs2, fs3
  # implict jump to bb113
bb113:
  BNE s7, zero, bb125
  # implict jump to bb114
bb114:
  FSGNJ.S fs3, fs2, fs2
  # implict jump to bb115
bb115:
  LA s7, .CONSTANT.7.2
  FLW fs2, 0(s7)
  FLT.S s7, fs2, fs3
  BNE s7, zero, bb124
  # implict jump to bb116
bb116:
  FSGNJ.S fs2, fs3, fs3
  # implict jump to bb117
bb117:
  FLT.S s7, fs2, fs4
  BNE s7, zero, bb123
  # implict jump to bb118
bb118:
  FSGNJ.S fs3, fs2, fs2
  # implict jump to bb119
bb119:
  FSGNJ.S fa0, fs3, fs3
  CALL my_sin_impl
  FMUL.S fs1, fs1, fa0
  FADD.S fs0, fs0, fs1
  LD t4, 216(sp)
  FSW fs0, 0(t4)
  ADDIW t4, s0, 1
  SW t4, 36(sp)
  # implict jump to bb120
bb120:
  LW t4, 36(sp)
  LW t3, 64(sp)
  BLT t4, t3, bb122
  # implict jump to bb121
bb121:
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  JAL zero, bb97
bb122:
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  JAL zero, bb103
bb123:
  LA s7, .CONSTANT.7.4
  FLW fs4, 0(s7)
  FADD.S fs2, fs2, fs4
  FSGNJ.S fs3, fs2, fs2
  JAL zero, bb119
bb124:
  LA s7, .CONSTANT.7.4
  FLW fs5, 0(s7)
  FSUB.S fs3, fs3, fs5
  FSGNJ.S fs2, fs3, fs3
  JAL zero, bb117
bb125:
  LA s7, .CONSTANT.7.4
  FLW fs5, 0(s7)
  FDIV.S fs5, fs2, fs5
  FCVT.W.S s7, fs5, rtz
  FCVT.S.W fs5, s7
  LA s7, .CONSTANT.7.4
  FLW fs6, 0(s7)
  FMUL.S fs5, fs5, fs6
  FSUB.S fs2, fs2, fs5
  FSGNJ.S fs3, fs2, fs2
  JAL zero, bb115
bb126:
  ADDI s7, zero, 1
  JAL zero, bb113
bb127:
  LA s7, .CONSTANT.7.4
  FLW fs6, 0(s7)
  FADD.S fs2, fs2, fs6
  FSGNJ.S fs5, fs2, fs2
  JAL zero, bb111
bb128:
  LA s7, .CONSTANT.7.4
  FLW fs5, 0(s7)
  FSUB.S fs4, fs4, fs5
  FSGNJ.S fs2, fs4, fs4
  JAL zero, bb109
bb129:
  LA s7, .CONSTANT.7.4
  FLW fs5, 0(s7)
  FDIV.S fs5, fs2, fs5
  FCVT.W.S s7, fs5, rtz
  FCVT.S.W fs5, s7
  LA s7, .CONSTANT.7.4
  FLW fs6, 0(s7)
  FMUL.S fs5, fs5, fs6
  FSUB.S fs2, fs2, fs5
  FSGNJ.S fs4, fs2, fs2
  JAL zero, bb107
bb130:
  ADDI s7, zero, 1
  JAL zero, bb105
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
  BNE s0, zero, bb143
  # implict jump to bb132
bb132:
  LA s0, .CONSTANT.7.4
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FSGNJN.S fs1, fs1, fs2
  FLT.S s0, fs0, fs1
  # implict jump to bb133
bb133:
  BNE s0, zero, bb142
  # implict jump to bb134
bb134:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb135
bb135:
  LA s0, .CONSTANT.7.2
  FLW fs0, 0(s0)
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb141
  # implict jump to bb136
bb136:
  FSGNJ.S fs0, fs1, fs1
  # implict jump to bb137
bb137:
  LA s0, .CONSTANT.7.2
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.2
  FLW fs2, 0(s0)
  FSGNJN.S fs1, fs1, fs2
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb140
  # implict jump to bb138
bb138:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb139
bb139:
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
bb140:
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FADD.S fs0, fs0, fs2
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb139
bb141:
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FSUB.S fs1, fs1, fs2
  FSGNJ.S fs0, fs1, fs1
  JAL zero, bb137
bb142:
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
  JAL zero, bb135
bb143:
  ADDI s0, zero, 1
  JAL zero, bb133
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
  BLT zero, s3, bb146
  # implict jump to bb145
bb145:
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
bb146:
  # implict jump to bb147
bb147:
  ADD s5, zero, zero
  # implict jump to bb148
bb148:
  ADD s6, s5, zero
  SLLIW s7, s6, 5
  ADD s7, s2, s7
  FLW fs0, 0(s7)
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  ADDI s8, zero, 1
  BLT s8, s4, bb152
  # implict jump to bb149
bb149:
  ADDI a0, zero, 10
  CALL putch
  ADDIW s1, s6, 1
  # implict jump to bb150
bb150:
  BLT s1, s3, bb151
  JAL zero, bb145
bb151:
  ADD s5, s1, zero
  JAL zero, bb148
bb152:
  ADDI s8, zero, 1
  # implict jump to bb153
bb153:
  # implict jump to bb154
bb154:
  ADD s9, s8, zero
  ADDI a0, zero, 32
  CALL putch
  SLLIW s10, s9, 2
  ADD s10, s7, s10
  FLW fs0, 0(s10)
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  ADDIW s0, s9, 1
  # implict jump to bb155
bb155:
  BLT s0, s4, bb156
  JAL zero, bb149
bb156:
  ADD s8, s0, zero
  JAL zero, bb154
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
  BNE s0, zero, bb169
  # implict jump to bb158
bb158:
  LA s0, .CONSTANT.7.4
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FSGNJN.S fs1, fs1, fs2
  FLT.S s0, fs0, fs1
  # implict jump to bb159
bb159:
  BNE s0, zero, bb168
  # implict jump to bb160
bb160:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb161
bb161:
  LA s0, .CONSTANT.7.2
  FLW fs0, 0(s0)
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb167
  # implict jump to bb162
bb162:
  FSGNJ.S fs0, fs1, fs1
  # implict jump to bb163
bb163:
  LA s0, .CONSTANT.7.2
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.2
  FLW fs2, 0(s0)
  FSGNJN.S fs1, fs1, fs2
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb166
  # implict jump to bb164
bb164:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb165
bb165:
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
bb166:
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FADD.S fs0, fs0, fs2
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb165
bb167:
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FSUB.S fs1, fs1, fs2
  FSGNJ.S fs0, fs1, fs1
  JAL zero, bb163
bb168:
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
  JAL zero, bb161
bb169:
  ADDI s0, zero, 1
  JAL zero, bb159
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
  FSD fs4, 288(sp)
  SD s10, 296(sp)
  SD s11, 304(sp)
  FSD fs0, 312(sp)
  FSD fs1, 320(sp)
  FSD fs2, 328(sp)
  FSD fs5, 336(sp)
  FSD fs6, 344(sp)
  FSD fs3, 360(sp)
  FSD fs7, 368(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 8(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 12(sp)
  LW t4, 8(sp)
  BLT zero, t4, bb318
  # implict jump to bb171
bb171:
  LW t4, 8(sp)
  BLT zero, t4, bb265
  # implict jump to bb172
bb172:
  LW t4, 8(sp)
  BLT zero, t4, bb254
  # implict jump to bb173
bb173:
  ADDI a0, zero, 10
  CALL putch
  LW t4, 8(sp)
  BLT zero, t4, bb187
  # implict jump to bb174
bb174:
  LW t4, 8(sp)
  BLT zero, t4, bb176
  # implict jump to bb175
bb175:
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
  FLD fs4, 288(sp)
  LD s10, 296(sp)
  LD s11, 304(sp)
  FLD fs0, 312(sp)
  FLD fs1, 320(sp)
  FLD fs2, 328(sp)
  FLD fs5, 336(sp)
  FLD fs6, 344(sp)
  FLD fs3, 360(sp)
  FLD fs7, 368(sp)
  ADDI sp, sp, 400
  JALR zero, 0(ra)
bb176:
  # implict jump to bb177
bb177:
  ADD s0, zero, zero
  # implict jump to bb178
bb178:
  ADD s1, s0, zero
  SLLIW s2, s1, 5
  LA s3, test_idct
  ADD s2, s3, s2
  FLW fs1, 0(s2)
  FSGNJ.S fa0, fs1, fs1
  CALL putfloat
  ADDI s3, zero, 1
  LW t4, 12(sp)
  BLT s3, t4, bb182
  # implict jump to bb179
bb179:
  ADDI a0, zero, 10
  CALL putch
  ADDIW t4, s1, 1
  SW t4, 96(sp)
  # implict jump to bb180
bb180:
  LW t4, 96(sp)
  LW t3, 8(sp)
  BLT t4, t3, bb181
  JAL zero, bb175
bb181:
  LW t4, 96(sp)
  ADD s0, t4, zero
  JAL zero, bb178
bb182:
  ADDI s3, zero, 1
  # implict jump to bb183
bb183:
  # implict jump to bb184
bb184:
  ADD s4, s3, zero
  ADDI a0, zero, 32
  CALL putch
  SLLIW s7, s4, 2
  ADD s7, s2, s7
  FLW fs1, 0(s7)
  FSGNJ.S fa0, fs1, fs1
  CALL putfloat
  ADDIW t4, s4, 1
  SW t4, 92(sp)
  # implict jump to bb185
bb185:
  LW t4, 92(sp)
  LW t3, 12(sp)
  BLT t4, t3, bb186
  JAL zero, bb179
bb186:
  LW t4, 92(sp)
  ADD s3, t4, zero
  JAL zero, bb184
bb187:
  # implict jump to bb188
bb188:
  ADD s5, zero, zero
  ADD s6, zero, zero
  ADD t4, zero, zero
  SW t4, 128(sp)
  # implict jump to bb189
bb189:
  LW t4, 128(sp)
  ADD s9, t4, zero
  ADD s10, s6, zero
  ADD t4, s5, zero
  SW t4, 104(sp)
  LW t4, 12(sp)
  BLT zero, t4, bb194
  # implict jump to bb190
bb190:
  # implict jump to bb191
bb191:
  ADD t4, s9, zero
  SW t4, 68(sp)
  ADD t4, s10, zero
  SW t4, 72(sp)
  LW t3, 104(sp)
  ADDIW t4, t3, 1
  SW t4, 168(sp)
  # implict jump to bb192
bb192:
  LW t4, 168(sp)
  LW t3, 8(sp)
  BLT t4, t3, bb193
  JAL zero, bb174
bb193:
  LW t4, 168(sp)
  ADD s5, t4, zero
  LW t4, 72(sp)
  ADD s6, t4, zero
  LW t3, 68(sp)
  ADD t4, t3, zero
  SW t4, 128(sp)
  JAL zero, bb189
bb194:
  # implict jump to bb195
bb195:
  ADD t4, zero, zero
  SW t4, 132(sp)
  # implict jump to bb196
bb196:
  LW t3, 132(sp)
  ADD t4, t3, zero
  SW t4, 120(sp)
  LW t4, 104(sp)
  SLLIW s4, t4, 5
  LA s0, test_idct
  ADD s0, s0, s4
  LW t4, 120(sp)
  SLLIW s4, t4, 2
  ADD t4, s0, s4
  SD t4, 352(sp)
  ADDI s4, zero, 1
  FCVT.S.W fs0, s4
  LA s4, .CONSTANT.7.0
  FLW fs1, 0(s4)
  FDIV.S fs1, fs0, fs1
  LA s4, test_dct
  FLW fs2, 0(s4)
  FMUL.S fs1, fs1, fs2
  LD t4, 352(sp)
  FSW fs1, 0(t4)
  ADDI s4, zero, 1
  LW t4, 8(sp)
  BLT s4, t4, bb249
  # implict jump to bb197
bb197:
  ADDI s0, zero, 1
  LW t4, 12(sp)
  BLT s0, t4, bb243
  # implict jump to bb198
bb198:
  ADDI s0, zero, 1
  # implict jump to bb199
bb199:
  ADDI s1, zero, 1
  LW t4, 8(sp)
  BLT s1, t4, bb205
  # implict jump to bb200
bb200:
  ADDI s1, zero, 1
  # implict jump to bb201
bb201:
  ADD t4, s0, zero
  SW t4, 100(sp)
  ADD s3, s1, zero
  LD t4, 352(sp)
  FLW fs1, 0(t4)
  LA s0, .CONSTANT.7.1
  FLW fs2, 0(s0)
  FMUL.S fs1, fs1, fs2
  LW t4, 8(sp)
  FCVT.S.W fs2, t4
  FDIV.S fs1, fs1, fs2
  LA s0, .CONSTANT.7.1
  FLW fs2, 0(s0)
  FMUL.S fs1, fs1, fs2
  LW t4, 12(sp)
  FCVT.S.W fs2, t4
  FDIV.S fs1, fs1, fs2
  LD t4, 352(sp)
  FSW fs1, 0(t4)
  LW t3, 120(sp)
  ADDIW t4, t3, 1
  SW t4, 36(sp)
  # implict jump to bb202
bb202:
  LW t4, 36(sp)
  LW t3, 12(sp)
  BLT t4, t3, bb204
  # implict jump to bb203
bb203:
  ADD s10, s3, zero
  LW t4, 100(sp)
  ADD s9, t4, zero
  JAL zero, bb191
bb204:
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 132(sp)
  JAL zero, bb196
bb205:
  ADDI s4, zero, 1
  # implict jump to bb206
bb206:
  ADD t4, s4, zero
  SW t4, 140(sp)
  # implict jump to bb207
bb207:
  LW t3, 140(sp)
  ADD t4, t3, zero
  SW t4, 144(sp)
  ADDI s11, zero, 1
  LW t4, 12(sp)
  BLT s11, t4, bb213
  # implict jump to bb208
bb208:
  ADDI s11, zero, 1
  # implict jump to bb209
bb209:
  ADD s7, s11, zero
  LW t3, 144(sp)
  ADDIW t4, t3, 1
  SW t4, 32(sp)
  # implict jump to bb210
bb210:
  LW t4, 32(sp)
  LW t3, 8(sp)
  BLT t4, t3, bb212
  # implict jump to bb211
bb211:
  LW t4, 32(sp)
  ADD s1, t4, zero
  ADD s0, s7, zero
  JAL zero, bb201
bb212:
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 140(sp)
  JAL zero, bb207
bb213:
  ADDI s4, zero, 1
  # implict jump to bb214
bb214:
  ADD t4, s4, zero
  SW t4, 136(sp)
  # implict jump to bb215
bb215:
  LW t4, 136(sp)
  ADD s4, t4, zero
  LD t4, 352(sp)
  FLW fs1, 0(t4)
  LW t4, 144(sp)
  SLLIW s2, t4, 5
  LA s8, test_dct
  ADD s2, s8, s2
  SLLIW s8, s4, 2
  ADD s2, s2, s8
  FLW fs2, 0(s2)
  LW t4, 8(sp)
  FCVT.S.W fs3, t4
  LA s2, .CONSTANT.7.2
  FLW fs4, 0(s2)
  FDIV.S fs3, fs4, fs3
  LW t4, 104(sp)
  FCVT.S.W fs4, t4
  LA s2, .CONSTANT.7.3
  FLW fs5, 0(s2)
  FADD.S fs4, fs4, fs5
  FMUL.S fs3, fs3, fs4
  LW t4, 144(sp)
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
  BNE s2, zero, bb242
  # implict jump to bb216
bb216:
  LA s2, .CONSTANT.7.4
  FLW fs5, 0(s2)
  LA s2, .CONSTANT.7.4
  FLW fs6, 0(s2)
  FSGNJN.S fs5, fs5, fs6
  FLT.S s2, fs3, fs5
  # implict jump to bb217
bb217:
  BNE s2, zero, bb241
  # implict jump to bb218
bb218:
  FSGNJ.S fs5, fs3, fs3
  # implict jump to bb219
bb219:
  LA s2, .CONSTANT.7.2
  FLW fs3, 0(s2)
  FLT.S s2, fs3, fs5
  BNE s2, zero, bb240
  # implict jump to bb220
bb220:
  FSGNJ.S fs3, fs5, fs5
  # implict jump to bb221
bb221:
  LA s2, .CONSTANT.7.2
  FLW fs5, 0(s2)
  LA s2, .CONSTANT.7.2
  FLW fs6, 0(s2)
  FSGNJN.S fs5, fs5, fs6
  FLT.S s2, fs3, fs5
  BNE s2, zero, bb239
  # implict jump to bb222
bb222:
  FSGNJ.S fs6, fs3, fs3
  # implict jump to bb223
bb223:
  FSGNJ.S fa0, fs6, fs6
  CALL my_sin_impl
  FSGNJ.D fs3, fa0, fa0
  FMUL.S fs2, fs2, fs3
  LW t4, 12(sp)
  FCVT.S.W fs3, t4
  LA s2, .CONSTANT.7.2
  FLW fs6, 0(s2)
  FDIV.S fs3, fs6, fs3
  LW t4, 120(sp)
  FCVT.S.W fs6, t4
  LA s2, .CONSTANT.7.3
  FLW fs7, 0(s2)
  FADD.S fs6, fs6, fs7
  FMUL.S fs3, fs3, fs6
  FCVT.S.W fs6, s4
  FMUL.S fs3, fs3, fs6
  FADD.S fs3, fs3, fs4
  LA s2, .CONSTANT.7.4
  FLW fs4, 0(s2)
  FLT.S s2, fs4, fs3
  BNE s2, zero, bb238
  # implict jump to bb224
bb224:
  LA s2, .CONSTANT.7.4
  FLW fs4, 0(s2)
  LA s2, .CONSTANT.7.4
  FLW fs6, 0(s2)
  FSGNJN.S fs4, fs4, fs6
  FLT.S s2, fs3, fs4
  # implict jump to bb225
bb225:
  BNE s2, zero, bb237
  # implict jump to bb226
bb226:
  FSGNJ.S fs4, fs3, fs3
  # implict jump to bb227
bb227:
  LA s2, .CONSTANT.7.2
  FLW fs3, 0(s2)
  FLT.S s2, fs3, fs4
  BNE s2, zero, bb236
  # implict jump to bb228
bb228:
  FSGNJ.S fs3, fs4, fs4
  # implict jump to bb229
bb229:
  FLT.S s2, fs3, fs5
  BNE s2, zero, bb235
  # implict jump to bb230
bb230:
  FSGNJ.S fs4, fs3, fs3
  # implict jump to bb231
bb231:
  FSGNJ.S fa0, fs4, fs4
  CALL my_sin_impl
  FSGNJ.D fs3, fa0, fa0
  FMUL.S fs2, fs2, fs3
  FADD.S fs1, fs1, fs2
  LD t4, 352(sp)
  FSW fs1, 0(t4)
  ADDIW t4, s4, 1
  SW t4, 28(sp)
  # implict jump to bb232
bb232:
  LW t4, 28(sp)
  LW t3, 12(sp)
  BLT t4, t3, bb234
  # implict jump to bb233
bb233:
  LW t4, 28(sp)
  ADD s11, t4, zero
  JAL zero, bb209
bb234:
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 136(sp)
  JAL zero, bb215
bb235:
  LA s2, .CONSTANT.7.4
  FLW fs5, 0(s2)
  FADD.S fs3, fs3, fs5
  FSGNJ.S fs4, fs3, fs3
  JAL zero, bb231
bb236:
  LA s2, .CONSTANT.7.4
  FLW fs6, 0(s2)
  FSUB.S fs4, fs4, fs6
  FSGNJ.S fs3, fs4, fs4
  JAL zero, bb229
bb237:
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
  JAL zero, bb227
bb238:
  ADDI s2, zero, 1
  JAL zero, bb225
bb239:
  LA s2, .CONSTANT.7.4
  FLW fs7, 0(s2)
  FADD.S fs3, fs3, fs7
  FSGNJ.S fs6, fs3, fs3
  JAL zero, bb223
bb240:
  LA s2, .CONSTANT.7.4
  FLW fs6, 0(s2)
  FSUB.S fs5, fs5, fs6
  FSGNJ.S fs3, fs5, fs5
  JAL zero, bb221
bb241:
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
  JAL zero, bb219
bb242:
  ADDI s2, zero, 1
  JAL zero, bb217
bb243:
  ADDI s1, zero, 1
  # implict jump to bb244
bb244:
  ADD t4, s1, zero
  SW t4, 148(sp)
  # implict jump to bb245
bb245:
  LW t4, 148(sp)
  ADD s11, t4, zero
  LD t4, 352(sp)
  FLW fs1, 0(t4)
  LA s4, .CONSTANT.7.1
  FLW fs2, 0(s4)
  FDIV.S fs2, fs0, fs2
  SLLIW s4, s11, 2
  LA s1, test_dct
  ADD s1, s1, s4
  FLW fs3, 0(s1)
  FMUL.S fs2, fs2, fs3
  FADD.S fs1, fs1, fs2
  LD t4, 352(sp)
  FSW fs1, 0(t4)
  ADDIW t4, s11, 1
  SW t4, 152(sp)
  # implict jump to bb246
bb246:
  LW t4, 152(sp)
  LW t3, 12(sp)
  BLT t4, t3, bb248
  # implict jump to bb247
bb247:
  LW t4, 152(sp)
  ADD s0, t4, zero
  JAL zero, bb199
bb248:
  LW t3, 152(sp)
  ADD t4, t3, zero
  SW t4, 148(sp)
  JAL zero, bb245
bb249:
  ADDI s4, zero, 1
  # implict jump to bb250
bb250:
  ADD t4, s4, zero
  SW t4, 76(sp)
  # implict jump to bb251
bb251:
  LW t4, 76(sp)
  ADD s0, t4, zero
  LD t4, 352(sp)
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
  LD t4, 352(sp)
  FSW fs1, 0(t4)
  ADDIW t4, s0, 1
  SW t4, 4(sp)
  # implict jump to bb252
bb252:
  LW t4, 4(sp)
  LW t3, 8(sp)
  BLT t4, t3, bb253
  JAL zero, bb197
bb253:
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 76(sp)
  JAL zero, bb251
bb254:
  # implict jump to bb255
bb255:
  ADD t4, zero, zero
  SW t4, 116(sp)
  # implict jump to bb256
bb256:
  LW t3, 116(sp)
  ADD t4, t3, zero
  SW t4, 108(sp)
  LW t4, 108(sp)
  SLLIW s2, t4, 5
  LA s4, test_dct
  ADD t4, s4, s2
  SD t4, 384(sp)
  LD t4, 384(sp)
  FLW fs0, 0(t4)
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  ADDI s4, zero, 1
  LW t4, 12(sp)
  BLT s4, t4, bb260
  # implict jump to bb257
bb257:
  ADDI a0, zero, 10
  CALL putch
  LW t3, 108(sp)
  ADDIW t4, t3, 1
  SW t4, 64(sp)
  # implict jump to bb258
bb258:
  LW t4, 64(sp)
  LW t3, 8(sp)
  BLT t4, t3, bb259
  JAL zero, bb173
bb259:
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 116(sp)
  JAL zero, bb256
bb260:
  ADDI s4, zero, 1
  # implict jump to bb261
bb261:
  ADD t4, s4, zero
  SW t4, 112(sp)
  # implict jump to bb262
bb262:
  LW t4, 112(sp)
  ADD s5, t4, zero
  ADDI a0, zero, 32
  CALL putch
  SLLIW s6, s5, 2
  LD t4, 384(sp)
  ADD s6, t4, s6
  FLW fs0, 0(s6)
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  ADDIW t4, s5, 1
  SW t4, 124(sp)
  # implict jump to bb263
bb263:
  LW t4, 124(sp)
  LW t3, 12(sp)
  BLT t4, t3, bb264
  JAL zero, bb257
bb264:
  LW t3, 124(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  JAL zero, bb262
bb265:
  # implict jump to bb266
bb266:
  ADD t4, zero, zero
  SW t4, 52(sp)
  ADD t4, zero, zero
  SW t4, 44(sp)
  ADD t4, zero, zero
  SW t4, 40(sp)
  # implict jump to bb267
bb267:
  LW t4, 40(sp)
  ADD s11, t4, zero
  LW t4, 44(sp)
  ADD s4, t4, zero
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LW t4, 12(sp)
  BLT zero, t4, bb272
  # implict jump to bb268
bb268:
  ADD s2, s11, zero
  # implict jump to bb269
bb269:
  ADD t4, s2, zero
  SW t4, 180(sp)
  ADD t4, s4, zero
  SW t4, 176(sp)
  LW t3, 48(sp)
  ADDIW t4, t3, 1
  SW t4, 172(sp)
  # implict jump to bb270
bb270:
  LW t4, 172(sp)
  LW t3, 8(sp)
  BLT t4, t3, bb271
  JAL zero, bb172
bb271:
  LW t3, 172(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  LW t3, 176(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  LW t3, 180(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  JAL zero, bb267
bb272:
  # implict jump to bb273
bb273:
  ADD t4, zero, zero
  SW t4, 56(sp)
  ADD t4, s11, zero
  SW t4, 60(sp)
  # implict jump to bb274
bb274:
  LW t4, 60(sp)
  ADD s11, t4, zero
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  LW t4, 48(sp)
  SLLIW s10, t4, 5
  LA s9, test_dct
  ADD s9, s9, s10
  LW t4, 0(sp)
  SLLIW s10, t4, 2
  ADD t4, s9, s10
  SD t4, 376(sp)
  FCVT.S.L fs0, zero
  LD t4, 376(sp)
  FSW fs0, 0(t4)
  LW t4, 8(sp)
  BLT zero, t4, bb280
  # implict jump to bb275
bb275:
  ADD s10, zero, zero
  # implict jump to bb276
bb276:
  ADD t4, s11, zero
  SW t4, 156(sp)
  ADD s8, s10, zero
  LW t3, 0(sp)
  ADDIW t4, t3, 1
  SW t4, 184(sp)
  # implict jump to bb277
bb277:
  LW t4, 184(sp)
  LW t3, 12(sp)
  BLT t4, t3, bb279
  # implict jump to bb278
bb278:
  ADD s4, s8, zero
  LW t4, 156(sp)
  ADD s2, t4, zero
  JAL zero, bb269
bb279:
  LW t3, 184(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LW t3, 156(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  JAL zero, bb274
bb280:
  # implict jump to bb281
bb281:
  ADD t4, zero, zero
  SW t4, 84(sp)
  # implict jump to bb282
bb282:
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  LW t4, 12(sp)
  BLT zero, t4, bb288
  # implict jump to bb283
bb283:
  ADD s9, zero, zero
  # implict jump to bb284
bb284:
  ADD s6, s9, zero
  LW t3, 80(sp)
  ADDIW t4, t3, 1
  SW t4, 188(sp)
  # implict jump to bb285
bb285:
  LW t4, 188(sp)
  LW t3, 8(sp)
  BLT t4, t3, bb287
  # implict jump to bb286
bb286:
  LW t4, 188(sp)
  ADD s10, t4, zero
  ADD s11, s6, zero
  JAL zero, bb276
bb287:
  LW t3, 188(sp)
  ADD t4, t3, zero
  SW t4, 84(sp)
  JAL zero, bb282
bb288:
  # implict jump to bb289
bb289:
  ADD t4, zero, zero
  SW t4, 88(sp)
  # implict jump to bb290
bb290:
  LW t4, 88(sp)
  ADD s1, t4, zero
  LD t4, 376(sp)
  FLW fs0, 0(t4)
  LW t4, 80(sp)
  SLLIW s0, t4, 5
  LA s5, test_block
  ADD s0, s5, s0
  SLLIW s5, s1, 2
  ADD s0, s0, s5
  FLW fs1, 0(s0)
  LW t4, 8(sp)
  FCVT.S.W fs2, t4
  LA s0, .CONSTANT.7.2
  FLW fs3, 0(s0)
  FDIV.S fs2, fs3, fs2
  LW t4, 80(sp)
  FCVT.S.W fs3, t4
  LA s0, .CONSTANT.7.3
  FLW fs4, 0(s0)
  FADD.S fs3, fs3, fs4
  FMUL.S fs2, fs2, fs3
  LW t4, 48(sp)
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
  BNE s0, zero, bb317
  # implict jump to bb291
bb291:
  LA s0, .CONSTANT.7.4
  FLW fs4, 0(s0)
  LA s0, .CONSTANT.7.4
  FLW fs5, 0(s0)
  FSGNJN.S fs4, fs4, fs5
  FLT.S s0, fs2, fs4
  # implict jump to bb292
bb292:
  BNE s0, zero, bb316
  # implict jump to bb293
bb293:
  FSGNJ.S fs4, fs2, fs2
  # implict jump to bb294
bb294:
  LA s0, .CONSTANT.7.2
  FLW fs2, 0(s0)
  FLT.S s0, fs2, fs4
  BNE s0, zero, bb315
  # implict jump to bb295
bb295:
  FSGNJ.S fs2, fs4, fs4
  # implict jump to bb296
bb296:
  LA s0, .CONSTANT.7.2
  FLW fs4, 0(s0)
  LA s0, .CONSTANT.7.2
  FLW fs5, 0(s0)
  FSGNJN.S fs4, fs4, fs5
  FLT.S s0, fs2, fs4
  BNE s0, zero, bb314
  # implict jump to bb297
bb297:
  FSGNJ.S fs5, fs2, fs2
  # implict jump to bb298
bb298:
  FSGNJ.S fa0, fs5, fs5
  CALL my_sin_impl
  FSGNJ.D fs2, fa0, fa0
  FMUL.S fs1, fs1, fs2
  LW t4, 12(sp)
  FCVT.S.W fs2, t4
  LA s0, .CONSTANT.7.2
  FLW fs5, 0(s0)
  FDIV.S fs2, fs5, fs2
  FCVT.S.W fs5, s1
  LA s0, .CONSTANT.7.3
  FLW fs6, 0(s0)
  FADD.S fs5, fs5, fs6
  FMUL.S fs2, fs2, fs5
  LW t4, 0(sp)
  FCVT.S.W fs5, t4
  FMUL.S fs2, fs2, fs5
  FADD.S fs2, fs2, fs3
  LA s0, .CONSTANT.7.4
  FLW fs3, 0(s0)
  FLT.S s0, fs3, fs2
  BNE s0, zero, bb313
  # implict jump to bb299
bb299:
  LA s0, .CONSTANT.7.4
  FLW fs3, 0(s0)
  LA s0, .CONSTANT.7.4
  FLW fs5, 0(s0)
  FSGNJN.S fs3, fs3, fs5
  FLT.S s0, fs2, fs3
  # implict jump to bb300
bb300:
  BNE s0, zero, bb312
  # implict jump to bb301
bb301:
  FSGNJ.S fs3, fs2, fs2
  # implict jump to bb302
bb302:
  LA s0, .CONSTANT.7.2
  FLW fs2, 0(s0)
  FLT.S s0, fs2, fs3
  BNE s0, zero, bb311
  # implict jump to bb303
bb303:
  FSGNJ.S fs2, fs3, fs3
  # implict jump to bb304
bb304:
  FLT.S s0, fs2, fs4
  BNE s0, zero, bb310
  # implict jump to bb305
bb305:
  FSGNJ.S fs3, fs2, fs2
  # implict jump to bb306
bb306:
  FSGNJ.S fa0, fs3, fs3
  CALL my_sin_impl
  FSGNJ.D fs2, fa0, fa0
  FMUL.S fs1, fs1, fs2
  FADD.S fs0, fs0, fs1
  LD t4, 376(sp)
  FSW fs0, 0(t4)
  ADDIW t4, s1, 1
  SW t4, 164(sp)
  # implict jump to bb307
bb307:
  LW t4, 164(sp)
  LW t3, 12(sp)
  BLT t4, t3, bb309
  # implict jump to bb308
bb308:
  LW t4, 164(sp)
  ADD s9, t4, zero
  JAL zero, bb284
bb309:
  LW t3, 164(sp)
  ADD t4, t3, zero
  SW t4, 88(sp)
  JAL zero, bb290
bb310:
  LA s0, .CONSTANT.7.4
  FLW fs4, 0(s0)
  FADD.S fs2, fs2, fs4
  FSGNJ.S fs3, fs2, fs2
  JAL zero, bb306
bb311:
  LA s0, .CONSTANT.7.4
  FLW fs5, 0(s0)
  FSUB.S fs3, fs3, fs5
  FSGNJ.S fs2, fs3, fs3
  JAL zero, bb304
bb312:
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
  JAL zero, bb302
bb313:
  ADDI s0, zero, 1
  JAL zero, bb300
bb314:
  LA s0, .CONSTANT.7.4
  FLW fs6, 0(s0)
  FADD.S fs2, fs2, fs6
  FSGNJ.S fs5, fs2, fs2
  JAL zero, bb298
bb315:
  LA s0, .CONSTANT.7.4
  FLW fs5, 0(s0)
  FSUB.S fs4, fs4, fs5
  FSGNJ.S fs2, fs4, fs4
  JAL zero, bb296
bb316:
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
  JAL zero, bb294
bb317:
  ADDI s0, zero, 1
  JAL zero, bb292
bb318:
  # implict jump to bb319
bb319:
  ADD t4, zero, zero
  SW t4, 16(sp)
  # implict jump to bb320
bb320:
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  LW t4, 12(sp)
  BLT zero, t4, bb324
  # implict jump to bb321
bb321:
  LW t3, 20(sp)
  ADDIW t4, t3, 1
  SW t4, 192(sp)
  # implict jump to bb322
bb322:
  LW t4, 192(sp)
  LW t3, 8(sp)
  BLT t4, t3, bb323
  JAL zero, bb171
bb323:
  LW t3, 192(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  JAL zero, bb320
bb324:
  # implict jump to bb325
bb325:
  ADD t4, zero, zero
  SW t4, 24(sp)
  # implict jump to bb326
bb326:
  LW t4, 24(sp)
  ADD s11, t4, zero
  LW t4, 20(sp)
  SLLIW s2, t4, 5
  LA s4, test_block
  ADD s2, s4, s2
  SLLIW s4, s11, 2
  ADD s2, s2, s4
  CALL getfloat
  FSGNJ.D fs0, fa0, fa0
  FSW fs0, 0(s2)
  ADDIW t4, s11, 1
  SW t4, 160(sp)
  # implict jump to bb327
bb327:
  LW t4, 160(sp)
  LW t3, 12(sp)
  BLT t4, t3, bb328
  JAL zero, bb321
bb328:
  LW t3, 160(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  JAL zero, bb326
my_fabs:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs0, 16(sp)
  FSD fs1, 24(sp)
  FSGNJ.D fs0, fa0, fa0
  FCVT.S.L fs1, zero
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb331
  # implict jump to bb330
bb330:
  FSGNJN.S fs1, fs0, fs0
  FSGNJ.S fa0, fs1, fs1
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb331:
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
