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
.word 0x40c90fdb
.CONSTANT.7.3:
.word 0x40490fdb
.CONSTANT.7.4:
.word 0x40800000
.CONSTANT.7.5:
.word 0x40000000
.CONSTANT.7.6:
.word 0x3f000000
.section .text
my_sin_impl:   # loop depth 0
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs0, 16(sp)
  FSD fs1, 24(sp)
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
  FLW fs0, 0(s0)
  FDIV.S fa0, fa0, fs0
  CALL my_sin_impl
  ADDI t0, zero, 3
  FCVT.S.W ft0, t0
  FMUL.S ft0, ft0, fa0
  ADDI t0, zero, 4
  FCVT.S.W ft1, t0
  FMUL.S ft1, ft1, fa0
  FMUL.S ft1, ft1, fa0
  FMUL.S ft1, ft1, fa0
  FSUB.S fa0, ft0, ft1
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb4:   # loop depth 0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb5:   # loop depth 0
  FSGNJ.S fs0, fa0, fa0
  JAL zero, bb2
main:   # loop depth 0
  ADDI sp, sp, -256
  SD s1, 56(sp)
  SD ra, 64(sp)
  SD s0, 72(sp)
  SD s2, 80(sp)
  SD s3, 88(sp)
  SD s4, 96(sp)
  SD s5, 104(sp)
  SD s6, 112(sp)
  SD s7, 120(sp)
  SD s8, 128(sp)
  SD s9, 136(sp)
  SD s10, 144(sp)
  SD s11, 152(sp)
  FSD fs0, 160(sp)
  FSD fs1, 168(sp)
  FSD fs2, 176(sp)
  FSD fs3, 184(sp)
  FSD fs4, 192(sp)
  FSD fs5, 200(sp)
  FSD fs6, 208(sp)
  FSD fs8, 216(sp)
  FSD fs9, 224(sp)
  FSD fs10, 232(sp)
  FSD fs11, 240(sp)
  CALL getint
  ADD s7, a0, zero
  CALL getint
  ADD s8, a0, zero
  ADDI s0, zero, 0
  SW s0, 24(sp)
  LW s0, 24(sp)
  BLT s0, s7, bb126
  # implict jump to bb7
bb7:   # loop depth 0
  FCVT.S.W fs2, s7
  ADDI s0, zero, 2
  FCVT.S.W fs0, s0
  FSW fs0, 0(sp)
  LA s0, .CONSTANT.7.2
  FLW fs0, 0(s0)
  LA s0, .CONSTANT.7.2
  FLW fs1, 0(s0)
  FSGNJN.S fs4, fs0, fs1
  LA s0, .CONSTANT.7.3
  FLW fs0, 0(s0)
  LA s0, .CONSTANT.7.3
  FLW fs1, 0(s0)
  FSGNJN.S fs5, fs0, fs1
  FCVT.S.W fs6, s8
  LW s0, 24(sp)
  BLT s0, s7, bb81
  # implict jump to bb8
bb8:   # loop depth 0
  LW s0, 24(sp)
  BLT s0, s7, bb74
  # implict jump to bb9
bb9:   # loop depth 0
  ADDI a0, zero, 10
  CALL putch
  LW s0, 24(sp)
  BLT s0, s7, bb19
  # implict jump to bb10
bb10:   # loop depth 0
  LW s0, 24(sp)
  BLT s0, s7, bb12
  # implict jump to bb11
bb11:   # loop depth 0
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD s1, 56(sp)
  LD ra, 64(sp)
  LD s0, 72(sp)
  LD s2, 80(sp)
  LD s3, 88(sp)
  LD s4, 96(sp)
  LD s5, 104(sp)
  LD s6, 112(sp)
  LD s7, 120(sp)
  LD s8, 128(sp)
  LD s9, 136(sp)
  LD s10, 144(sp)
  LD s11, 152(sp)
  FLD fs0, 160(sp)
  FLD fs1, 168(sp)
  FLD fs2, 176(sp)
  FLD fs3, 184(sp)
  FLD fs4, 192(sp)
  FLD fs5, 200(sp)
  FLD fs6, 208(sp)
  FLD fs8, 216(sp)
  FLD fs9, 224(sp)
  FLD fs10, 232(sp)
  FLD fs11, 240(sp)
  ADDI sp, sp, 256
  JALR zero, 0(ra)
bb12:   # loop depth 0
  ADDI s4, zero, 1
  ADD s1, zero, zero
  # implict jump to bb13
bb13:   # loop depth 1
  SLLIW s0, s1, 5
  LA s2, test_idct
  ADD s2, s2, s0
  FLW fa0, 0(s2)
  CALL putfloat
  BLT s4, s8, bb16
  # implict jump to bb14
bb14:   # loop depth 1
  ADDI a0, zero, 10
  CALL putch
  ADDIW s1, s1, 1
  BLT s1, s7, bb15
  JAL zero, bb11
bb15:   # loop depth 1
  JAL zero, bb13
bb16:   # loop depth 1
  ADDI s0, zero, 1
  # implict jump to bb17
bb17:   # loop depth 2
  ADDI a0, zero, 32
  CALL putch
  SLLIW s3, s0, 2
  ADD s3, s2, s3
  FLW fa0, 0(s3)
  CALL putfloat
  ADDIW s0, s0, 1
  BLT s0, s8, bb18
  JAL zero, bb14
bb18:   # loop depth 2
  JAL zero, bb17
bb19:   # loop depth 0
  ADD s4, zero, zero
  ADD s3, zero, zero
  ADD s1, zero, zero
  # implict jump to bb20
bb20:   # loop depth 1
  BLT zero, s8, bb24
  # implict jump to bb21
bb21:   # loop depth 1
  # implict jump to bb22
bb22:   # loop depth 1
  ADDIW s4, s4, 1
  BLT s4, s7, bb23
  JAL zero, bb10
bb23:   # loop depth 1
  JAL zero, bb20
bb24:   # loop depth 1
  SLLIW s0, s4, 5
  LA s1, test_idct
  ADD s0, s1, s0
  SD s0, 248(sp)
  ADDI s0, zero, 1
  FCVT.S.W fs0, s0
  LA s0, .CONSTANT.7.4
  FLW fs1, 0(s0)
  FDIV.S fs1, fs0, fs1
  FSW fs1, 4(sp)
  ADDI s0, zero, 1
  SW s0, 16(sp)
  LA s0, .CONSTANT.7.5
  FLW fs1, 0(s0)
  FDIV.S fs8, fs0, fs1
  ADDI s0, zero, 1
  SW s0, 20(sp)
  ADD s5, zero, zero
  # implict jump to bb25
bb25:   # loop depth 2
  SLLIW s0, s5, 2
  LD s1, 248(sp)
  ADD s6, s1, s0
  LA s0, test_dct
  FLW fs0, 0(s0)
  FLW fs1, 4(sp)
  FMUL.S fs0, fs1, fs0
  FSW fs0, 0(s6)
  LW s0, 16(sp)
  BLT s0, s7, bb71
  # implict jump to bb26
bb26:   # loop depth 2
  LW s0, 20(sp)
  BLT s0, s8, bb67
  # implict jump to bb27
bb27:   # loop depth 2
  ADDI s1, zero, 1
  # implict jump to bb28
bb28:   # loop depth 2
  LW s0, 16(sp)
  BLT s0, s7, bb33
  # implict jump to bb29
bb29:   # loop depth 2
  ADDI s3, zero, 1
  # implict jump to bb30
bb30:   # loop depth 2
  FLW fs0, 0(s6)
  LA s2, .CONSTANT.7.5
  FLW fs1, 0(s2)
  FMUL.S fs0, fs0, fs1
  FDIV.S fs0, fs0, fs2
  LA s2, .CONSTANT.7.5
  FLW fs1, 0(s2)
  FMUL.S fs0, fs0, fs1
  FDIV.S fs0, fs0, fs6
  FSW fs0, 0(s6)
  ADDIW s5, s5, 1
  BLT s5, s8, bb32
  # implict jump to bb31
bb31:   # loop depth 2
  JAL zero, bb22
bb32:   # loop depth 2
  JAL zero, bb25
bb33:   # loop depth 2
  ADDI s3, zero, 1
  # implict jump to bb34
bb34:   # loop depth 3
  LW s0, 20(sp)
  BLT s0, s8, bb39
  # implict jump to bb35
bb35:   # loop depth 3
  ADDI s1, zero, 1
  # implict jump to bb36
bb36:   # loop depth 3
  ADDIW s3, s3, 1
  BLT s3, s7, bb38
  # implict jump to bb37
bb37:   # loop depth 3
  JAL zero, bb30
bb38:   # loop depth 3
  JAL zero, bb34
bb39:   # loop depth 3
  SLLIW s1, s3, 5
  LA s2, test_dct
  ADD s9, s2, s1
  LA s1, .CONSTANT.7.3
  FLW fa0, 0(s1)
  FDIV.S fa0, fa0, fs2
  FCVT.S.W fs0, s4
  LA s1, .CONSTANT.7.6
  FLW fs1, 0(s1)
  FADD.S fs0, fs0, fs1
  FMUL.S fa0, fa0, fs0
  FCVT.S.W fs0, s3
  FMUL.S fa0, fa0, fs0
  LA s1, .CONSTANT.7.3
  FLW fs0, 0(s1)
  FLW fs1, 0(sp)
  FDIV.S fs9, fs0, fs1
  FADD.S fs0, fa0, fs9
  LA s1, .CONSTANT.7.2
  FLW fa0, 0(s1)
  FLT.S s10, fa0, fs0
  LA s1, .CONSTANT.7.3
  FLW fa0, 0(s1)
  FDIV.S fa0, fa0, fs6
  FCVT.S.W fs1, s5
  LA s1, .CONSTANT.7.6
  FLW fs10, 0(s1)
  FADD.S fs1, fs1, fs10
  FMUL.S fs10, fa0, fs1
  ADDI s1, zero, 1
  # implict jump to bb40
bb40:   # loop depth 4
  FLW fs11, 0(s6)
  SLLIW s2, s1, 2
  ADD s2, s9, s2
  FLW fa0, 0(s2)
  FSW fa0, 48(sp)
  BNE s10, zero, bb66
  # implict jump to bb41
bb41:   # loop depth 4
  FLT.S s2, fs0, fs4
  # implict jump to bb42
bb42:   # loop depth 4
  BNE s2, zero, bb65
  # implict jump to bb43
bb43:   # loop depth 4
  FSGNJ.S fa0, fs0, fs0
  # implict jump to bb44
bb44:   # loop depth 4
  LA s2, .CONSTANT.7.3
  FLW fs1, 0(s2)
  FLT.S s2, fs1, fa0
  BNE s2, zero, bb64
  # implict jump to bb45
bb45:   # loop depth 4
  # implict jump to bb46
bb46:   # loop depth 4
  FLT.S s2, fa0, fs5
  BNE s2, zero, bb63
  # implict jump to bb47
bb47:   # loop depth 4
  # implict jump to bb48
bb48:   # loop depth 4
  CALL my_sin_impl
  FLW fs1, 48(sp)
  FMUL.S fa0, fs1, fa0
  FSW fa0, 40(sp)
  FCVT.S.W fa0, s1
  FMUL.S fa0, fs10, fa0
  FADD.S fa0, fa0, fs9
  LA s2, .CONSTANT.7.2
  FLW fs1, 0(s2)
  FLT.S s2, fs1, fa0
  BNE s2, zero, bb62
  # implict jump to bb49
bb49:   # loop depth 4
  FLT.S s2, fa0, fs4
  # implict jump to bb50
bb50:   # loop depth 4
  BNE s2, zero, bb61
  # implict jump to bb51
bb51:   # loop depth 4
  # implict jump to bb52
bb52:   # loop depth 4
  LA s2, .CONSTANT.7.3
  FLW fs1, 0(s2)
  FLT.S s2, fs1, fa0
  BNE s2, zero, bb60
  # implict jump to bb53
bb53:   # loop depth 4
  # implict jump to bb54
bb54:   # loop depth 4
  FLT.S s2, fa0, fs5
  BNE s2, zero, bb59
  # implict jump to bb55
bb55:   # loop depth 4
  # implict jump to bb56
bb56:   # loop depth 4
  CALL my_sin_impl
  FSGNJ.D fs1, fa0, fa0
  FLW fs3, 40(sp)
  FMUL.S fs1, fs3, fs1
  FADD.S fs1, fs11, fs1
  FSW fs1, 0(s6)
  ADDIW s1, s1, 1
  BLT s1, s8, bb58
  # implict jump to bb57
bb57:   # loop depth 4
  JAL zero, bb36
bb58:   # loop depth 4
  JAL zero, bb40
bb59:   # loop depth 4
  LA s2, .CONSTANT.7.2
  FLW fs1, 0(s2)
  FADD.S fa0, fa0, fs1
  JAL zero, bb56
bb60:   # loop depth 4
  LA s2, .CONSTANT.7.2
  FLW fs1, 0(s2)
  FSUB.S fa0, fa0, fs1
  JAL zero, bb54
bb61:   # loop depth 4
  LA s2, .CONSTANT.7.2
  FLW fs1, 0(s2)
  FDIV.S fs1, fa0, fs1
  FCVT.W.S s2, fs1, rtz
  FCVT.S.W fs1, s2
  LA s2, .CONSTANT.7.2
  FLW fs3, 0(s2)
  FSW fs3, 32(sp)
  FLW fs3, 32(sp)
  FMUL.S fs1, fs1, fs3
  FSUB.S fa0, fa0, fs1
  JAL zero, bb52
bb62:   # loop depth 4
  ADDI s2, zero, 1
  JAL zero, bb50
bb63:   # loop depth 4
  LA s2, .CONSTANT.7.2
  FLW fs1, 0(s2)
  FADD.S fa0, fa0, fs1
  JAL zero, bb48
bb64:   # loop depth 4
  LA s2, .CONSTANT.7.2
  FLW fs1, 0(s2)
  FSUB.S fa0, fa0, fs1
  JAL zero, bb46
bb65:   # loop depth 4
  LA s2, .CONSTANT.7.2
  FLW fa0, 0(s2)
  FDIV.S fa0, fs0, fa0
  FCVT.W.S s2, fa0, rtz
  FCVT.S.W fa0, s2
  LA s2, .CONSTANT.7.2
  FLW fs1, 0(s2)
  FMUL.S fa0, fa0, fs1
  FSUB.S fa0, fs0, fa0
  JAL zero, bb44
bb66:   # loop depth 4
  ADDI s2, zero, 1
  JAL zero, bb42
bb67:   # loop depth 2
  ADDI s1, zero, 1
  # implict jump to bb68
bb68:   # loop depth 3
  FLW fs0, 0(s6)
  SLLIW s2, s1, 2
  LA s9, test_dct
  ADD s2, s9, s2
  FLW fs1, 0(s2)
  FMUL.S fs1, fs8, fs1
  FADD.S fs0, fs0, fs1
  FSW fs0, 0(s6)
  ADDIW s1, s1, 1
  BLT s1, s8, bb70
  # implict jump to bb69
bb69:   # loop depth 3
  JAL zero, bb28
bb70:   # loop depth 3
  JAL zero, bb68
bb71:   # loop depth 2
  ADDI s0, zero, 1
  # implict jump to bb72
bb72:   # loop depth 3
  FLW fs0, 0(s6)
  SLLIW s1, s0, 5
  LA s2, test_dct
  ADD s1, s2, s1
  FLW fs1, 0(s1)
  FMUL.S fs1, fs8, fs1
  FADD.S fs0, fs0, fs1
  FSW fs0, 0(s6)
  ADDIW s0, s0, 1
  BLT s0, s7, bb73
  JAL zero, bb26
bb73:   # loop depth 3
  JAL zero, bb72
bb74:   # loop depth 0
  ADDI s4, zero, 1
  ADD s1, zero, zero
  # implict jump to bb75
bb75:   # loop depth 1
  SLLIW s0, s1, 5
  LA s2, test_dct
  ADD s2, s2, s0
  FLW fa0, 0(s2)
  CALL putfloat
  BLT s4, s8, bb78
  # implict jump to bb76
bb76:   # loop depth 1
  ADDI a0, zero, 10
  CALL putch
  ADDIW s1, s1, 1
  BLT s1, s7, bb77
  JAL zero, bb9
bb77:   # loop depth 1
  JAL zero, bb75
bb78:   # loop depth 1
  ADDI s0, zero, 1
  # implict jump to bb79
bb79:   # loop depth 2
  ADDI a0, zero, 32
  CALL putch
  SLLIW s3, s0, 2
  ADD s3, s2, s3
  FLW fa0, 0(s3)
  CALL putfloat
  ADDIW s0, s0, 1
  BLT s0, s8, bb80
  JAL zero, bb76
bb80:   # loop depth 2
  JAL zero, bb79
bb81:   # loop depth 0
  ADD s6, zero, zero
  ADD s4, zero, zero
  ADD s3, zero, zero
  # implict jump to bb82
bb82:   # loop depth 1
  BLT zero, s8, bb86
  # implict jump to bb83
bb83:   # loop depth 1
  # implict jump to bb84
bb84:   # loop depth 1
  ADDIW s6, s6, 1
  BLT s6, s7, bb85
  JAL zero, bb8
bb85:   # loop depth 1
  JAL zero, bb82
bb86:   # loop depth 1
  SLLIW s0, s6, 5
  LA s2, test_dct
  ADD s9, s2, s0
  FCVT.S.W fs0, zero
  FSW fs0, 8(sp)
  ADD s5, zero, zero
  # implict jump to bb87
bb87:   # loop depth 2
  SLLIW s0, s5, 2
  ADD s2, s9, s0
  FLW fs0, 8(sp)
  FSW fs0, 0(s2)
  LW s0, 24(sp)
  BLT s0, s7, bb92
  # implict jump to bb88
bb88:   # loop depth 2
  ADD s4, zero, zero
  # implict jump to bb89
bb89:   # loop depth 2
  ADDIW s5, s5, 1
  BLT s5, s8, bb91
  # implict jump to bb90
bb90:   # loop depth 2
  JAL zero, bb84
bb91:   # loop depth 2
  JAL zero, bb87
bb92:   # loop depth 2
  ADD s4, zero, zero
  # implict jump to bb93
bb93:   # loop depth 3
  BLT zero, s8, bb98
  # implict jump to bb94
bb94:   # loop depth 3
  ADD s3, zero, zero
  # implict jump to bb95
bb95:   # loop depth 3
  ADDIW s4, s4, 1
  BLT s4, s7, bb97
  # implict jump to bb96
bb96:   # loop depth 3
  JAL zero, bb89
bb97:   # loop depth 3
  JAL zero, bb93
bb98:   # loop depth 3
  SLLIW s0, s4, 5
  LA s1, test_block
  ADD s10, s1, s0
  LA s0, .CONSTANT.7.3
  FLW fa0, 0(s0)
  FDIV.S fa0, fa0, fs2
  FCVT.S.W fs0, s4
  LA s0, .CONSTANT.7.6
  FLW fs1, 0(s0)
  FADD.S fs0, fs0, fs1
  FMUL.S fa0, fa0, fs0
  FCVT.S.W fs0, s6
  FMUL.S fa0, fa0, fs0
  LA s0, .CONSTANT.7.3
  FLW fs0, 0(s0)
  FLW fs1, 0(sp)
  FDIV.S fs8, fs0, fs1
  FADD.S fs0, fa0, fs8
  LA s0, .CONSTANT.7.2
  FLW fa0, 0(s0)
  FLT.S s11, fa0, fs0
  LA s0, .CONSTANT.7.3
  FLW fa0, 0(s0)
  FDIV.S fs9, fa0, fs6
  FCVT.S.W fs10, s5
  ADD s3, zero, zero
  # implict jump to bb99
bb99:   # loop depth 4
  FLW fs11, 0(s2)
  SLLIW s1, s3, 2
  ADD s1, s10, s1
  FLW fa0, 0(s1)
  FSW fa0, 44(sp)
  BNE s11, zero, bb125
  # implict jump to bb100
bb100:   # loop depth 4
  FLT.S s1, fs0, fs4
  # implict jump to bb101
bb101:   # loop depth 4
  BNE s1, zero, bb124
  # implict jump to bb102
bb102:   # loop depth 4
  FSGNJ.S fa0, fs0, fs0
  # implict jump to bb103
bb103:   # loop depth 4
  LA s1, .CONSTANT.7.3
  FLW fs1, 0(s1)
  FLT.S s1, fs1, fa0
  BNE s1, zero, bb123
  # implict jump to bb104
bb104:   # loop depth 4
  # implict jump to bb105
bb105:   # loop depth 4
  FLT.S s1, fa0, fs5
  BNE s1, zero, bb122
  # implict jump to bb106
bb106:   # loop depth 4
  # implict jump to bb107
bb107:   # loop depth 4
  CALL my_sin_impl
  FLW fs1, 44(sp)
  FMUL.S fa0, fs1, fa0
  FSW fa0, 36(sp)
  FCVT.S.W fa0, s3
  LA s1, .CONSTANT.7.6
  FLW fs1, 0(s1)
  FADD.S fa0, fa0, fs1
  FMUL.S fa0, fs9, fa0
  FMUL.S fa0, fa0, fs10
  FADD.S fa0, fa0, fs8
  LA s1, .CONSTANT.7.2
  FLW fs1, 0(s1)
  FLT.S s1, fs1, fa0
  BNE s1, zero, bb121
  # implict jump to bb108
bb108:   # loop depth 4
  FLT.S s1, fa0, fs4
  # implict jump to bb109
bb109:   # loop depth 4
  BNE s1, zero, bb120
  # implict jump to bb110
bb110:   # loop depth 4
  # implict jump to bb111
bb111:   # loop depth 4
  LA s1, .CONSTANT.7.3
  FLW fs1, 0(s1)
  FLT.S s1, fs1, fa0
  BNE s1, zero, bb119
  # implict jump to bb112
bb112:   # loop depth 4
  # implict jump to bb113
bb113:   # loop depth 4
  FLT.S s1, fa0, fs5
  BNE s1, zero, bb118
  # implict jump to bb114
bb114:   # loop depth 4
  # implict jump to bb115
bb115:   # loop depth 4
  CALL my_sin_impl
  FSGNJ.D fs1, fa0, fa0
  FLW fs3, 36(sp)
  FMUL.S fs1, fs3, fs1
  FADD.S fs1, fs11, fs1
  FSW fs1, 0(s2)
  ADDIW s3, s3, 1
  BLT s3, s8, bb117
  # implict jump to bb116
bb116:   # loop depth 4
  JAL zero, bb95
bb117:   # loop depth 4
  JAL zero, bb99
bb118:   # loop depth 4
  LA s1, .CONSTANT.7.2
  FLW fs1, 0(s1)
  FADD.S fa0, fa0, fs1
  JAL zero, bb115
bb119:   # loop depth 4
  LA s1, .CONSTANT.7.2
  FLW fs1, 0(s1)
  FSUB.S fa0, fa0, fs1
  JAL zero, bb113
bb120:   # loop depth 4
  LA s1, .CONSTANT.7.2
  FLW fs1, 0(s1)
  FDIV.S fs1, fa0, fs1
  FCVT.W.S s1, fs1, rtz
  FCVT.S.W fs1, s1
  LA s1, .CONSTANT.7.2
  FLW fs3, 0(s1)
  FSW fs3, 28(sp)
  FLW fs3, 28(sp)
  FMUL.S fs1, fs1, fs3
  FSUB.S fa0, fa0, fs1
  JAL zero, bb111
bb121:   # loop depth 4
  ADDI s1, zero, 1
  JAL zero, bb109
bb122:   # loop depth 4
  LA s1, .CONSTANT.7.2
  FLW fs1, 0(s1)
  FADD.S fa0, fa0, fs1
  JAL zero, bb107
bb123:   # loop depth 4
  LA s1, .CONSTANT.7.2
  FLW fs1, 0(s1)
  FSUB.S fa0, fa0, fs1
  JAL zero, bb105
bb124:   # loop depth 4
  LA s1, .CONSTANT.7.2
  FLW fa0, 0(s1)
  FDIV.S fa0, fs0, fa0
  FCVT.W.S s1, fa0, rtz
  FCVT.S.W fa0, s1
  LA s1, .CONSTANT.7.2
  FLW fs1, 0(s1)
  FMUL.S fa0, fa0, fs1
  FSUB.S fa0, fs0, fa0
  JAL zero, bb103
bb125:   # loop depth 4
  ADDI s1, zero, 1
  JAL zero, bb101
bb126:   # loop depth 0
  ADDI s4, zero, 0
  ADD s1, zero, zero
  # implict jump to bb127
bb127:   # loop depth 1
  BLT s4, s8, bb130
  # implict jump to bb128
bb128:   # loop depth 1
  ADDIW s1, s1, 1
  BLT s1, s7, bb129
  JAL zero, bb7
bb129:   # loop depth 1
  JAL zero, bb127
bb130:   # loop depth 1
  SLLIW s0, s1, 5
  LA s2, test_block
  ADD s2, s2, s0
  ADD s0, zero, zero
  # implict jump to bb131
bb131:   # loop depth 2
  SLLIW s3, s0, 2
  ADD s3, s2, s3
  CALL getfloat
  FSGNJ.D fs0, fa0, fa0
  FSW fs0, 0(s3)
  ADDIW s0, s0, 1
  BLT s0, s8, bb132
  JAL zero, bb128
bb132:   # loop depth 2
  JAL zero, bb131
