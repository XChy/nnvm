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
bb1:
  FSGNJN.S fs0, fa0, fa0
  # implict jump to bb2
bb2:
  LA s0, .CONSTANT.7.0
  FLW fs1, 0(s0)
  FLE.S s0, fs0, fs1
  BNE s0, zero, bb4
  # implict jump to bb3
bb3:
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
bb4:
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb5:
  FSGNJ.S fs0, fa0, fa0
  JAL zero, bb2
main:
  ADDI sp, sp, -208
  SD ra, 24(sp)
  SD s0, 32(sp)
  SD s1, 40(sp)
  SD s2, 48(sp)
  SD s3, 56(sp)
  SD s4, 64(sp)
  SD s5, 72(sp)
  SD s6, 80(sp)
  SD s7, 88(sp)
  SD s8, 96(sp)
  SD s9, 104(sp)
  SD s10, 112(sp)
  SD s11, 120(sp)
  FSD fs0, 128(sp)
  FSD fs1, 136(sp)
  FSD fs2, 144(sp)
  FSD fs3, 152(sp)
  FSD fs4, 160(sp)
  FSD fs5, 168(sp)
  FSD fs6, 176(sp)
  FSD fs7, 184(sp)
  FSD fs8, 192(sp)
  CALL getint
  ADD s8, a0, zero
  CALL getint
  ADD s7, a0, zero
  ADDI s0, zero, 0
  SW s0, 4(sp)
  LW s0, 4(sp)
  BLT s0, s8, bb126
  # implict jump to bb7
bb7:
  LW s0, 4(sp)
  BLT s0, s8, bb81
  # implict jump to bb8
bb8:
  LW s0, 4(sp)
  BLT s0, s8, bb74
  # implict jump to bb9
bb9:
  ADDI a0, zero, 10
  CALL putch
  LW s0, 4(sp)
  BLT s0, s8, bb19
  # implict jump to bb10
bb10:
  LW s0, 4(sp)
  BLT s0, s8, bb12
  # implict jump to bb11
bb11:
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 24(sp)
  LD s0, 32(sp)
  LD s1, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD s5, 72(sp)
  LD s6, 80(sp)
  LD s7, 88(sp)
  LD s8, 96(sp)
  LD s9, 104(sp)
  LD s10, 112(sp)
  LD s11, 120(sp)
  FLD fs0, 128(sp)
  FLD fs1, 136(sp)
  FLD fs2, 144(sp)
  FLD fs3, 152(sp)
  FLD fs4, 160(sp)
  FLD fs5, 168(sp)
  FLD fs6, 176(sp)
  FLD fs7, 184(sp)
  FLD fs8, 192(sp)
  ADDI sp, sp, 208
  JALR zero, 0(ra)
bb12:
  ADDI s4, zero, 1
  ADD s1, zero, zero
  # implict jump to bb13
bb13:
  SLLIW s0, s1, 5
  LA s2, test_idct
  ADD s2, s2, s0
  FLW fa0, 0(s2)
  CALL putfloat
  BLT s4, s7, bb16
  # implict jump to bb14
bb14:
  ADDI a0, zero, 10
  CALL putch
  ADDIW s1, s1, 1
  BLT s1, s8, bb15
  JAL zero, bb11
bb15:
  JAL zero, bb13
bb16:
  ADDI s0, zero, 1
  # implict jump to bb17
bb17:
  ADDI a0, zero, 32
  CALL putch
  SLLIW s3, s0, 2
  ADD s3, s2, s3
  FLW fa0, 0(s3)
  CALL putfloat
  ADDIW s0, s0, 1
  BLT s0, s7, bb18
  JAL zero, bb14
bb18:
  JAL zero, bb17
bb19:
  ADD s6, zero, zero
  ADD s5, zero, zero
  ADD s4, zero, zero
  # implict jump to bb20
bb20:
  BLT zero, s7, bb24
  # implict jump to bb21
bb21:
  # implict jump to bb22
bb22:
  ADDIW s6, s6, 1
  BLT s6, s8, bb23
  JAL zero, bb10
bb23:
  JAL zero, bb20
bb24:
  SLLIW s0, s6, 5
  LA s1, test_idct
  ADD s9, s1, s0
  ADDI s0, zero, 1
  FCVT.S.W fs0, s0
  LA s0, .CONSTANT.7.2
  FLW fs1, 0(s0)
  FDIV.S fs1, fs0, fs1
  ADDI s0, zero, 1
  SW s0, 8(sp)
  ADD s0, zero, zero
  # implict jump to bb25
bb25:
  SW s0, 12(sp)
  LW s0, 12(sp)
  SLLIW s1, s0, 2
  ADD s10, s9, s1
  LA s1, test_dct
  FLW fs2, 0(s1)
  FMUL.S fs2, fs1, fs2
  FSW fs2, 0(s10)
  LW s0, 8(sp)
  BLT s0, s8, bb71
  # implict jump to bb26
bb26:
  ADDI s0, zero, 1
  SW s0, 16(sp)
  LW s0, 16(sp)
  BLT s0, s7, bb67
  # implict jump to bb27
bb27:
  ADDI s4, zero, 1
  # implict jump to bb28
bb28:
  LW s0, 8(sp)
  BLT s0, s8, bb33
  # implict jump to bb29
bb29:
  ADDI s5, zero, 1
  # implict jump to bb30
bb30:
  FLW fs2, 0(s10)
  LA s3, .CONSTANT.7.3
  FLW fs3, 0(s3)
  FMUL.S fs2, fs2, fs3
  FCVT.S.W fs3, s8
  FDIV.S fs2, fs2, fs3
  LA s3, .CONSTANT.7.3
  FLW fs3, 0(s3)
  FMUL.S fs2, fs2, fs3
  FCVT.S.W fs3, s7
  FDIV.S fs2, fs2, fs3
  FSW fs2, 0(s10)
  LW s0, 12(sp)
  ADDIW s0, s0, 1
  BLT s0, s7, bb32
  # implict jump to bb31
bb31:
  JAL zero, bb22
bb32:
  JAL zero, bb25
bb33:
  ADDI s5, zero, 1
  # implict jump to bb34
bb34:
  LW s0, 16(sp)
  BLT s0, s7, bb39
  # implict jump to bb35
bb35:
  ADDI s4, zero, 1
  # implict jump to bb36
bb36:
  ADDIW s5, s5, 1
  BLT s5, s8, bb38
  # implict jump to bb37
bb37:
  JAL zero, bb30
bb38:
  JAL zero, bb34
bb39:
  SLLIW s2, s5, 5
  LA s3, test_dct
  ADD s11, s3, s2
  FCVT.S.W fa0, s8
  LA s2, .CONSTANT.7.4
  FLW fs2, 0(s2)
  FDIV.S fa0, fs2, fa0
  FCVT.S.W fs2, s6
  LA s2, .CONSTANT.7.5
  FLW fs3, 0(s2)
  FADD.S fs2, fs2, fs3
  FMUL.S fa0, fa0, fs2
  FCVT.S.W fs2, s5
  FMUL.S fa0, fa0, fs2
  ADDI s2, zero, 2
  FCVT.S.W fs2, s2
  LA s2, .CONSTANT.7.4
  FLW fs3, 0(s2)
  FDIV.S fs2, fs3, fs2
  FADD.S fs3, fa0, fs2
  LA s2, .CONSTANT.7.6
  FLW fa0, 0(s2)
  FLT.S s0, fa0, fs3
  SB s0, 0(sp)
  ADDI s4, zero, 1
  # implict jump to bb40
bb40:
  FLW fs4, 0(s10)
  SLLIW s3, s4, 2
  ADD s3, s11, s3
  FLW fs5, 0(s3)
  LB s0, 0(sp)
  BNE s0, zero, bb66
  # implict jump to bb41
bb41:
  LA s3, .CONSTANT.7.6
  FLW fa0, 0(s3)
  LA s3, .CONSTANT.7.6
  FLW fs6, 0(s3)
  FSGNJN.S fa0, fa0, fs6
  FLT.S s3, fs3, fa0
  # implict jump to bb42
bb42:
  BNE s3, zero, bb65
  # implict jump to bb43
bb43:
  FSGNJ.S fa0, fs3, fs3
  # implict jump to bb44
bb44:
  LA s3, .CONSTANT.7.4
  FLW fs6, 0(s3)
  FLT.S s3, fs6, fa0
  BNE s3, zero, bb64
  # implict jump to bb45
bb45:
  # implict jump to bb46
bb46:
  LA s3, .CONSTANT.7.4
  FLW fs6, 0(s3)
  LA s3, .CONSTANT.7.4
  FLW fs7, 0(s3)
  FSGNJN.S fs6, fs6, fs7
  FLT.S s3, fa0, fs6
  BNE s3, zero, bb63
  # implict jump to bb47
bb47:
  # implict jump to bb48
bb48:
  CALL my_sin_impl
  FMUL.S fs5, fs5, fa0
  FCVT.S.W fa0, s7
  LA s3, .CONSTANT.7.4
  FLW fs7, 0(s3)
  FDIV.S fa0, fs7, fa0
  LW s0, 12(sp)
  FCVT.S.W fs7, s0
  LA s3, .CONSTANT.7.5
  FLW fs8, 0(s3)
  FADD.S fs7, fs7, fs8
  FMUL.S fa0, fa0, fs7
  FCVT.S.W fs7, s4
  FMUL.S fa0, fa0, fs7
  FADD.S fa0, fa0, fs2
  LA s3, .CONSTANT.7.6
  FLW fs7, 0(s3)
  FLT.S s3, fs7, fa0
  BNE s3, zero, bb62
  # implict jump to bb49
bb49:
  LA s3, .CONSTANT.7.6
  FLW fs7, 0(s3)
  LA s3, .CONSTANT.7.6
  FLW fs8, 0(s3)
  FSGNJN.S fs7, fs7, fs8
  FLT.S s3, fa0, fs7
  # implict jump to bb50
bb50:
  BNE s3, zero, bb61
  # implict jump to bb51
bb51:
  # implict jump to bb52
bb52:
  LA s3, .CONSTANT.7.4
  FLW fs7, 0(s3)
  FLT.S s3, fs7, fa0
  BNE s3, zero, bb60
  # implict jump to bb53
bb53:
  # implict jump to bb54
bb54:
  FLT.S s3, fa0, fs6
  BNE s3, zero, bb59
  # implict jump to bb55
bb55:
  # implict jump to bb56
bb56:
  CALL my_sin_impl
  FSGNJ.D fs6, fa0, fa0
  FMUL.S fs5, fs5, fs6
  FADD.S fs4, fs4, fs5
  FSW fs4, 0(s10)
  ADDIW s4, s4, 1
  BLT s4, s7, bb58
  # implict jump to bb57
bb57:
  JAL zero, bb36
bb58:
  JAL zero, bb40
bb59:
  LA s3, .CONSTANT.7.6
  FLW fs6, 0(s3)
  FADD.S fa0, fa0, fs6
  JAL zero, bb56
bb60:
  LA s3, .CONSTANT.7.6
  FLW fs7, 0(s3)
  FSUB.S fa0, fa0, fs7
  JAL zero, bb54
bb61:
  LA s3, .CONSTANT.7.6
  FLW fs7, 0(s3)
  FDIV.S fs7, fa0, fs7
  FCVT.W.S s3, fs7, rtz
  FCVT.S.W fs7, s3
  LA s3, .CONSTANT.7.6
  FLW fs8, 0(s3)
  FMUL.S fs7, fs7, fs8
  FSUB.S fa0, fa0, fs7
  JAL zero, bb52
bb62:
  ADDI s3, zero, 1
  JAL zero, bb50
bb63:
  LA s3, .CONSTANT.7.6
  FLW fs7, 0(s3)
  FADD.S fa0, fa0, fs7
  JAL zero, bb48
bb64:
  LA s3, .CONSTANT.7.6
  FLW fs6, 0(s3)
  FSUB.S fa0, fa0, fs6
  JAL zero, bb46
bb65:
  LA s3, .CONSTANT.7.6
  FLW fa0, 0(s3)
  FDIV.S fa0, fs3, fa0
  FCVT.W.S s3, fa0, rtz
  FCVT.S.W fa0, s3
  LA s3, .CONSTANT.7.6
  FLW fs6, 0(s3)
  FMUL.S fa0, fa0, fs6
  FSUB.S fa0, fs3, fa0
  JAL zero, bb44
bb66:
  ADDI s3, zero, 1
  JAL zero, bb42
bb67:
  LA s1, .CONSTANT.7.3
  FLW fs2, 0(s1)
  FDIV.S fs2, fs0, fs2
  ADDI s4, zero, 1
  # implict jump to bb68
bb68:
  FLW fs3, 0(s10)
  SLLIW s2, s4, 2
  LA s3, test_dct
  ADD s2, s3, s2
  FLW fs4, 0(s2)
  FMUL.S fs4, fs2, fs4
  FADD.S fs3, fs3, fs4
  FSW fs3, 0(s10)
  ADDIW s4, s4, 1
  BLT s4, s7, bb70
  # implict jump to bb69
bb69:
  JAL zero, bb28
bb70:
  JAL zero, bb68
bb71:
  LA s1, .CONSTANT.7.3
  FLW fs2, 0(s1)
  FDIV.S fs2, fs0, fs2
  ADDI s1, zero, 1
  # implict jump to bb72
bb72:
  FLW fs3, 0(s10)
  SLLIW s2, s1, 5
  LA s3, test_dct
  ADD s2, s3, s2
  FLW fs4, 0(s2)
  FMUL.S fs4, fs2, fs4
  FADD.S fs3, fs3, fs4
  FSW fs3, 0(s10)
  ADDIW s1, s1, 1
  BLT s1, s8, bb73
  JAL zero, bb26
bb73:
  JAL zero, bb72
bb74:
  ADDI s4, zero, 1
  ADD s1, zero, zero
  # implict jump to bb75
bb75:
  SLLIW s0, s1, 5
  LA s2, test_dct
  ADD s2, s2, s0
  FLW fa0, 0(s2)
  CALL putfloat
  BLT s4, s7, bb78
  # implict jump to bb76
bb76:
  ADDI a0, zero, 10
  CALL putch
  ADDIW s1, s1, 1
  BLT s1, s8, bb77
  JAL zero, bb9
bb77:
  JAL zero, bb75
bb78:
  ADDI s0, zero, 1
  # implict jump to bb79
bb79:
  ADDI a0, zero, 32
  CALL putch
  SLLIW s3, s0, 2
  ADD s3, s2, s3
  FLW fa0, 0(s3)
  CALL putfloat
  ADDIW s0, s0, 1
  BLT s0, s7, bb80
  JAL zero, bb76
bb80:
  JAL zero, bb79
bb81:
  ADD s6, zero, zero
  ADD s4, zero, zero
  ADD s3, zero, zero
  # implict jump to bb82
bb82:
  BLT zero, s7, bb86
  # implict jump to bb83
bb83:
  # implict jump to bb84
bb84:
  ADDIW s6, s6, 1
  BLT s6, s8, bb85
  JAL zero, bb8
bb85:
  JAL zero, bb82
bb86:
  SLLIW s0, s6, 5
  LA s2, test_dct
  ADD s9, s2, s0
  FCVT.S.W fs0, zero
  ADD s5, zero, zero
  # implict jump to bb87
bb87:
  SLLIW s0, s5, 2
  ADD s10, s9, s0
  FSW fs0, 0(s10)
  LW s0, 4(sp)
  BLT s0, s8, bb92
  # implict jump to bb88
bb88:
  ADD s4, zero, zero
  # implict jump to bb89
bb89:
  ADDIW s5, s5, 1
  BLT s5, s7, bb91
  # implict jump to bb90
bb90:
  JAL zero, bb84
bb91:
  JAL zero, bb87
bb92:
  ADD s4, zero, zero
  # implict jump to bb93
bb93:
  BLT zero, s7, bb98
  # implict jump to bb94
bb94:
  ADD s3, zero, zero
  # implict jump to bb95
bb95:
  ADDIW s4, s4, 1
  BLT s4, s8, bb97
  # implict jump to bb96
bb96:
  JAL zero, bb89
bb97:
  JAL zero, bb93
bb98:
  SLLIW s0, s4, 5
  LA s1, test_block
  ADD s2, s1, s0
  FCVT.S.W fa0, s8
  LA s0, .CONSTANT.7.4
  FLW fs1, 0(s0)
  FDIV.S fa0, fs1, fa0
  FCVT.S.W fs1, s4
  LA s0, .CONSTANT.7.5
  FLW fs2, 0(s0)
  FADD.S fs1, fs1, fs2
  FMUL.S fa0, fa0, fs1
  FCVT.S.W fs1, s6
  FMUL.S fa0, fa0, fs1
  ADDI s0, zero, 2
  FCVT.S.W fs1, s0
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FDIV.S fs1, fs2, fs1
  FADD.S fs2, fa0, fs1
  LA s0, .CONSTANT.7.6
  FLW fa0, 0(s0)
  FLT.S s11, fa0, fs2
  ADD s3, zero, zero
  # implict jump to bb99
bb99:
  FLW fs3, 0(s10)
  SLLIW s1, s3, 2
  ADD s1, s2, s1
  FLW fs4, 0(s1)
  BNE s11, zero, bb125
  # implict jump to bb100
bb100:
  LA s1, .CONSTANT.7.6
  FLW fa0, 0(s1)
  LA s1, .CONSTANT.7.6
  FLW fs5, 0(s1)
  FSGNJN.S fa0, fa0, fs5
  FLT.S s1, fs2, fa0
  # implict jump to bb101
bb101:
  BNE s1, zero, bb124
  # implict jump to bb102
bb102:
  FSGNJ.S fa0, fs2, fs2
  # implict jump to bb103
bb103:
  LA s1, .CONSTANT.7.4
  FLW fs5, 0(s1)
  FLT.S s1, fs5, fa0
  BNE s1, zero, bb123
  # implict jump to bb104
bb104:
  # implict jump to bb105
bb105:
  LA s1, .CONSTANT.7.4
  FLW fs5, 0(s1)
  LA s1, .CONSTANT.7.4
  FLW fs6, 0(s1)
  FSGNJN.S fs5, fs5, fs6
  FLT.S s1, fa0, fs5
  BNE s1, zero, bb122
  # implict jump to bb106
bb106:
  # implict jump to bb107
bb107:
  CALL my_sin_impl
  FMUL.S fs4, fs4, fa0
  FCVT.S.W fa0, s7
  LA s1, .CONSTANT.7.4
  FLW fs6, 0(s1)
  FDIV.S fa0, fs6, fa0
  FCVT.S.W fs6, s3
  LA s1, .CONSTANT.7.5
  FLW fs7, 0(s1)
  FADD.S fs6, fs6, fs7
  FMUL.S fa0, fa0, fs6
  FCVT.S.W fs6, s5
  FMUL.S fa0, fa0, fs6
  FADD.S fa0, fa0, fs1
  LA s1, .CONSTANT.7.6
  FLW fs6, 0(s1)
  FLT.S s1, fs6, fa0
  BNE s1, zero, bb121
  # implict jump to bb108
bb108:
  LA s1, .CONSTANT.7.6
  FLW fs6, 0(s1)
  LA s1, .CONSTANT.7.6
  FLW fs7, 0(s1)
  FSGNJN.S fs6, fs6, fs7
  FLT.S s1, fa0, fs6
  # implict jump to bb109
bb109:
  BNE s1, zero, bb120
  # implict jump to bb110
bb110:
  # implict jump to bb111
bb111:
  LA s1, .CONSTANT.7.4
  FLW fs6, 0(s1)
  FLT.S s1, fs6, fa0
  BNE s1, zero, bb119
  # implict jump to bb112
bb112:
  # implict jump to bb113
bb113:
  FLT.S s1, fa0, fs5
  BNE s1, zero, bb118
  # implict jump to bb114
bb114:
  # implict jump to bb115
bb115:
  CALL my_sin_impl
  FSGNJ.D fs5, fa0, fa0
  FMUL.S fs4, fs4, fs5
  FADD.S fs3, fs3, fs4
  FSW fs3, 0(s10)
  ADDIW s3, s3, 1
  BLT s3, s7, bb117
  # implict jump to bb116
bb116:
  JAL zero, bb95
bb117:
  JAL zero, bb99
bb118:
  LA s1, .CONSTANT.7.6
  FLW fs5, 0(s1)
  FADD.S fa0, fa0, fs5
  JAL zero, bb115
bb119:
  LA s1, .CONSTANT.7.6
  FLW fs6, 0(s1)
  FSUB.S fa0, fa0, fs6
  JAL zero, bb113
bb120:
  LA s1, .CONSTANT.7.6
  FLW fs6, 0(s1)
  FDIV.S fs6, fa0, fs6
  FCVT.W.S s1, fs6, rtz
  FCVT.S.W fs6, s1
  LA s1, .CONSTANT.7.6
  FLW fs7, 0(s1)
  FMUL.S fs6, fs6, fs7
  FSUB.S fa0, fa0, fs6
  JAL zero, bb111
bb121:
  ADDI s1, zero, 1
  JAL zero, bb109
bb122:
  LA s1, .CONSTANT.7.6
  FLW fs6, 0(s1)
  FADD.S fa0, fa0, fs6
  JAL zero, bb107
bb123:
  LA s1, .CONSTANT.7.6
  FLW fs5, 0(s1)
  FSUB.S fa0, fa0, fs5
  JAL zero, bb105
bb124:
  LA s1, .CONSTANT.7.6
  FLW fa0, 0(s1)
  FDIV.S fa0, fs2, fa0
  FCVT.W.S s1, fa0, rtz
  FCVT.S.W fa0, s1
  LA s1, .CONSTANT.7.6
  FLW fs5, 0(s1)
  FMUL.S fa0, fa0, fs5
  FSUB.S fa0, fs2, fa0
  JAL zero, bb103
bb125:
  ADDI s1, zero, 1
  JAL zero, bb101
bb126:
  ADDI s4, zero, 0
  ADD s1, zero, zero
  # implict jump to bb127
bb127:
  BLT s4, s7, bb130
  # implict jump to bb128
bb128:
  ADDIW s1, s1, 1
  BLT s1, s8, bb129
  JAL zero, bb7
bb129:
  JAL zero, bb127
bb130:
  SLLIW s0, s1, 5
  LA s2, test_block
  ADD s2, s2, s0
  ADD s0, zero, zero
  # implict jump to bb131
bb131:
  SLLIW s3, s0, 2
  ADD s3, s2, s3
  CALL getfloat
  FSGNJ.D fs0, fa0, fa0
  FSW fs0, 0(s3)
  ADDIW s0, s0, 1
  BLT s0, s7, bb132
  JAL zero, bb128
bb132:
  JAL zero, bb131
