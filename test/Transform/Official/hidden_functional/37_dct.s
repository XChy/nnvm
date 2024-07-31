.global my_sin_impl
.global main
.section .bss
test_idct:
.space 256
test_dct:
.space 256
test_block:
.space 256







.section .data



.CONSTANT.7.0:
.word 0x358637bd
.CONSTANT.7.1:
.word 0x40400000
.CONSTANT.7.2:
.word 0x40800000
.CONSTANT.7.3:
.word 0x40000000
.CONSTANT.7.4:
.word 0x40490fdb
.CONSTANT.7.5:
.word 0x3f000000
.CONSTANT.7.6:
.word 0x40c90fdb
.section .text
my_sin_impl:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs0, 16(sp)
  FSD fs1, 24(sp)
  FSD fs2, 32(sp)
  FSD fs3, 40(sp)
  FSGNJ.D fs0, fa0, fa0
  ADDI s0, zero, 0
  FCVT.S.W fs1, s0
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb5
  # implict jump to bb1
bb1:
  FSGNJN.S fs1, fs0, fs0
  # implict jump to bb2
bb2:
  LA s0, .CONSTANT.7.0
  FLW fs2, 0(s0)
  FLE.S s0, fs1, fs2
  BNE s0, zero, bb4
  # implict jump to bb3
bb3:
  LA s0, .CONSTANT.7.1
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
bb4:
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  FLD fs2, 32(sp)
  FLD fs3, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb5:
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb2
main:
  ADDI sp, sp, -480
  SD ra, 216(sp)
  SD s0, 224(sp)
  SD s1, 232(sp)
  SD s2, 240(sp)
  SD s3, 248(sp)
  SD s4, 256(sp)
  SD s6, 264(sp)
  SD s8, 272(sp)
  SD s9, 280(sp)
  SD s10, 288(sp)
  SD s11, 296(sp)
  FSD fs0, 304(sp)
  FSD fs1, 312(sp)
  SD s5, 320(sp)
  SD s7, 328(sp)
  FSD fs2, 336(sp)
  FSD fs3, 344(sp)
  FSD fs4, 352(sp)
  FSD fs5, 360(sp)
  FSD fs6, 368(sp)
  FSD fs7, 376(sp)
  FSD fs8, 384(sp)
  FSD fs9, 392(sp)
  FSD fs10, 400(sp)
  FSD fs11, 472(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 168(sp)
  CALL getint
  ADD t4, a0, zero
  SW t4, 164(sp)
  ADDI t4, zero, 0
  SW t4, 156(sp)
  LW t4, 156(sp)
  LW t3, 168(sp)
  BLT t4, t3, bb126
  # implict jump to bb7
bb7:
  LW t4, 156(sp)
  LW t3, 168(sp)
  BLT t4, t3, bb81
  # implict jump to bb8
bb8:
  LW t4, 156(sp)
  LW t3, 168(sp)
  BLT t4, t3, bb74
  # implict jump to bb9
bb9:
  ADDI a0, zero, 10
  CALL putch
  LW t4, 156(sp)
  LW t3, 168(sp)
  BLT t4, t3, bb19
  # implict jump to bb10
bb10:
  LW t4, 156(sp)
  LW t3, 168(sp)
  BLT t4, t3, bb12
  # implict jump to bb11
bb11:
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 216(sp)
  LD s0, 224(sp)
  LD s1, 232(sp)
  LD s2, 240(sp)
  LD s3, 248(sp)
  LD s4, 256(sp)
  LD s6, 264(sp)
  LD s8, 272(sp)
  LD s9, 280(sp)
  LD s10, 288(sp)
  LD s11, 296(sp)
  FLD fs0, 304(sp)
  FLD fs1, 312(sp)
  LD s5, 320(sp)
  LD s7, 328(sp)
  FLD fs2, 336(sp)
  FLD fs3, 344(sp)
  FLD fs4, 352(sp)
  FLD fs5, 360(sp)
  FLD fs6, 368(sp)
  FLD fs7, 376(sp)
  FLD fs8, 384(sp)
  FLD fs9, 392(sp)
  FLD fs10, 400(sp)
  FLD fs11, 472(sp)
  ADDI sp, sp, 480
  JALR zero, 0(ra)
bb12:
  ADDI s4, zero, 1
  ADD s0, zero, zero
  # implict jump to bb13
bb13:
  ADD s7, s0, zero
  SLLIW s5, s7, 5
  LA s8, test_idct
  ADD s5, s8, s5
  FLW fs0, 0(s5)
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  LW t4, 164(sp)
  BLT s4, t4, bb16
  # implict jump to bb14
bb14:
  ADDI a0, zero, 10
  CALL putch
  ADDIW s6, s7, 1
  LW t4, 168(sp)
  BLT s6, t4, bb15
  JAL zero, bb11
bb15:
  ADD s0, s6, zero
  JAL zero, bb13
bb16:
  ADDI s8, zero, 1
  # implict jump to bb17
bb17:
  ADD s2, s8, zero
  ADDI a0, zero, 32
  CALL putch
  SLLIW s6, s2, 2
  ADD s6, s5, s6
  FLW fs0, 0(s6)
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  ADDIW s2, s2, 1
  LW t4, 164(sp)
  BLT s2, t4, bb18
  JAL zero, bb14
bb18:
  ADD s8, s2, zero
  JAL zero, bb17
bb19:
  ADD s1, zero, zero
  ADD s11, zero, zero
  ADD t4, zero, zero
  SW t4, 120(sp)
  # implict jump to bb20
bb20:
  LW t4, 120(sp)
  ADD s10, t4, zero
  ADD s9, s11, zero
  ADD t4, s1, zero
  SW t4, 40(sp)
  LW t4, 164(sp)
  BLT zero, t4, bb24
  # implict jump to bb21
bb21:
  # implict jump to bb22
bb22:
  LW t4, 40(sp)
  ADDIW s3, t4, 1
  LW t4, 168(sp)
  BLT s3, t4, bb23
  JAL zero, bb10
bb23:
  ADD s1, s3, zero
  ADD s11, s9, zero
  ADD t4, s10, zero
  SW t4, 120(sp)
  JAL zero, bb20
bb24:
  LW t4, 40(sp)
  SLLIW s7, t4, 5
  LA s2, test_idct
  ADD t4, s2, s7
  SD t4, 464(sp)
  ADDI s7, zero, 1
  FCVT.S.W fs3, s7
  LA s7, .CONSTANT.7.2
  FLW fs4, 0(s7)
  FDIV.S fs4, fs3, fs4
  ADDI t4, zero, 1
  SW t4, 12(sp)
  ADD t4, zero, zero
  SW t4, 84(sp)
  # implict jump to bb25
bb25:
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t4, 8(sp)
  SLLIW s5, t4, 2
  LD t3, 464(sp)
  ADD t4, t3, s5
  SD t4, 456(sp)
  LA s3, test_dct
  FLW fs5, 0(s3)
  FMUL.S fs5, fs4, fs5
  LD t4, 456(sp)
  FSW fs5, 0(t4)
  LW t4, 12(sp)
  LW t3, 168(sp)
  BLT t4, t3, bb71
  # implict jump to bb26
bb26:
  ADDI t4, zero, 1
  SW t4, 136(sp)
  LW t4, 136(sp)
  LW t3, 164(sp)
  BLT t4, t3, bb67
  # implict jump to bb27
bb27:
  ADDI s7, zero, 1
  # implict jump to bb28
bb28:
  LW t4, 12(sp)
  LW t3, 168(sp)
  BLT t4, t3, bb33
  # implict jump to bb29
bb29:
  ADDI s3, zero, 1
  ADD s4, s7, zero
  # implict jump to bb30
bb30:
  LD t4, 456(sp)
  FLW fs0, 0(t4)
  LA s2, .CONSTANT.7.3
  FLW fs1, 0(s2)
  FMUL.S fs0, fs0, fs1
  LW t4, 168(sp)
  FCVT.S.W fs1, t4
  FDIV.S fs0, fs0, fs1
  LA s2, .CONSTANT.7.3
  FLW fs1, 0(s2)
  FMUL.S fs0, fs0, fs1
  LW t4, 164(sp)
  FCVT.S.W fs1, t4
  FDIV.S fs0, fs0, fs1
  LD t4, 456(sp)
  FSW fs0, 0(t4)
  LW t3, 8(sp)
  ADDIW t4, t3, 1
  SW t4, 80(sp)
  LW t4, 80(sp)
  LW t3, 164(sp)
  BLT t4, t3, bb32
  # implict jump to bb31
bb31:
  ADD s9, s3, zero
  ADD s10, s4, zero
  JAL zero, bb22
bb32:
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 84(sp)
  JAL zero, bb25
bb33:
  ADDI t4, zero, 1
  SW t4, 92(sp)
  # implict jump to bb34
bb34:
  LW t3, 92(sp)
  ADD t4, t3, zero
  SW t4, 124(sp)
  LW t4, 136(sp)
  LW t3, 164(sp)
  BLT t4, t3, bb39
  # implict jump to bb35
bb35:
  ADDI s2, zero, 1
  # implict jump to bb36
bb36:
  LW t3, 124(sp)
  ADDIW t4, t3, 1
  SW t4, 88(sp)
  LW t4, 88(sp)
  LW t3, 168(sp)
  BLT t4, t3, bb38
  # implict jump to bb37
bb37:
  LW t4, 88(sp)
  ADD s3, t4, zero
  ADD s4, s2, zero
  JAL zero, bb30
bb38:
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 92(sp)
  JAL zero, bb34
bb39:
  LW t4, 124(sp)
  SLLIW s0, t4, 5
  LA s5, test_dct
  ADD t4, s5, s0
  SD t4, 408(sp)
  LW t4, 168(sp)
  FCVT.S.W fs7, t4
  LA s5, .CONSTANT.7.4
  FLW fs8, 0(s5)
  FDIV.S fs7, fs8, fs7
  LW t4, 40(sp)
  FCVT.S.W fs8, t4
  LA s5, .CONSTANT.7.5
  FLW fs9, 0(s5)
  FADD.S fs8, fs8, fs9
  FMUL.S fs7, fs7, fs8
  LW t4, 124(sp)
  FCVT.S.W fs8, t4
  FMUL.S fs7, fs7, fs8
  ADDI s5, zero, 2
  FCVT.S.W fs8, s5
  LA s5, .CONSTANT.7.4
  FLW fs9, 0(s5)
  FDIV.S fs8, fs9, fs8
  FADD.S fs7, fs7, fs8
  LA s5, .CONSTANT.7.6
  FLW fs9, 0(s5)
  FLT.S t4, fs9, fs7
  SB t4, 1(sp)
  ADDI t4, zero, 1
  SW t4, 116(sp)
  # implict jump to bb40
bb40:
  LW t4, 116(sp)
  ADD s0, t4, zero
  LD t4, 456(sp)
  FLW fs9, 0(t4)
  SLLIW s5, s0, 2
  LD t4, 408(sp)
  ADD s5, t4, s5
  FLW fs10, 0(s5)
  LB t4, 1(sp)
  BNE t4, zero, bb66
  # implict jump to bb41
bb41:
  LA s5, .CONSTANT.7.6
  FLW fs11, 0(s5)
  LA s5, .CONSTANT.7.6
  FLW fs1, 0(s5)
  FSGNJN.S fs1, fs11, fs1
  FLT.S s5, fs7, fs1
  # implict jump to bb42
bb42:
  BNE s5, zero, bb65
  # implict jump to bb43
bb43:
  FSGNJ.S fs1, fs7, fs7
  # implict jump to bb44
bb44:
  LA s5, .CONSTANT.7.4
  FLW fs2, 0(s5)
  FLT.S s5, fs2, fs1
  BNE s5, zero, bb64
  # implict jump to bb45
bb45:
  FSGNJ.S fs2, fs1, fs1
  # implict jump to bb46
bb46:
  LA s5, .CONSTANT.7.4
  FLW fs1, 0(s5)
  LA s5, .CONSTANT.7.4
  FLW fs11, 0(s5)
  FSGNJN.S fs1, fs1, fs11
  FLT.S s5, fs2, fs1
  BNE s5, zero, bb63
  # implict jump to bb47
bb47:
  FSGNJ.S fs11, fs2, fs2
  # implict jump to bb48
bb48:
  FSGNJ.S fa0, fs11, fs11
  CALL my_sin_impl
  FSGNJ.D fs0, fa0, fa0
  FMUL.S fs0, fs10, fs0
  LW t4, 164(sp)
  FCVT.S.W fs2, t4
  LA s5, .CONSTANT.7.4
  FLW fs10, 0(s5)
  FDIV.S fs2, fs10, fs2
  LW t4, 8(sp)
  FCVT.S.W fs10, t4
  LA s5, .CONSTANT.7.5
  FLW fs11, 0(s5)
  FADD.S fs10, fs10, fs11
  FMUL.S fs2, fs2, fs10
  FCVT.S.W fs10, s0
  FMUL.S fs2, fs2, fs10
  FADD.S fs2, fs2, fs8
  LA s5, .CONSTANT.7.6
  FLW fs10, 0(s5)
  FLT.S s5, fs10, fs2
  BNE s5, zero, bb62
  # implict jump to bb49
bb49:
  LA s5, .CONSTANT.7.6
  FLW fs10, 0(s5)
  LA s5, .CONSTANT.7.6
  FLW fs11, 0(s5)
  FSGNJN.S fs10, fs10, fs11
  FLT.S s5, fs2, fs10
  # implict jump to bb50
bb50:
  BNE s5, zero, bb61
  # implict jump to bb51
bb51:
  FSGNJ.S fs10, fs2, fs2
  # implict jump to bb52
bb52:
  LA s5, .CONSTANT.7.4
  FLW fs2, 0(s5)
  FLT.S s5, fs2, fs10
  BNE s5, zero, bb60
  # implict jump to bb53
bb53:
  FSGNJ.S fs2, fs10, fs10
  # implict jump to bb54
bb54:
  FLT.S s5, fs2, fs1
  BNE s5, zero, bb59
  # implict jump to bb55
bb55:
  FSGNJ.S fs1, fs2, fs2
  # implict jump to bb56
bb56:
  FSGNJ.S fa0, fs1, fs1
  CALL my_sin_impl
  FSGNJ.D fs1, fa0, fa0
  FMUL.S fs0, fs0, fs1
  FADD.S fs0, fs9, fs0
  LD t4, 456(sp)
  FSW fs0, 0(t4)
  ADDIW t4, s0, 1
  SW t4, 96(sp)
  LW t4, 96(sp)
  LW t3, 164(sp)
  BLT t4, t3, bb58
  # implict jump to bb57
bb57:
  LW t4, 96(sp)
  ADD s2, t4, zero
  JAL zero, bb36
bb58:
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 116(sp)
  JAL zero, bb40
bb59:
  LA s5, .CONSTANT.7.6
  FLW fs5, 0(s5)
  FADD.S fs2, fs2, fs5
  FSGNJ.S fs1, fs2, fs2
  JAL zero, bb56
bb60:
  LA s5, .CONSTANT.7.6
  FLW fs5, 0(s5)
  FSUB.S fs5, fs10, fs5
  FSGNJ.S fs2, fs5, fs5
  JAL zero, bb54
bb61:
  LA s5, .CONSTANT.7.6
  FLW fs11, 0(s5)
  FDIV.S fs11, fs2, fs11
  FCVT.W.S s5, fs11, rtz
  FCVT.S.W fs11, s5
  LA s5, .CONSTANT.7.6
  FLW fs5, 0(s5)
  FMUL.S fs5, fs11, fs5
  FSUB.S fs2, fs2, fs5
  FSGNJ.S fs10, fs2, fs2
  JAL zero, bb52
bb62:
  ADDI s5, zero, 1
  JAL zero, bb50
bb63:
  LA s5, .CONSTANT.7.6
  FLW fs0, 0(s5)
  FADD.S fs0, fs2, fs0
  FSGNJ.S fs11, fs0, fs0
  JAL zero, bb48
bb64:
  LA s5, .CONSTANT.7.6
  FLW fs11, 0(s5)
  FSUB.S fs1, fs1, fs11
  FSGNJ.S fs2, fs1, fs1
  JAL zero, bb46
bb65:
  LA s5, .CONSTANT.7.6
  FLW fs11, 0(s5)
  FDIV.S fs11, fs7, fs11
  FCVT.W.S s5, fs11, rtz
  FCVT.S.W fs11, s5
  LA s5, .CONSTANT.7.6
  FLW fs2, 0(s5)
  FMUL.S fs2, fs11, fs2
  FSUB.S fs2, fs7, fs2
  FSGNJ.S fs1, fs2, fs2
  JAL zero, bb44
bb66:
  ADDI s5, zero, 1
  JAL zero, bb42
bb67:
  LA s2, .CONSTANT.7.3
  FLW fs6, 0(s2)
  FDIV.S fs6, fs3, fs6
  ADDI t4, zero, 1
  SW t4, 132(sp)
  # implict jump to bb68
bb68:
  LW t4, 132(sp)
  ADD s4, t4, zero
  LD t4, 456(sp)
  FLW fs7, 0(t4)
  SLLIW s3, s4, 2
  LA s0, test_dct
  ADD s0, s0, s3
  FLW fs8, 0(s0)
  FMUL.S fs8, fs6, fs8
  FADD.S fs7, fs7, fs8
  LD t4, 456(sp)
  FSW fs7, 0(t4)
  ADDIW t4, s4, 1
  SW t4, 128(sp)
  LW t4, 128(sp)
  LW t3, 164(sp)
  BLT t4, t3, bb70
  # implict jump to bb69
bb69:
  LW t4, 128(sp)
  ADD s7, t4, zero
  JAL zero, bb28
bb70:
  LW t3, 128(sp)
  ADD t4, t3, zero
  SW t4, 132(sp)
  JAL zero, bb68
bb71:
  LA s3, .CONSTANT.7.3
  FLW fs5, 0(s3)
  FDIV.S ft4, fs3, fs5
  FSW ft4, 100(sp)
  ADDI t4, zero, 1
  SW t4, 144(sp)
  # implict jump to bb72
bb72:
  LW t4, 144(sp)
  ADD s7, t4, zero
  LD t4, 456(sp)
  FLW fs6, 0(t4)
  SLLIW s5, s7, 5
  LA s0, test_dct
  ADD s0, s0, s5
  FLW fs7, 0(s0)
  FLW ft4, 100(sp)
  FMUL.S fs7, ft4, fs7
  FADD.S fs6, fs6, fs7
  LD t4, 456(sp)
  FSW fs6, 0(t4)
  ADDIW t4, s7, 1
  SW t4, 140(sp)
  LW t4, 140(sp)
  LW t3, 168(sp)
  BLT t4, t3, bb73
  JAL zero, bb26
bb73:
  LW t3, 140(sp)
  ADD t4, t3, zero
  SW t4, 144(sp)
  JAL zero, bb72
bb74:
  ADDI t4, zero, 1
  SW t4, 36(sp)
  ADD t4, zero, zero
  SW t4, 20(sp)
  # implict jump to bb75
bb75:
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LW t4, 32(sp)
  SLLIW s8, t4, 5
  LA s7, test_dct
  ADD t4, s7, s8
  SD t4, 448(sp)
  LD t4, 448(sp)
  FLW fs3, 0(t4)
  FSGNJ.S fa0, fs3, fs3
  CALL putfloat
  LW t4, 36(sp)
  LW t3, 164(sp)
  BLT t4, t3, bb78
  # implict jump to bb76
bb76:
  ADDI a0, zero, 10
  CALL putch
  LW t3, 32(sp)
  ADDIW t4, t3, 1
  SW t4, 16(sp)
  LW t4, 16(sp)
  LW t3, 168(sp)
  BLT t4, t3, bb77
  JAL zero, bb9
bb77:
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  JAL zero, bb75
bb78:
  ADDI t4, zero, 1
  SW t4, 28(sp)
  # implict jump to bb79
bb79:
  LW t4, 28(sp)
  ADD s0, t4, zero
  ADDI a0, zero, 32
  CALL putch
  SLLIW s3, s0, 2
  LD t4, 448(sp)
  ADD s3, t4, s3
  FLW fs3, 0(s3)
  FSGNJ.S fa0, fs3, fs3
  CALL putfloat
  ADDIW t4, s0, 1
  SW t4, 24(sp)
  LW t4, 24(sp)
  LW t3, 164(sp)
  BLT t4, t3, bb80
  JAL zero, bb76
bb80:
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  JAL zero, bb79
bb81:
  ADD t4, zero, zero
  SW t4, 44(sp)
  ADD t4, zero, zero
  SW t4, 52(sp)
  ADD t4, zero, zero
  SW t4, 60(sp)
  # implict jump to bb82
bb82:
  LW t4, 60(sp)
  ADD s2, t4, zero
  LW t4, 52(sp)
  ADD s6, t4, zero
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 196(sp)
  LW t4, 164(sp)
  BLT zero, t4, bb86
  # implict jump to bb83
bb83:
  ADD s1, s2, zero
  # implict jump to bb84
bb84:
  ADD t4, s1, zero
  SW t4, 56(sp)
  ADD t4, s6, zero
  SW t4, 48(sp)
  LW t3, 196(sp)
  ADDIW t4, t3, 1
  SW t4, 4(sp)
  LW t4, 4(sp)
  LW t3, 168(sp)
  BLT t4, t3, bb85
  JAL zero, bb8
bb85:
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  JAL zero, bb82
bb86:
  LW t4, 196(sp)
  SLLIW s0, t4, 5
  LA s7, test_dct
  ADD t4, s7, s0
  SD t4, 432(sp)
  FCVT.S.W ft4, zero
  FSW ft4, 104(sp)
  ADD t4, zero, zero
  SW t4, 68(sp)
  ADD t4, s2, zero
  SW t4, 112(sp)
  # implict jump to bb87
bb87:
  LW t4, 112(sp)
  ADD s8, t4, zero
  LW t3, 68(sp)
  ADD t4, t3, zero
  SW t4, 188(sp)
  LW t4, 188(sp)
  SLLIW s9, t4, 2
  LD t3, 432(sp)
  ADD t4, t3, s9
  SD t4, 424(sp)
  FLW ft4, 104(sp)
  LD t4, 424(sp)
  FSW ft4, 0(t4)
  LW t4, 156(sp)
  LW t3, 168(sp)
  BLT t4, t3, bb92
  # implict jump to bb88
bb88:
  ADD s9, zero, zero
  # implict jump to bb89
bb89:
  ADD t4, s8, zero
  SW t4, 72(sp)
  LW t3, 188(sp)
  ADDIW t4, t3, 1
  SW t4, 64(sp)
  LW t4, 64(sp)
  LW t3, 164(sp)
  BLT t4, t3, bb91
  # implict jump to bb90
bb90:
  ADD s6, s9, zero
  LW t4, 72(sp)
  ADD s1, t4, zero
  JAL zero, bb84
bb91:
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  JAL zero, bb87
bb92:
  ADD t4, zero, zero
  SW t4, 200(sp)
  # implict jump to bb93
bb93:
  LW t3, 200(sp)
  ADD t4, t3, zero
  SW t4, 192(sp)
  LW t4, 164(sp)
  BLT zero, t4, bb98
  # implict jump to bb94
bb94:
  ADD s0, zero, zero
  # implict jump to bb95
bb95:
  LW t3, 192(sp)
  ADDIW t4, t3, 1
  SW t4, 152(sp)
  LW t4, 152(sp)
  LW t3, 168(sp)
  BLT t4, t3, bb97
  # implict jump to bb96
bb96:
  LW t4, 152(sp)
  ADD s9, t4, zero
  ADD s8, s0, zero
  JAL zero, bb89
bb97:
  LW t3, 152(sp)
  ADD t4, t3, zero
  SW t4, 200(sp)
  JAL zero, bb93
bb98:
  LW t4, 192(sp)
  SLLIW s5, t4, 5
  LA s4, test_block
  ADD t4, s4, s5
  SD t4, 440(sp)
  LW t4, 168(sp)
  FCVT.S.W fs1, t4
  LA s5, .CONSTANT.7.4
  FLW fs2, 0(s5)
  FDIV.S fs1, fs2, fs1
  LW t4, 192(sp)
  FCVT.S.W fs2, t4
  LA s5, .CONSTANT.7.5
  FLW fs3, 0(s5)
  FADD.S fs2, fs2, fs3
  FMUL.S fs1, fs1, fs2
  LW t4, 196(sp)
  FCVT.S.W fs2, t4
  FMUL.S fs1, fs1, fs2
  ADDI s5, zero, 2
  FCVT.S.W fs2, s5
  LA s5, .CONSTANT.7.4
  FLW fs3, 0(s5)
  FDIV.S ft4, fs3, fs2
  FSW ft4, 108(sp)
  FLW ft3, 108(sp)
  FADD.S ft4, fs1, ft3
  FSW ft4, 76(sp)
  LA s5, .CONSTANT.7.6
  FLW fs3, 0(s5)
  FLW ft4, 76(sp)
  FLT.S t4, fs3, ft4
  SB t4, 0(sp)
  ADD t4, zero, zero
  SW t4, 204(sp)
  # implict jump to bb99
bb99:
  LW t4, 204(sp)
  ADD s4, t4, zero
  LD t4, 424(sp)
  FLW fs3, 0(t4)
  SLLIW s5, s4, 2
  LD t4, 440(sp)
  ADD s5, t4, s5
  FLW fs4, 0(s5)
  LB t4, 0(sp)
  BNE t4, zero, bb125
  # implict jump to bb100
bb100:
  LA s5, .CONSTANT.7.6
  FLW fs5, 0(s5)
  LA s5, .CONSTANT.7.6
  FLW fs6, 0(s5)
  FSGNJN.S fs5, fs5, fs6
  FLW ft4, 76(sp)
  FLT.S s5, ft4, fs5
  # implict jump to bb101
bb101:
  BNE s5, zero, bb124
  # implict jump to bb102
bb102:
  FLW ft4, 76(sp)
  FLW ft3, 76(sp)
  FSGNJ.S fs5, ft4, ft3
  # implict jump to bb103
bb103:
  LA s5, .CONSTANT.7.4
  FLW fs6, 0(s5)
  FLT.S s5, fs6, fs5
  BNE s5, zero, bb123
  # implict jump to bb104
bb104:
  FSGNJ.S fs6, fs5, fs5
  # implict jump to bb105
bb105:
  LA s5, .CONSTANT.7.4
  FLW fs5, 0(s5)
  LA s5, .CONSTANT.7.4
  FLW fs7, 0(s5)
  FSGNJN.S fs5, fs5, fs7
  FLT.S s5, fs6, fs5
  BNE s5, zero, bb122
  # implict jump to bb106
bb106:
  FSGNJ.S fs7, fs6, fs6
  # implict jump to bb107
bb107:
  FSGNJ.S fa0, fs7, fs7
  CALL my_sin_impl
  FSGNJ.D fs6, fa0, fa0
  FMUL.S fs4, fs4, fs6
  LW t4, 164(sp)
  FCVT.S.W fs6, t4
  LA s5, .CONSTANT.7.4
  FLW fs7, 0(s5)
  FDIV.S fs6, fs7, fs6
  FCVT.S.W fs7, s4
  LA s5, .CONSTANT.7.5
  FLW fs8, 0(s5)
  FADD.S fs7, fs7, fs8
  FMUL.S fs6, fs6, fs7
  LW t4, 188(sp)
  FCVT.S.W fs7, t4
  FMUL.S fs6, fs6, fs7
  FLW ft4, 108(sp)
  FADD.S fs6, fs6, ft4
  LA s5, .CONSTANT.7.6
  FLW fs7, 0(s5)
  FLT.S s5, fs7, fs6
  BNE s5, zero, bb121
  # implict jump to bb108
bb108:
  LA s5, .CONSTANT.7.6
  FLW fs7, 0(s5)
  LA s5, .CONSTANT.7.6
  FLW fs8, 0(s5)
  FSGNJN.S fs7, fs7, fs8
  FLT.S s5, fs6, fs7
  # implict jump to bb109
bb109:
  BNE s5, zero, bb120
  # implict jump to bb110
bb110:
  FSGNJ.S fs7, fs6, fs6
  # implict jump to bb111
bb111:
  LA s5, .CONSTANT.7.4
  FLW fs6, 0(s5)
  FLT.S s5, fs6, fs7
  BNE s5, zero, bb119
  # implict jump to bb112
bb112:
  FSGNJ.S fs6, fs7, fs7
  # implict jump to bb113
bb113:
  FLT.S s5, fs6, fs5
  BNE s5, zero, bb118
  # implict jump to bb114
bb114:
  FSGNJ.S fs5, fs6, fs6
  # implict jump to bb115
bb115:
  FSGNJ.S fa0, fs5, fs5
  CALL my_sin_impl
  FSGNJ.D fs5, fa0, fa0
  FMUL.S fs4, fs4, fs5
  FADD.S fs3, fs3, fs4
  LD t4, 424(sp)
  FSW fs3, 0(t4)
  ADDIW t4, s4, 1
  SW t4, 208(sp)
  LW t4, 208(sp)
  LW t3, 164(sp)
  BLT t4, t3, bb117
  # implict jump to bb116
bb116:
  LW t4, 208(sp)
  ADD s0, t4, zero
  JAL zero, bb95
bb117:
  LW t3, 208(sp)
  ADD t4, t3, zero
  SW t4, 204(sp)
  JAL zero, bb99
bb118:
  LA s5, .CONSTANT.7.6
  FLW fs7, 0(s5)
  FADD.S fs6, fs6, fs7
  FSGNJ.S fs5, fs6, fs6
  JAL zero, bb115
bb119:
  LA s5, .CONSTANT.7.6
  FLW fs8, 0(s5)
  FSUB.S fs7, fs7, fs8
  FSGNJ.S fs6, fs7, fs7
  JAL zero, bb113
bb120:
  LA s5, .CONSTANT.7.6
  FLW fs8, 0(s5)
  FDIV.S fs8, fs6, fs8
  FCVT.W.S s5, fs8, rtz
  FCVT.S.W fs8, s5
  LA s5, .CONSTANT.7.6
  FLW fs9, 0(s5)
  FMUL.S fs8, fs8, fs9
  FSUB.S fs6, fs6, fs8
  FSGNJ.S fs7, fs6, fs6
  JAL zero, bb111
bb121:
  ADDI s5, zero, 1
  JAL zero, bb109
bb122:
  LA s5, .CONSTANT.7.6
  FLW fs8, 0(s5)
  FADD.S fs6, fs6, fs8
  FSGNJ.S fs7, fs6, fs6
  JAL zero, bb107
bb123:
  LA s5, .CONSTANT.7.6
  FLW fs7, 0(s5)
  FSUB.S fs5, fs5, fs7
  FSGNJ.S fs6, fs5, fs5
  JAL zero, bb105
bb124:
  LA s5, .CONSTANT.7.6
  FLW fs6, 0(s5)
  FLW ft4, 76(sp)
  FDIV.S fs6, ft4, fs6
  FCVT.W.S s5, fs6, rtz
  FCVT.S.W fs6, s5
  LA s5, .CONSTANT.7.6
  FLW fs7, 0(s5)
  FMUL.S fs6, fs6, fs7
  FLW ft4, 76(sp)
  FSUB.S fs6, ft4, fs6
  FSGNJ.S fs5, fs6, fs6
  JAL zero, bb103
bb125:
  ADDI s5, zero, 1
  JAL zero, bb101
bb126:
  ADDI t4, zero, 0
  SW t4, 148(sp)
  ADD t4, zero, zero
  SW t4, 180(sp)
  # implict jump to bb127
bb127:
  LW t3, 180(sp)
  ADD t4, t3, zero
  SW t4, 160(sp)
  LW t4, 148(sp)
  LW t3, 164(sp)
  BLT t4, t3, bb130
  # implict jump to bb128
bb128:
  LW t3, 160(sp)
  ADDIW t4, t3, 1
  SW t4, 184(sp)
  LW t4, 184(sp)
  LW t3, 168(sp)
  BLT t4, t3, bb129
  JAL zero, bb7
bb129:
  LW t3, 184(sp)
  ADD t4, t3, zero
  SW t4, 180(sp)
  JAL zero, bb127
bb130:
  LW t4, 160(sp)
  SLLIW s6, t4, 5
  LA s7, test_block
  ADD t4, s7, s6
  SD t4, 416(sp)
  ADD t4, zero, zero
  SW t4, 172(sp)
  # implict jump to bb131
bb131:
  LW t4, 172(sp)
  ADD s8, t4, zero
  SLLIW s9, s8, 2
  LD t4, 416(sp)
  ADD s9, t4, s9
  CALL getfloat
  FSGNJ.D fs0, fa0, fa0
  FSW fs0, 0(s9)
  ADDIW t4, s8, 1
  SW t4, 176(sp)
  LW t4, 176(sp)
  LW t3, 164(sp)
  BLT t4, t3, bb132
  JAL zero, bb128
bb132:
  LW t3, 176(sp)
  ADD t4, t3, zero
  SW t4, 172(sp)
  JAL zero, bb131
