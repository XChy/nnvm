.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
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
.word 0x3f000000
.CONSTANT.7.3:
.word 0x40c90fdb
.CONSTANT.7.4:
.word 0x40490fdb
.CONSTANT.7.5:
.word 0x40000000
.CONSTANT.7.6:
.word 0x40800000
.section .text
my_sin_impl:   # loop depth 0
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  FSD fs0, 24(sp)
  FSD fs1, 32(sp)
  FSD fs2, 40(sp)
  ADDI s0, zero, 0
  FCVT.S.W fs1, s0
  FSGNJN.S fs0, fa0, fa0
  FLT.S s0, fs1, fa0
  BNE s0, zero, bb5
  # implict jump to bb1
bb1:   # loop depth 0
  # implict jump to bb2
bb2:   # loop depth 0
  LA s0, .CONSTANT.7.0
  FLW fs1, 0(s0)
  FLE.S s0, fs0, fs1
  BNE s0, zero, bb4
  # implict jump to bb3
bb3:   # loop depth 0
  LA s0, .CONSTANT.7.1
  ADDI s1, zero, 4
  FCVT.S.W fs1, s1
  ADDI s1, zero, 3
  FLW fs2, 0(s0)
  FCVT.S.W fs0, s1
  FDIV.S fa0, fa0, fs2
  CALL my_sin_impl
  FMUL.S ft1, fs1, fa0
  FMUL.S ft0, fs0, fa0
  FMUL.S ft1, ft1, fa0
  FMUL.S ft1, ft1, fa0
  FSUB.S fa0, ft0, ft1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  FLD fs0, 24(sp)
  FLD fs1, 32(sp)
  FLD fs2, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb4:   # loop depth 0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  FLD fs0, 24(sp)
  FLD fs1, 32(sp)
  FLD fs2, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb5:   # loop depth 0
  FSGNJ.S fs0, fa0, fa0
  JAL zero, bb2
main:   # loop depth 0
  ADDI sp, sp, -320
  SD ra, 144(sp)
  SD s0, 152(sp)
  SD s1, 160(sp)
  SD s2, 168(sp)
  SD s3, 176(sp)
  SD s4, 184(sp)
  SD s5, 192(sp)
  SD s6, 200(sp)
  SD s7, 208(sp)
  SD s8, 216(sp)
  SD s9, 224(sp)
  SD s10, 232(sp)
  SD s11, 240(sp)
  FSD fs0, 248(sp)
  FSD fs1, 256(sp)
  FSD fs2, 264(sp)
  FSD fs3, 272(sp)
  FSD fs4, 280(sp)
  FSD fs5, 288(sp)
  FSD fs6, 296(sp)
  CALL getint
  ADDI s0, zero, 0
  SW s0, 8(sp)
  ADD s7, a0, zero
  CALL getint
  ADD s6, a0, zero
  LW s0, 8(sp)
  BLT s0, s7, bb116
  # implict jump to bb7
bb7:   # loop depth 0
  LA s0, .CONSTANT.7.2
  LA s1, .CONSTANT.7.2
  LA s2, .CONSTANT.7.3
  LA s3, .CONSTANT.7.3
  FLW fs0, 0(s0)
  LA s0, .CONSTANT.7.4
  LA s4, .CONSTANT.7.4
  ADDI s5, zero, 2
  FLW fs1, 0(s1)
  FCVT.S.W fs2, s6
  FSW fs2, 28(sp)
  FCVT.S.W fs2, s5
  FSW fs2, 24(sp)
  FLW fs2, 0(s2)
  FCVT.S.W fs3, s7
  FSW fs3, 100(sp)
  FSGNJ.S fs4, fs0, fs1
  FLW fs0, 0(s3)
  FLW fs1, 0(s0)
  FSGNJ.S fs5, fs2, fs0
  FLW fs0, 0(s4)
  FSGNJN.S fs2, fs5, fs5
  FSW fs2, 108(sp)
  FSGNJ.S fs6, fs1, fs0
  FSGNJN.S fs0, fs6, fs6
  FSW fs0, 112(sp)
  LW s0, 8(sp)
  BLT s0, s7, bb76
  # implict jump to bb8
bb8:   # loop depth 0
  LW s0, 8(sp)
  BLT s0, s7, bb69
  # implict jump to bb9
bb9:   # loop depth 0
  ADDI a0, zero, 10
  CALL putch
  LW s0, 8(sp)
  BLT s0, s7, bb19
  # implict jump to bb10
bb10:   # loop depth 0
  LW s0, 8(sp)
  BLT s0, s7, bb12
  # implict jump to bb11
bb11:   # loop depth 0
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 144(sp)
  LD s0, 152(sp)
  LD s1, 160(sp)
  LD s2, 168(sp)
  LD s3, 176(sp)
  LD s4, 184(sp)
  LD s5, 192(sp)
  LD s6, 200(sp)
  LD s7, 208(sp)
  LD s8, 216(sp)
  LD s9, 224(sp)
  LD s10, 232(sp)
  LD s11, 240(sp)
  FLD fs0, 248(sp)
  FLD fs1, 256(sp)
  FLD fs2, 264(sp)
  FLD fs3, 272(sp)
  FLD fs4, 280(sp)
  FLD fs5, 288(sp)
  FLD fs6, 296(sp)
  ADDI sp, sp, 320
  JALR zero, 0(ra)
bb12:   # loop depth 0
  ADD s1, zero, zero
  ADDI s4, zero, 1
  # implict jump to bb13
bb13:   # loop depth 1
  LA s2, test_idct
  SLLIW s0, s1, 5
  ADD s2, s2, s0
  FLW fa0, 0(s2)
  CALL putfloat
  BLT s4, s6, bb16
  # implict jump to bb14
bb14:   # loop depth 1
  ADDI a0, zero, 10
  ADDIW s1, s1, 1
  CALL putch
  BLT s1, s7, bb15
  JAL zero, bb11
bb15:   # loop depth 1
  JAL zero, bb13
bb16:   # loop depth 1
  ADDI s0, zero, 1
  # implict jump to bb17
bb17:   # loop depth 2
  ADDI a0, zero, 32
  SH2ADD s3, s0, s2
  ADDIW s0, s0, 1
  CALL putch
  FLW fa0, 0(s3)
  CALL putfloat
  BLT s0, s6, bb18
  JAL zero, bb14
bb18:   # loop depth 2
  JAL zero, bb17
bb19:   # loop depth 0
  LA s0, .CONSTANT.7.5
  LA s2, .CONSTANT.7.5
  LA s3, .CONSTANT.7.6
  ADDI s1, zero, 1
  FLW fs1, 0(s0)
  FCVT.S.W fs0, s1
  FLW fs2, 28(sp)
  FDIV.S fs2, fs6, fs2
  FSW fs2, 44(sp)
  ADD s1, zero, zero
  FLW fs2, 0(s2)
  FLW fs3, 24(sp)
  FDIV.S fs3, fs6, fs3
  FSW fs3, 124(sp)
  FLW fs3, 100(sp)
  FDIV.S fs3, fs6, fs3
  FSW fs3, 40(sp)
  ADD s0, zero, zero
  FLW fs3, 0(s3)
  FSGNJ.S fs1, fs1, fs2
  FSW fs1, 32(sp)
  ADD s3, zero, zero
  ADDI s2, zero, 1
  SW s2, 12(sp)
  FLW fs1, 32(sp)
  FDIV.S fs1, fs0, fs1
  FSW fs1, 120(sp)
  ADDI s4, zero, 1
  SW s4, 116(sp)
  FDIV.S fs0, fs0, fs3
  FSW fs0, 4(sp)
  # implict jump to bb20
bb20:   # loop depth 1
  BLT zero, s6, bb24
  # implict jump to bb21
bb21:   # loop depth 1
  # implict jump to bb22
bb22:   # loop depth 1
  ADDIW s3, s3, 1
  BLT s3, s7, bb23
  JAL zero, bb10
bb23:   # loop depth 1
  JAL zero, bb20
bb24:   # loop depth 1
  FCVT.S.W fs0, s3
  LA s4, test_idct
  SLLIW s1, s3, 5
  ADD s2, zero, zero
  FADD.S fs0, fs0, fs4
  ADD s1, s4, s1
  SD s1, 304(sp)
  FLW fs1, 40(sp)
  FMUL.S fs0, fs1, fs0
  FSW fs0, 48(sp)
  # implict jump to bb25
bb25:   # loop depth 2
  LA s1, test_dct
  LD s0, 304(sp)
  SH2ADD s8, s2, s0
  FLW fs0, 0(s1)
  FLW fs1, 4(sp)
  FMUL.S fs0, fs1, fs0
  FSW fs0, 0(s8)
  LW s0, 116(sp)
  BLT s0, s7, bb65
  # implict jump to bb26
bb26:   # loop depth 2
  LW s0, 12(sp)
  BLT s0, s6, bb61
  # implict jump to bb27
bb27:   # loop depth 2
  ADDI s1, zero, 1
  # implict jump to bb28
bb28:   # loop depth 2
  LW s4, 116(sp)
  BLT s4, s7, bb33
  # implict jump to bb29
bb29:   # loop depth 2
  ADDI s0, zero, 1
  # implict jump to bb30
bb30:   # loop depth 2
  FLW fs0, 0(s8)
  ADDIW s2, s2, 1
  FLW fs1, 32(sp)
  FMUL.S fs0, fs0, fs1
  FLW fs1, 100(sp)
  FDIV.S fs0, fs0, fs1
  FLW fs1, 32(sp)
  FMUL.S fs0, fs0, fs1
  FLW fs1, 28(sp)
  FDIV.S fs0, fs0, fs1
  FSW fs0, 0(s8)
  BLT s2, s6, bb32
  # implict jump to bb31
bb31:   # loop depth 1
  JAL zero, bb22
bb32:   # loop depth 2
  JAL zero, bb25
bb33:   # loop depth 2
  FCVT.S.W fs0, s2
  ADDI s0, zero, 1
  FADD.S fs0, fs0, fs4
  FLW fs1, 44(sp)
  FMUL.S fs0, fs1, fs0
  FSW fs0, 52(sp)
  # implict jump to bb34
bb34:   # loop depth 3
  LW s1, 12(sp)
  BLT s1, s6, bb39
  # implict jump to bb35
bb35:   # loop depth 3
  ADDI s1, zero, 1
  # implict jump to bb36
bb36:   # loop depth 3
  ADDIW s0, s0, 1
  BLT s0, s7, bb38
  # implict jump to bb37
bb37:   # loop depth 2
  JAL zero, bb30
bb38:   # loop depth 3
  JAL zero, bb34
bb39:   # loop depth 3
  FCVT.S.W fa0, s0
  LA s9, test_dct
  SLLIW s4, s0, 5
  ADDI s1, zero, 1
  FLW fs0, 48(sp)
  FMUL.S fa0, fs0, fa0
  ADD s4, s9, s4
  FLW fs0, 124(sp)
  FADD.S fs3, fa0, fs0
  FDIV.S fa0, fs3, fs5
  FLW fs0, 108(sp)
  FLT.S s10, fs3, fs0
  FLT.S s9, fs5, fs3
  OR s9, s9, s10
  FCVT.W.S s10, fa0, rtz
  FCVT.S.W fa0, s10
  FMUL.S fa0, fa0, fs5
  FSUB.S fs2, fs3, fa0
  # implict jump to bb40
bb40:   # loop depth 4
  FLW fa0, 0(s8)
  FSW fa0, 136(sp)
  SH2ADD s10, s1, s4
  FLW fa0, 0(s10)
  FSW fa0, 140(sp)
  BNE s9, zero, bb60
  # implict jump to bb41
bb41:   # loop depth 4
  FSGNJ.S fa0, fs3, fs3
  # implict jump to bb42
bb42:   # loop depth 4
  FSUB.S fs0, fa0, fs5
  FLT.S s10, fs6, fa0
  BNE s10, zero, bb59
  # implict jump to bb43
bb43:   # loop depth 4
  # implict jump to bb44
bb44:   # loop depth 4
  FADD.S fs0, fa0, fs5
  FLW fs1, 112(sp)
  FLT.S s10, fa0, fs1
  BNE s10, zero, bb58
  # implict jump to bb45
bb45:   # loop depth 4
  # implict jump to bb46
bb46:   # loop depth 4
  FCVT.S.W fs0, s1
  FLW fs1, 52(sp)
  FMUL.S fs0, fs1, fs0
  CALL my_sin_impl
  FLW fs1, 124(sp)
  FADD.S fs1, fs0, fs1
  FLW fs0, 140(sp)
  FMUL.S fa0, fs0, fa0
  FSW fa0, 36(sp)
  FLW fa0, 108(sp)
  FLT.S s5, fs1, fa0
  SB s5, 1(sp)
  FLT.S s10, fs5, fs1
  LB s5, 1(sp)
  OR s10, s10, s5
  BNE s10, zero, bb57
  # implict jump to bb47
bb47:   # loop depth 4
  # implict jump to bb48
bb48:   # loop depth 4
  FSUB.S fs0, fs1, fs5
  FLT.S s10, fs6, fs1
  BNE s10, zero, bb56
  # implict jump to bb49
bb49:   # loop depth 4
  FSGNJ.S fs0, fs1, fs1
  # implict jump to bb50
bb50:   # loop depth 4
  FADD.S fa0, fs0, fs5
  FLW fs1, 112(sp)
  FLT.S s10, fs0, fs1
  BNE s10, zero, bb55
  # implict jump to bb51
bb51:   # loop depth 4
  FSGNJ.S fa0, fs0, fs0
  # implict jump to bb52
bb52:   # loop depth 4
  ADDIW s1, s1, 1
  CALL my_sin_impl
  FSGNJ.D fs0, fa0, fa0
  FLW fs1, 36(sp)
  FMUL.S fs0, fs1, fs0
  FLW fs1, 136(sp)
  FADD.S fs0, fs1, fs0
  FSW fs0, 0(s8)
  BLT s1, s6, bb54
  # implict jump to bb53
bb53:   # loop depth 3
  JAL zero, bb36
bb54:   # loop depth 4
  JAL zero, bb40
bb55:   # loop depth 4
  JAL zero, bb52
bb56:   # loop depth 4
  JAL zero, bb50
bb57:   # loop depth 4
  FDIV.S fa0, fs1, fs5
  FCVT.W.S s10, fa0, rtz
  FCVT.S.W fa0, s10
  FMUL.S fa0, fa0, fs5
  FSUB.S fs1, fs1, fa0
  JAL zero, bb48
bb58:   # loop depth 4
  FSGNJ.S fa0, fs0, fs0
  JAL zero, bb46
bb59:   # loop depth 4
  FSGNJ.S fa0, fs0, fs0
  JAL zero, bb44
bb60:   # loop depth 4
  FSGNJ.S fa0, fs2, fs2
  JAL zero, bb42
bb61:   # loop depth 2
  FLW fs0, 0(s8)
  ADDI s1, zero, 1
  # implict jump to bb62
bb62:   # loop depth 3
  LA s9, test_dct
  ADD s4, s1, zero
  ADDIW s1, s4, 1
  SH2ADD s4, s4, s9
  FLW fs1, 0(s4)
  FLW fs2, 120(sp)
  FMUL.S fs1, fs2, fs1
  FADD.S fs0, fs0, fs1
  BLT s1, s6, bb64
  # implict jump to bb63
bb63:   # loop depth 2
  FSW fs0, 0(s8)
  JAL zero, bb28
bb64:   # loop depth 3
  JAL zero, bb62
bb65:   # loop depth 2
  ADDI s0, zero, 1
  # implict jump to bb66
bb66:   # loop depth 3
  LA s4, test_dct
  SLLIW s1, s0, 5
  ADD s1, s4, s1
  ADDIW s0, s0, 1
  FLW fs1, 0(s1)
  FLW fs2, 120(sp)
  FMUL.S fs1, fs2, fs1
  FADD.S fs0, fs0, fs1
  BLT s0, s7, bb68
  # implict jump to bb67
bb67:   # loop depth 2
  FSW fs0, 0(s8)
  JAL zero, bb26
bb68:   # loop depth 3
  JAL zero, bb66
bb69:   # loop depth 0
  ADD s1, zero, zero
  ADDI s4, zero, 1
  # implict jump to bb70
bb70:   # loop depth 1
  LA s2, test_dct
  SLLIW s0, s1, 5
  ADD s2, s2, s0
  FLW fa0, 0(s2)
  CALL putfloat
  BLT s4, s6, bb73
  # implict jump to bb71
bb71:   # loop depth 1
  ADDI a0, zero, 10
  ADDIW s1, s1, 1
  CALL putch
  BLT s1, s7, bb72
  JAL zero, bb9
bb72:   # loop depth 1
  JAL zero, bb70
bb73:   # loop depth 1
  ADDI s0, zero, 1
  # implict jump to bb74
bb74:   # loop depth 2
  ADDI a0, zero, 32
  SH2ADD s3, s0, s2
  ADDIW s0, s0, 1
  CALL putch
  FLW fa0, 0(s3)
  CALL putfloat
  BLT s0, s6, bb75
  JAL zero, bb71
bb75:   # loop depth 2
  JAL zero, bb74
bb76:   # loop depth 0
  FCVT.S.W fs0, zero
  FSW fs0, 56(sp)
  ADD s3, zero, zero
  ADD s4, zero, zero
  ADD s8, zero, zero
  # implict jump to bb77
bb77:   # loop depth 1
  BLT zero, s6, bb82
  # implict jump to bb78
bb78:   # loop depth 1
  # implict jump to bb79
bb79:   # loop depth 1
  ADDIW s8, s8, 1
  BLT s8, s7, bb81
  # implict jump to bb80
bb80:   # loop depth 0
  JAL zero, bb8
bb81:   # loop depth 1
  JAL zero, bb77
bb82:   # loop depth 1
  FLW fs0, 28(sp)
  FDIV.S fs0, fs6, fs0
  FSW fs0, 64(sp)
  LA s2, test_dct
  FLW fs0, 24(sp)
  FDIV.S fs0, fs6, fs0
  FSW fs0, 76(sp)
  SLLIW s0, s8, 5
  FLW fs0, 100(sp)
  FDIV.S fs0, fs6, fs0
  FSW fs0, 60(sp)
  FCVT.S.W fs0, s8
  FSW fs0, 68(sp)
  ADD s5, zero, zero
  ADD s9, s2, s0
  # implict jump to bb83
bb83:   # loop depth 2
  SH2ADD s10, s5, s9
  FLW fs0, 56(sp)
  FSW fs0, 0(s10)
  LW s0, 8(sp)
  BLT s0, s7, bb88
  # implict jump to bb84
bb84:   # loop depth 2
  ADD s4, zero, zero
  # implict jump to bb85
bb85:   # loop depth 2
  ADDIW s5, s5, 1
  BLT s5, s6, bb87
  # implict jump to bb86
bb86:   # loop depth 1
  JAL zero, bb79
bb87:   # loop depth 2
  JAL zero, bb83
bb88:   # loop depth 2
  FCVT.S.W fs0, s5
  FSW fs0, 84(sp)
  ADD s4, zero, zero
  # implict jump to bb89
bb89:   # loop depth 3
  BLT zero, s6, bb94
  # implict jump to bb90
bb90:   # loop depth 3
  ADD s3, zero, zero
  # implict jump to bb91
bb91:   # loop depth 3
  ADDIW s4, s4, 1
  BLT s4, s7, bb93
  # implict jump to bb92
bb92:   # loop depth 2
  JAL zero, bb85
bb93:   # loop depth 3
  JAL zero, bb89
bb94:   # loop depth 3
  FCVT.S.W fa0, s4
  LA s2, test_block
  SLLIW s1, s4, 5
  ADD s3, zero, zero
  FADD.S fa0, fa0, fs4
  ADD s1, s2, s1
  FLW fs0, 60(sp)
  FMUL.S fa0, fs0, fa0
  FLW fs0, 68(sp)
  FMUL.S fa0, fa0, fs0
  FLW fs0, 76(sp)
  FADD.S fs2, fa0, fs0
  FDIV.S fa0, fs2, fs5
  FLW fs0, 108(sp)
  FLT.S s11, fs2, fs0
  FLT.S s2, fs5, fs2
  OR s2, s2, s11
  FCVT.W.S s11, fa0, rtz
  FCVT.S.W fa0, s11
  FMUL.S fa0, fa0, fs5
  FSUB.S fs3, fs2, fa0
  # implict jump to bb95
bb95:   # loop depth 4
  FLW fa0, 0(s10)
  FSW fa0, 88(sp)
  SH2ADD s11, s3, s1
  FLW fa0, 0(s11)
  FSW fa0, 92(sp)
  BNE s2, zero, bb115
  # implict jump to bb96
bb96:   # loop depth 4
  FSGNJ.S fs1, fs2, fs2
  # implict jump to bb97
bb97:   # loop depth 4
  FSUB.S fs0, fs1, fs5
  FLT.S s11, fs6, fs1
  BNE s11, zero, bb114
  # implict jump to bb98
bb98:   # loop depth 4
  FSGNJ.S fs0, fs1, fs1
  # implict jump to bb99
bb99:   # loop depth 4
  FADD.S fa0, fs0, fs5
  FLW fs1, 112(sp)
  FLT.S s11, fs0, fs1
  BNE s11, zero, bb113
  # implict jump to bb100
bb100:   # loop depth 4
  FSGNJ.S fa0, fs0, fs0
  # implict jump to bb101
bb101:   # loop depth 4
  FCVT.S.W fs0, s3
  FADD.S fs0, fs0, fs4
  CALL my_sin_impl
  FLW fs1, 64(sp)
  FMUL.S fs0, fs1, fs0
  FLW fs1, 92(sp)
  FMUL.S fa0, fs1, fa0
  FSW fa0, 96(sp)
  FLW fa0, 84(sp)
  FMUL.S fa0, fs0, fa0
  FLW fs0, 76(sp)
  FADD.S fs1, fa0, fs0
  FLW fa0, 108(sp)
  FLT.S s0, fs1, fa0
  SB s0, 0(sp)
  FLT.S s11, fs5, fs1
  LB s0, 0(sp)
  OR s11, s11, s0
  BNE s11, zero, bb112
  # implict jump to bb102
bb102:   # loop depth 4
  # implict jump to bb103
bb103:   # loop depth 4
  FSUB.S fs0, fs1, fs5
  FLT.S s11, fs6, fs1
  BNE s11, zero, bb111
  # implict jump to bb104
bb104:   # loop depth 4
  FSGNJ.S fs0, fs1, fs1
  # implict jump to bb105
bb105:   # loop depth 4
  FADD.S fa0, fs0, fs5
  FLW fs1, 112(sp)
  FLT.S s11, fs0, fs1
  BNE s11, zero, bb110
  # implict jump to bb106
bb106:   # loop depth 4
  FSGNJ.S fa0, fs0, fs0
  # implict jump to bb107
bb107:   # loop depth 4
  ADDIW s3, s3, 1
  CALL my_sin_impl
  FSGNJ.D fs0, fa0, fa0
  FLW fs1, 96(sp)
  FMUL.S fs0, fs1, fs0
  FLW fs1, 88(sp)
  FADD.S fs0, fs1, fs0
  FSW fs0, 0(s10)
  BLT s3, s6, bb109
  # implict jump to bb108
bb108:   # loop depth 3
  JAL zero, bb91
bb109:   # loop depth 4
  JAL zero, bb95
bb110:   # loop depth 4
  JAL zero, bb107
bb111:   # loop depth 4
  JAL zero, bb105
bb112:   # loop depth 4
  FDIV.S fs0, fs1, fs5
  FCVT.W.S s11, fs0, rtz
  FCVT.S.W fs0, s11
  FMUL.S fs0, fs0, fs5
  FSUB.S fs1, fs1, fs0
  JAL zero, bb103
bb113:   # loop depth 4
  JAL zero, bb101
bb114:   # loop depth 4
  JAL zero, bb99
bb115:   # loop depth 4
  FSGNJ.S fs1, fs3, fs3
  JAL zero, bb97
bb116:   # loop depth 0
  ADD s1, zero, zero
  ADDI s4, zero, 0
  # implict jump to bb117
bb117:   # loop depth 1
  BLT s4, s6, bb120
  # implict jump to bb118
bb118:   # loop depth 1
  ADDIW s1, s1, 1
  BLT s1, s7, bb119
  JAL zero, bb7
bb119:   # loop depth 1
  JAL zero, bb117
bb120:   # loop depth 1
  LA s3, test_block
  SLLIW s2, s1, 5
  ADD s0, zero, zero
  ADD s2, s3, s2
  # implict jump to bb121
bb121:   # loop depth 2
  CALL getfloat
  FSGNJ.D fs0, fa0, fa0
  SH2ADD s3, s0, s2
  FSW fs0, 0(s3)
  ADDIW s0, s0, 1
  BLT s0, s6, bb122
  JAL zero, bb118
bb122:   # loop depth 2
  JAL zero, bb121
