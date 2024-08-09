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
  FCVT.S.W fs0, s0
  FLT.S s0, fs0, fa0
  BNE s0, zero, bb5
  # implict jump to bb1
bb1:   # loop depth 0
  FSGNJN.S fs0, fa0, fa0
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
  ADDI sp, sp, -288
  SD ra, 96(sp)
  SD s0, 104(sp)
  SD s1, 112(sp)
  SD s2, 120(sp)
  SD s3, 128(sp)
  SD s4, 136(sp)
  SD s5, 144(sp)
  SD s6, 152(sp)
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
  FSD fs7, 248(sp)
  FSD fs8, 256(sp)
  FSD fs11, 264(sp)
  CALL getint
  ADDI s0, zero, 0
  SW s0, 28(sp)
  ADD s7, a0, zero
  CALL getint
  ADD s6, a0, zero
  LW s0, 28(sp)
  BLT s0, s7, bb128
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
  FCVT.S.W fs2, s7
  FSW fs2, 72(sp)
  FCVT.S.W fs2, s6
  FSW fs2, 64(sp)
  FLW fs3, 0(s2)
  FCVT.S.W fs2, s5
  FSW fs2, 68(sp)
  FSGNJ.S fs2, fs0, fs1
  FLW fs0, 0(s3)
  FLW fs1, 0(s0)
  FSGNJ.S fs3, fs3, fs0
  FLW fs0, 0(s4)
  FSGNJN.S fs7, fs3, fs3
  FSGNJ.S fs4, fs1, fs0
  FSGNJN.S fs8, fs4, fs4
  LW s0, 28(sp)
  BLT s0, s7, bb82
  # implict jump to bb8
bb8:   # loop depth 0
  LW s0, 28(sp)
  BLT s0, s7, bb75
  # implict jump to bb9
bb9:   # loop depth 0
  ADDI a0, zero, 10
  CALL putch
  LW s0, 28(sp)
  BLT s0, s7, bb19
  # implict jump to bb10
bb10:   # loop depth 0
  LW s0, 28(sp)
  BLT s0, s7, bb12
  # implict jump to bb11
bb11:   # loop depth 0
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 96(sp)
  LD s0, 104(sp)
  LD s1, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  LD s5, 144(sp)
  LD s6, 152(sp)
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
  FLD fs7, 248(sp)
  FLD fs8, 256(sp)
  FLD fs11, 264(sp)
  ADDI sp, sp, 288
  JALR zero, 0(ra)
bb12:   # loop depth 0
  ADDI s4, zero, 1
  ADD s1, zero, zero
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
  SLLIW s3, s0, 2
  CALL putch
  ADD s3, s2, s3
  ADDIW s0, s0, 1
  FLW fa0, 0(s3)
  CALL putfloat
  BLT s0, s6, bb18
  JAL zero, bb14
bb18:   # loop depth 2
  JAL zero, bb17
bb19:   # loop depth 0
  LA s1, .CONSTANT.7.5
  LA s4, .CONSTANT.7.5
  ADD s5, zero, zero
  ADD s3, zero, zero
  FLW fs0, 0(s1)
  ADD s1, zero, zero
  FLW fs1, 0(s4)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 60(sp)
  # implict jump to bb20
bb20:   # loop depth 1
  BLT zero, s6, bb24
  # implict jump to bb21
bb21:   # loop depth 1
  # implict jump to bb22
bb22:   # loop depth 1
  ADDIW s5, s5, 1
  BLT s5, s7, bb23
  JAL zero, bb10
bb23:   # loop depth 1
  JAL zero, bb20
bb24:   # loop depth 1
  LA s1, .CONSTANT.7.6
  ADDI s0, zero, 1
  FCVT.S.W fs0, s0
  LA s2, test_idct
  FLW fs1, 0(s1)
  SLLIW s1, s5, 5
  FLW fs5, 60(sp)
  FDIV.S fs5, fs0, fs5
  FSW fs5, 56(sp)
  ADDI s10, zero, 1
  FDIV.S fs0, fs0, fs1
  FSW fs0, 12(sp)
  ADDI s0, zero, 1
  SW s0, 20(sp)
  ADD s4, zero, zero
  ADD s1, s2, s1
  SD s1, 272(sp)
  # implict jump to bb25
bb25:   # loop depth 2
  LA s1, test_dct
  SLLIW s0, s4, 2
  FLW fs0, 0(s1)
  LD s1, 272(sp)
  ADD s8, s1, s0
  FLW fs1, 12(sp)
  FMUL.S fs0, fs1, fs0
  FSW fs0, 0(s8)
  BLT s10, s7, bb71
  # implict jump to bb26
bb26:   # loop depth 2
  LW s0, 20(sp)
  BLT s0, s6, bb67
  # implict jump to bb27
bb27:   # loop depth 2
  ADDI s1, zero, 1
  # implict jump to bb28
bb28:   # loop depth 2
  BLT s10, s7, bb33
  # implict jump to bb29
bb29:   # loop depth 2
  ADDI s3, zero, 1
  # implict jump to bb30
bb30:   # loop depth 2
  FLW fs0, 0(s8)
  ADDIW s4, s4, 1
  FLW fs1, 60(sp)
  FMUL.S fs0, fs0, fs1
  FLW fs1, 72(sp)
  FDIV.S fs0, fs0, fs1
  FLW fs1, 60(sp)
  FMUL.S fs0, fs0, fs1
  FLW fs1, 64(sp)
  FDIV.S fs0, fs0, fs1
  FSW fs0, 0(s8)
  BLT s4, s6, bb32
  # implict jump to bb31
bb31:   # loop depth 1
  JAL zero, bb22
bb32:   # loop depth 2
  JAL zero, bb25
bb33:   # loop depth 2
  ADDI s3, zero, 1
  # implict jump to bb34
bb34:   # loop depth 3
  LW s0, 20(sp)
  BLT s0, s6, bb39
  # implict jump to bb35
bb35:   # loop depth 3
  ADDI s1, zero, 1
  # implict jump to bb36
bb36:   # loop depth 3
  ADDIW s3, s3, 1
  BLT s3, s7, bb38
  # implict jump to bb37
bb37:   # loop depth 2
  JAL zero, bb30
bb38:   # loop depth 3
  JAL zero, bb34
bb39:   # loop depth 3
  FLW fa0, 72(sp)
  FDIV.S fa0, fs4, fa0
  LA s9, test_dct
  FLW fs0, 68(sp)
  FDIV.S fs0, fs4, fs0
  FSW fs0, 52(sp)
  SLLIW s2, s3, 5
  FLW fs0, 64(sp)
  FDIV.S fs0, fs4, fs0
  FSW fs0, 4(sp)
  ADDI s1, zero, 1
  FCVT.S.W fs0, s5
  ADD s9, s9, s2
  FCVT.S.W fs1, s3
  FADD.S fs0, fs0, fs2
  FCVT.S.W fs5, s4
  FSW fs5, 48(sp)
  FLW fs5, 48(sp)
  FADD.S fs5, fs5, fs2
  FSW fs5, 44(sp)
  FMUL.S fa0, fa0, fs0
  FLW fs0, 44(sp)
  FLW fs5, 4(sp)
  FMUL.S fs0, fs5, fs0
  FSW fs0, 40(sp)
  FMUL.S fa0, fa0, fs1
  FLW fs0, 52(sp)
  FADD.S fs1, fa0, fs0
  FLT.S s0, fs3, fs1
  SB s0, 0(sp)
  # implict jump to bb40
bb40:   # loop depth 4
  FLW fa0, 0(s8)
  FSW fa0, 36(sp)
  SLLIW s2, s1, 2
  ADD s2, s9, s2
  FLW fa0, 0(s2)
  FSW fa0, 32(sp)
  LB s0, 0(sp)
  BNE s0, zero, bb66
  # implict jump to bb41
bb41:   # loop depth 4
  FLT.S s2, fs1, fs7
  # implict jump to bb42
bb42:   # loop depth 4
  BNE s2, zero, bb65
  # implict jump to bb43
bb43:   # loop depth 4
  FSGNJ.S fa0, fs1, fs1
  # implict jump to bb44
bb44:   # loop depth 4
  FLT.S s2, fs4, fa0
  BNE s2, zero, bb64
  # implict jump to bb45
bb45:   # loop depth 4
  # implict jump to bb46
bb46:   # loop depth 4
  FLT.S s2, fa0, fs8
  BNE s2, zero, bb63
  # implict jump to bb47
bb47:   # loop depth 4
  # implict jump to bb48
bb48:   # loop depth 4
  FCVT.S.W fs0, s1
  FLW fs5, 40(sp)
  FMUL.S fs0, fs5, fs0
  CALL my_sin_impl
  FLW fs5, 52(sp)
  FADD.S fs0, fs0, fs5
  FLW fs5, 32(sp)
  FMUL.S fa0, fs5, fa0
  FSW fa0, 80(sp)
  FLT.S s2, fs3, fs0
  BNE s2, zero, bb62
  # implict jump to bb49
bb49:   # loop depth 4
  FLT.S s2, fs0, fs7
  # implict jump to bb50
bb50:   # loop depth 4
  BNE s2, zero, bb61
  # implict jump to bb51
bb51:   # loop depth 4
  FSGNJ.S fa0, fs0, fs0
  # implict jump to bb52
bb52:   # loop depth 4
  FLT.S s2, fs4, fa0
  BNE s2, zero, bb60
  # implict jump to bb53
bb53:   # loop depth 4
  # implict jump to bb54
bb54:   # loop depth 4
  FLT.S s2, fa0, fs8
  BNE s2, zero, bb59
  # implict jump to bb55
bb55:   # loop depth 4
  # implict jump to bb56
bb56:   # loop depth 4
  ADDIW s1, s1, 1
  CALL my_sin_impl
  FSGNJ.D fs0, fa0, fa0
  FLW fs5, 80(sp)
  FMUL.S fs0, fs5, fs0
  FLW fs5, 36(sp)
  FADD.S fs0, fs5, fs0
  FSW fs0, 0(s8)
  BLT s1, s6, bb58
  # implict jump to bb57
bb57:   # loop depth 3
  JAL zero, bb36
bb58:   # loop depth 4
  JAL zero, bb40
bb59:   # loop depth 4
  FADD.S fa0, fa0, fs3
  JAL zero, bb56
bb60:   # loop depth 4
  FSUB.S fa0, fa0, fs3
  JAL zero, bb54
bb61:   # loop depth 4
  FDIV.S fa0, fs0, fs3
  FCVT.W.S s2, fa0, rtz
  FCVT.S.W fa0, s2
  FMUL.S fa0, fa0, fs3
  FSUB.S fa0, fs0, fa0
  JAL zero, bb52
bb62:   # loop depth 4
  ADDI s2, zero, 1
  JAL zero, bb50
bb63:   # loop depth 4
  FADD.S fa0, fa0, fs3
  JAL zero, bb48
bb64:   # loop depth 4
  FSUB.S fa0, fa0, fs3
  JAL zero, bb46
bb65:   # loop depth 4
  FDIV.S fa0, fs1, fs3
  FCVT.W.S s2, fa0, rtz
  FCVT.S.W fa0, s2
  FMUL.S fa0, fa0, fs3
  FSUB.S fa0, fs1, fa0
  JAL zero, bb44
bb66:   # loop depth 4
  ADDI s2, zero, 1
  JAL zero, bb42
bb67:   # loop depth 2
  FLW fs0, 0(s8)
  ADDI s1, zero, 1
  # implict jump to bb68
bb68:   # loop depth 3
  LA s9, test_dct
  SLLIW s2, s1, 2
  ADD s2, s9, s2
  ADDIW s1, s1, 1
  FLW fs1, 0(s2)
  FLW fs5, 56(sp)
  FMUL.S fs1, fs5, fs1
  FADD.S fs0, fs0, fs1
  BLT s1, s6, bb70
  # implict jump to bb69
bb69:   # loop depth 2
  FSW fs0, 0(s8)
  JAL zero, bb28
bb70:   # loop depth 3
  JAL zero, bb68
bb71:   # loop depth 2
  ADDI s0, zero, 1
  # implict jump to bb72
bb72:   # loop depth 3
  LA s2, test_dct
  SLLIW s1, s0, 5
  ADD s1, s2, s1
  ADDIW s0, s0, 1
  FLW fs1, 0(s1)
  FLW fs5, 56(sp)
  FMUL.S fs1, fs5, fs1
  FADD.S fs0, fs0, fs1
  BLT s0, s7, bb74
  # implict jump to bb73
bb73:   # loop depth 2
  FSW fs0, 0(s8)
  JAL zero, bb26
bb74:   # loop depth 3
  JAL zero, bb72
bb75:   # loop depth 0
  ADDI s4, zero, 1
  ADD s1, zero, zero
  # implict jump to bb76
bb76:   # loop depth 1
  LA s2, test_dct
  SLLIW s0, s1, 5
  ADD s2, s2, s0
  FLW fa0, 0(s2)
  CALL putfloat
  BLT s4, s6, bb79
  # implict jump to bb77
bb77:   # loop depth 1
  ADDI a0, zero, 10
  ADDIW s1, s1, 1
  CALL putch
  BLT s1, s7, bb78
  JAL zero, bb9
bb78:   # loop depth 1
  JAL zero, bb76
bb79:   # loop depth 1
  ADDI s0, zero, 1
  # implict jump to bb80
bb80:   # loop depth 2
  ADDI a0, zero, 32
  SLLIW s3, s0, 2
  CALL putch
  ADD s3, s2, s3
  ADDIW s0, s0, 1
  FLW fa0, 0(s3)
  CALL putfloat
  BLT s0, s6, bb81
  JAL zero, bb77
bb81:   # loop depth 2
  JAL zero, bb80
bb82:   # loop depth 0
  ADD s5, zero, zero
  ADD s4, zero, zero
  ADD s3, zero, zero
  # implict jump to bb83
bb83:   # loop depth 1
  BLT zero, s6, bb88
  # implict jump to bb84
bb84:   # loop depth 1
  # implict jump to bb85
bb85:   # loop depth 1
  ADDIW s5, s5, 1
  BLT s5, s7, bb87
  # implict jump to bb86
bb86:   # loop depth 0
  JAL zero, bb8
bb87:   # loop depth 1
  JAL zero, bb83
bb88:   # loop depth 1
  LA s4, test_dct
  SLLIW s0, s5, 5
  FCVT.S.W fs0, zero
  FSW fs0, 8(sp)
  ADD s2, zero, zero
  ADD s8, s4, s0
  # implict jump to bb89
bb89:   # loop depth 2
  SLLIW s1, s2, 2
  ADD s9, s8, s1
  FLW fs0, 8(sp)
  FSW fs0, 0(s9)
  LW s0, 28(sp)
  BLT s0, s7, bb94
  # implict jump to bb90
bb90:   # loop depth 2
  ADD s4, zero, zero
  # implict jump to bb91
bb91:   # loop depth 2
  ADDIW s2, s2, 1
  BLT s2, s6, bb93
  # implict jump to bb92
bb92:   # loop depth 1
  JAL zero, bb85
bb93:   # loop depth 2
  JAL zero, bb89
bb94:   # loop depth 2
  ADD s4, zero, zero
  # implict jump to bb95
bb95:   # loop depth 3
  BLT zero, s6, bb100
  # implict jump to bb96
bb96:   # loop depth 3
  ADD s3, zero, zero
  # implict jump to bb97
bb97:   # loop depth 3
  ADDIW s4, s4, 1
  BLT s4, s7, bb99
  # implict jump to bb98
bb98:   # loop depth 2
  JAL zero, bb91
bb99:   # loop depth 3
  JAL zero, bb95
bb100:   # loop depth 3
  FLW fa0, 72(sp)
  FDIV.S fa0, fs4, fa0
  LA s10, test_block
  FLW fs0, 68(sp)
  FDIV.S fs11, fs4, fs0
  SLLIW s1, s4, 5
  FLW fs0, 64(sp)
  FDIV.S fs0, fs4, fs0
  FSW fs0, 24(sp)
  ADD s3, zero, zero
  FCVT.S.W fs0, s4
  ADD s10, s10, s1
  FCVT.S.W fs1, s5
  FADD.S fs0, fs0, fs2
  FCVT.S.W fs5, s2
  FSW fs5, 92(sp)
  FMUL.S fa0, fa0, fs0
  FMUL.S fa0, fa0, fs1
  FADD.S fs0, fa0, fs11
  FLT.S s11, fs3, fs0
  # implict jump to bb101
bb101:   # loop depth 4
  FLW fa0, 0(s9)
  FSW fa0, 88(sp)
  SLLIW s1, s3, 2
  ADD s1, s10, s1
  FLW fa0, 0(s1)
  FSW fa0, 84(sp)
  BNE s11, zero, bb127
  # implict jump to bb102
bb102:   # loop depth 4
  FLT.S s1, fs0, fs7
  # implict jump to bb103
bb103:   # loop depth 4
  BNE s1, zero, bb126
  # implict jump to bb104
bb104:   # loop depth 4
  FSGNJ.S fa0, fs0, fs0
  # implict jump to bb105
bb105:   # loop depth 4
  FLT.S s1, fs4, fa0
  BNE s1, zero, bb125
  # implict jump to bb106
bb106:   # loop depth 4
  # implict jump to bb107
bb107:   # loop depth 4
  FLT.S s1, fa0, fs8
  BNE s1, zero, bb124
  # implict jump to bb108
bb108:   # loop depth 4
  # implict jump to bb109
bb109:   # loop depth 4
  FCVT.S.W fs1, s3
  FADD.S fs1, fs1, fs2
  CALL my_sin_impl
  FLW fs5, 24(sp)
  FMUL.S fs1, fs5, fs1
  FLW fs5, 84(sp)
  FMUL.S fa0, fs5, fa0
  FSW fa0, 76(sp)
  FLW fa0, 92(sp)
  FMUL.S fa0, fs1, fa0
  FADD.S fa0, fa0, fs11
  FLT.S s1, fs3, fa0
  BNE s1, zero, bb123
  # implict jump to bb110
bb110:   # loop depth 4
  FLT.S s1, fa0, fs7
  # implict jump to bb111
bb111:   # loop depth 4
  BNE s1, zero, bb122
  # implict jump to bb112
bb112:   # loop depth 4
  # implict jump to bb113
bb113:   # loop depth 4
  FLT.S s1, fs4, fa0
  BNE s1, zero, bb121
  # implict jump to bb114
bb114:   # loop depth 4
  # implict jump to bb115
bb115:   # loop depth 4
  FLT.S s1, fa0, fs8
  BNE s1, zero, bb120
  # implict jump to bb116
bb116:   # loop depth 4
  # implict jump to bb117
bb117:   # loop depth 4
  ADDIW s3, s3, 1
  CALL my_sin_impl
  FSGNJ.D fs1, fa0, fa0
  FLW fs5, 76(sp)
  FMUL.S fs1, fs5, fs1
  FLW fs5, 88(sp)
  FADD.S fs1, fs5, fs1
  FSW fs1, 0(s9)
  BLT s3, s6, bb119
  # implict jump to bb118
bb118:   # loop depth 3
  JAL zero, bb97
bb119:   # loop depth 4
  JAL zero, bb101
bb120:   # loop depth 4
  FADD.S fa0, fa0, fs3
  JAL zero, bb117
bb121:   # loop depth 4
  FSUB.S fa0, fa0, fs3
  JAL zero, bb115
bb122:   # loop depth 4
  FDIV.S fs1, fa0, fs3
  FCVT.W.S s1, fs1, rtz
  FCVT.S.W fs1, s1
  FMUL.S fs1, fs1, fs3
  FSUB.S fa0, fa0, fs1
  JAL zero, bb113
bb123:   # loop depth 4
  ADDI s1, zero, 1
  JAL zero, bb111
bb124:   # loop depth 4
  FADD.S fa0, fa0, fs3
  JAL zero, bb109
bb125:   # loop depth 4
  FSUB.S fa0, fa0, fs3
  JAL zero, bb107
bb126:   # loop depth 4
  FDIV.S fa0, fs0, fs3
  FCVT.W.S s1, fa0, rtz
  FCVT.S.W fa0, s1
  FMUL.S fa0, fa0, fs3
  FSUB.S fa0, fs0, fa0
  JAL zero, bb105
bb127:   # loop depth 4
  ADDI s1, zero, 1
  JAL zero, bb103
bb128:   # loop depth 0
  ADDI s4, zero, 0
  ADD s1, zero, zero
  # implict jump to bb129
bb129:   # loop depth 1
  BLT s4, s6, bb132
  # implict jump to bb130
bb130:   # loop depth 1
  ADDIW s1, s1, 1
  BLT s1, s7, bb131
  JAL zero, bb7
bb131:   # loop depth 1
  JAL zero, bb129
bb132:   # loop depth 1
  LA s3, test_block
  SLLIW s2, s1, 5
  ADD s0, zero, zero
  ADD s2, s3, s2
  # implict jump to bb133
bb133:   # loop depth 2
  CALL getfloat
  SLLIW s3, s0, 2
  FSGNJ.D fs0, fa0, fa0
  ADD s3, s2, s3
  ADDIW s0, s0, 1
  FSW fs0, 0(s3)
  BLT s0, s6, bb134
  JAL zero, bb130
bb134:   # loop depth 2
  JAL zero, bb133
