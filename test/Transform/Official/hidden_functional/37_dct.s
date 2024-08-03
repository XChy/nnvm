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
  FSGNJ.D fs0, fa0, fa0
  ADDI s0, zero, 0
  FCVT.S.W fa0, s0
  FLT.S s0, fa0, fs0
  BNE s0, zero, bb5
  # implict jump to bb1
bb1:
  FSGNJN.S fa0, fs0, fs0
  # implict jump to bb2
bb2:
  FSGNJ.S fs1, fa0, fa0
  LA s0, .CONSTANT.7.0
  FLW fa0, 0(s0)
  FLE.S s0, fs1, fa0
  BNE s0, zero, bb4
  # implict jump to bb3
bb3:
  LA s0, .CONSTANT.7.1
  FLW fa0, 0(s0)
  FDIV.S fa0, fs0, fa0
  CALL my_sin_impl
  FSGNJ.D ft2, fa0, fa0
  ADDI t0, zero, 3
  FCVT.S.W ft0, t0
  FMUL.S ft0, ft0, ft2
  ADDI t0, zero, 4
  FCVT.S.W ft1, t0
  FMUL.S ft1, ft1, ft2
  FMUL.S ft1, ft1, ft2
  FMUL.S ft1, ft1, ft2
  FSUB.S ft0, ft0, ft1
  FSGNJ.S fa0, ft0, ft0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb4:
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb5:
  FSGNJ.S fa0, fs0, fs0
  JAL zero, bb2
main:
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
  FSD fs0, 112(sp)
  FSD fs1, 120(sp)
  FSD fs2, 128(sp)
  FSD fs3, 136(sp)
  FSD fs4, 144(sp)
  FSD fs5, 152(sp)
  FSD fs6, 160(sp)
  FSD fs7, 168(sp)
  FSD fs8, 176(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 4(sp)
  CALL getint
  ADD s5, a0, zero
  ADDI s3, zero, 0
  LW s0, 4(sp)
  BLT s3, s0, bb126
  # implict jump to bb7
bb7:
  LW s0, 4(sp)
  BLT s3, s0, bb81
  # implict jump to bb8
bb8:
  LW s0, 4(sp)
  BLT s3, s0, bb74
  # implict jump to bb9
bb9:
  ADDI a0, zero, 10
  CALL putch
  LW s0, 4(sp)
  BLT s3, s0, bb19
  # implict jump to bb10
bb10:
  LW s0, 4(sp)
  BLT s3, s0, bb12
  # implict jump to bb11
bb11:
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
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
  FLD fs0, 112(sp)
  FLD fs1, 120(sp)
  FLD fs2, 128(sp)
  FLD fs3, 136(sp)
  FLD fs4, 144(sp)
  FLD fs5, 152(sp)
  FLD fs6, 160(sp)
  FLD fs7, 168(sp)
  FLD fs8, 176(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb12:
  ADDI s1, zero, 1
  ADD s0, zero, zero
  # implict jump to bb13
bb13:
  ADD s3, s0, zero
  SLLIW s2, s3, 5
  LA s0, test_idct
  ADD s0, s0, s2
  FLW fa0, 0(s0)
  CALL putfloat
  BLT s1, s5, bb16
  # implict jump to bb14
bb14:
  ADDI a0, zero, 10
  CALL putch
  ADDIW s2, s3, 1
  LW s0, 4(sp)
  BLT s2, s0, bb15
  JAL zero, bb11
bb15:
  ADD s0, s2, zero
  JAL zero, bb13
bb16:
  ADDI a0, zero, 1
  # implict jump to bb17
bb17:
  ADD s4, a0, zero
  ADDI a0, zero, 32
  CALL putch
  SLLIW s2, s4, 2
  ADD s2, s0, s2
  FLW fa0, 0(s2)
  CALL putfloat
  ADDIW a0, s4, 1
  BLT a0, s5, bb18
  JAL zero, bb14
bb18:
  JAL zero, bb17
bb19:
  ADD s6, zero, zero
  ADD s1, zero, zero
  ADD s0, zero, zero
  # implict jump to bb20
bb20:
  ADD s8, s6, zero
  BLT zero, s5, bb24
  # implict jump to bb21
bb21:
  # implict jump to bb22
bb22:
  ADD s4, s0, zero
  ADD s2, s1, zero
  ADDIW s1, s8, 1
  LW s0, 4(sp)
  BLT s1, s0, bb23
  JAL zero, bb10
bb23:
  ADD s6, s1, zero
  ADD s1, s2, zero
  ADD s0, s4, zero
  JAL zero, bb20
bb24:
  SLLIW s1, s8, 5
  LA s0, test_idct
  ADD s4, s0, s1
  ADDI s0, zero, 1
  FCVT.S.W fs0, s0
  LA s0, .CONSTANT.7.2
  FLW fs1, 0(s0)
  FDIV.S fs2, fs0, fs1
  ADDI s2, zero, 1
  ADD s0, zero, zero
  # implict jump to bb25
bb25:
  ADD s10, s0, zero
  SLLIW s0, s10, 2
  ADD s7, s4, s0
  LA s0, test_dct
  FLW fs1, 0(s0)
  FMUL.S fs1, fs2, fs1
  FSW fs1, 0(s7)
  LW s0, 4(sp)
  BLT s2, s0, bb71
  # implict jump to bb26
bb26:
  ADDI s1, zero, 1
  BLT s1, s5, bb67
  # implict jump to bb27
bb27:
  ADDI s0, zero, 1
  # implict jump to bb28
bb28:
  ADD s6, s0, zero
  LW s0, 4(sp)
  BLT s2, s0, bb33
  # implict jump to bb29
bb29:
  ADDI s0, zero, 1
  ADD s1, s6, zero
  # implict jump to bb30
bb30:
  ADD s6, s1, zero
  ADD s1, s0, zero
  FLW fs3, 0(s7)
  LA s0, .CONSTANT.7.3
  FLW fs1, 0(s0)
  FMUL.S fs3, fs3, fs1
  LW s0, 4(sp)
  FCVT.S.W fs1, s0
  FDIV.S fs3, fs3, fs1
  LA s0, .CONSTANT.7.3
  FLW fs1, 0(s0)
  FMUL.S fs3, fs3, fs1
  FCVT.S.W fs1, s5
  FDIV.S fs1, fs3, fs1
  FSW fs1, 0(s7)
  ADDIW s0, s10, 1
  BLT s0, s5, bb32
  # implict jump to bb31
bb31:
  ADD s0, s6, zero
  JAL zero, bb22
bb32:
  JAL zero, bb25
bb33:
  ADDI s0, zero, 1
  # implict jump to bb34
bb34:
  SW s0, 8(sp)
  BLT s1, s5, bb39
  # implict jump to bb35
bb35:
  ADDI s0, zero, 1
  # implict jump to bb36
bb36:
  ADD s6, s0, zero
  LW s0, 8(sp)
  ADDIW s9, s0, 1
  LW s0, 4(sp)
  BLT s9, s0, bb38
  # implict jump to bb37
bb37:
  ADD s0, s9, zero
  ADD s1, s6, zero
  JAL zero, bb30
bb38:
  ADD s0, s9, zero
  JAL zero, bb34
bb39:
  LW s0, 8(sp)
  SLLIW s6, s0, 5
  LA s0, test_dct
  ADD s6, s0, s6
  LW s0, 4(sp)
  FCVT.S.W fs1, s0
  LA s0, .CONSTANT.7.4
  FLW fa0, 0(s0)
  FDIV.S fs3, fa0, fs1
  FCVT.S.W fs1, s8
  LA s0, .CONSTANT.7.5
  FLW fa0, 0(s0)
  FADD.S fa0, fs1, fa0
  FMUL.S fa0, fs3, fa0
  LW s0, 8(sp)
  FCVT.S.W fs1, s0
  FMUL.S fs1, fa0, fs1
  ADDI s0, zero, 2
  FCVT.S.W fs3, s0
  LA s0, .CONSTANT.7.4
  FLW fa0, 0(s0)
  FDIV.S fs3, fa0, fs3
  FADD.S fs5, fs1, fs3
  LA s0, .CONSTANT.7.6
  FLW fa0, 0(s0)
  FLT.S s0, fa0, fs5
  SB s0, 0(sp)
  ADDI s0, zero, 1
  # implict jump to bb40
bb40:
  SW s0, 12(sp)
  FLW fs4, 0(s7)
  LW s0, 12(sp)
  SLLIW s0, s0, 2
  ADD s0, s6, s0
  FLW fs7, 0(s0)
  LB s0, 0(sp)
  BNE s0, zero, bb66
  # implict jump to bb41
bb41:
  LA s0, .CONSTANT.7.6
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.6
  FLW fa0, 0(s0)
  FSGNJN.S fa0, fs1, fa0
  FLT.S s0, fs5, fa0
  # implict jump to bb42
bb42:
  BNE s0, zero, bb65
  # implict jump to bb43
bb43:
  FSGNJ.S fa0, fs5, fs5
  # implict jump to bb44
bb44:
  FSGNJ.S fs1, fa0, fa0
  LA s0, .CONSTANT.7.4
  FLW fa0, 0(s0)
  FLT.S s0, fa0, fs1
  BNE s0, zero, bb64
  # implict jump to bb45
bb45:
  FSGNJ.S fa0, fs1, fs1
  # implict jump to bb46
bb46:
  FSGNJ.S fs8, fa0, fa0
  LA s0, .CONSTANT.7.4
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.4
  FLW fa0, 0(s0)
  FSGNJN.S fs6, fs1, fa0
  FLT.S s0, fs8, fs6
  BNE s0, zero, bb63
  # implict jump to bb47
bb47:
  FSGNJ.S fa0, fs8, fs8
  # implict jump to bb48
bb48:
  CALL my_sin_impl
  FMUL.S fs1, fs7, fa0
  FCVT.S.W fs7, s5
  LA s0, .CONSTANT.7.4
  FLW fa0, 0(s0)
  FDIV.S fs8, fa0, fs7
  FCVT.S.W fs7, s10
  LA s0, .CONSTANT.7.5
  FLW fa0, 0(s0)
  FADD.S fa0, fs7, fa0
  FMUL.S fs7, fs8, fa0
  LW s0, 12(sp)
  FCVT.S.W fa0, s0
  FMUL.S fa0, fs7, fa0
  FADD.S fs8, fa0, fs3
  LA s0, .CONSTANT.7.6
  FLW fa0, 0(s0)
  FLT.S s0, fa0, fs8
  BNE s0, zero, bb62
  # implict jump to bb49
bb49:
  LA s0, .CONSTANT.7.6
  FLW fs7, 0(s0)
  LA s0, .CONSTANT.7.6
  FLW fa0, 0(s0)
  FSGNJN.S fa0, fs7, fa0
  FLT.S s0, fs8, fa0
  # implict jump to bb50
bb50:
  BNE s0, zero, bb61
  # implict jump to bb51
bb51:
  FSGNJ.S fa0, fs8, fs8
  # implict jump to bb52
bb52:
  FSGNJ.S fs7, fa0, fa0
  LA s0, .CONSTANT.7.4
  FLW fa0, 0(s0)
  FLT.S s0, fa0, fs7
  BNE s0, zero, bb60
  # implict jump to bb53
bb53:
  FSGNJ.S fa0, fs7, fs7
  # implict jump to bb54
bb54:
  FSGNJ.S fs7, fa0, fa0
  FLT.S s0, fs7, fs6
  BNE s0, zero, bb59
  # implict jump to bb55
bb55:
  FSGNJ.S fa0, fs7, fs7
  # implict jump to bb56
bb56:
  CALL my_sin_impl
  FSGNJ.D fs6, fa0, fa0
  FMUL.S fs1, fs1, fs6
  FADD.S fs1, fs4, fs1
  FSW fs1, 0(s7)
  LW s0, 12(sp)
  ADDIW s0, s0, 1
  BLT s0, s5, bb58
  # implict jump to bb57
bb57:
  JAL zero, bb36
bb58:
  JAL zero, bb40
bb59:
  LA s0, .CONSTANT.7.6
  FLW fa0, 0(s0)
  FADD.S fa0, fs7, fa0
  JAL zero, bb56
bb60:
  LA s0, .CONSTANT.7.6
  FLW fa0, 0(s0)
  FSUB.S fa0, fs7, fa0
  JAL zero, bb54
bb61:
  LA s0, .CONSTANT.7.6
  FLW fa0, 0(s0)
  FDIV.S fa0, fs8, fa0
  FCVT.W.S s0, fa0, rtz
  FCVT.S.W fs7, s0
  LA s0, .CONSTANT.7.6
  FLW fa0, 0(s0)
  FMUL.S fa0, fs7, fa0
  FSUB.S fa0, fs8, fa0
  JAL zero, bb52
bb62:
  ADDI s0, zero, 1
  JAL zero, bb50
bb63:
  LA s0, .CONSTANT.7.6
  FLW fa0, 0(s0)
  FADD.S fa0, fs8, fa0
  JAL zero, bb48
bb64:
  LA s0, .CONSTANT.7.6
  FLW fa0, 0(s0)
  FSUB.S fa0, fs1, fa0
  JAL zero, bb46
bb65:
  LA s0, .CONSTANT.7.6
  FLW fa0, 0(s0)
  FDIV.S fa0, fs5, fa0
  FCVT.W.S s0, fa0, rtz
  FCVT.S.W fs1, s0
  LA s0, .CONSTANT.7.6
  FLW fa0, 0(s0)
  FMUL.S fa0, fs1, fa0
  FSUB.S fa0, fs5, fa0
  JAL zero, bb44
bb66:
  ADDI s0, zero, 1
  JAL zero, bb42
bb67:
  LA s0, .CONSTANT.7.3
  FLW fs1, 0(s0)
  FDIV.S fs4, fs0, fs1
  ADDI s0, zero, 1
  # implict jump to bb68
bb68:
  ADD s9, s0, zero
  FLW fs1, 0(s7)
  SLLIW s6, s9, 2
  LA s0, test_dct
  ADD s0, s0, s6
  FLW fs3, 0(s0)
  FMUL.S fs3, fs4, fs3
  FADD.S fs1, fs1, fs3
  FSW fs1, 0(s7)
  ADDIW s0, s9, 1
  BLT s0, s5, bb70
  # implict jump to bb69
bb69:
  JAL zero, bb28
bb70:
  JAL zero, bb68
bb71:
  LA s0, .CONSTANT.7.3
  FLW fs1, 0(s0)
  FDIV.S fs1, fs0, fs1
  ADDI s0, zero, 1
  # implict jump to bb72
bb72:
  ADD s6, s0, zero
  FLW fs3, 0(s7)
  SLLIW s1, s6, 5
  LA s0, test_dct
  ADD s0, s0, s1
  FLW fs4, 0(s0)
  FMUL.S fs4, fs1, fs4
  FADD.S fs3, fs3, fs4
  FSW fs3, 0(s7)
  ADDIW s1, s6, 1
  LW s0, 4(sp)
  BLT s1, s0, bb73
  JAL zero, bb26
bb73:
  ADD s0, s1, zero
  JAL zero, bb72
bb74:
  ADDI s1, zero, 1
  ADD s0, zero, zero
  # implict jump to bb75
bb75:
  ADD s4, s0, zero
  SLLIW s2, s4, 5
  LA s0, test_dct
  ADD s0, s0, s2
  FLW fa0, 0(s0)
  CALL putfloat
  BLT s1, s5, bb78
  # implict jump to bb76
bb76:
  ADDI a0, zero, 10
  CALL putch
  ADDIW s2, s4, 1
  LW s0, 4(sp)
  BLT s2, s0, bb77
  JAL zero, bb9
bb77:
  ADD s0, s2, zero
  JAL zero, bb75
bb78:
  ADDI a0, zero, 1
  # implict jump to bb79
bb79:
  ADD s2, a0, zero
  ADDI a0, zero, 32
  CALL putch
  SLLIW s6, s2, 2
  ADD s6, s0, s6
  FLW fa0, 0(s6)
  CALL putfloat
  ADDIW a0, s2, 1
  BLT a0, s5, bb80
  JAL zero, bb76
bb80:
  JAL zero, bb79
bb81:
  ADD s0, zero, zero
  ADD s4, zero, zero
  ADD s1, zero, zero
  # implict jump to bb82
bb82:
  ADD s2, s1, zero
  ADD s1, s4, zero
  ADD s10, s0, zero
  BLT zero, s5, bb86
  # implict jump to bb83
bb83:
  ADD s0, s1, zero
  ADD s1, s2, zero
  # implict jump to bb84
bb84:
  ADD s2, s1, zero
  ADD s4, s0, zero
  ADDIW s1, s10, 1
  LW s0, 4(sp)
  BLT s1, s0, bb85
  JAL zero, bb8
bb85:
  ADD s0, s1, zero
  ADD s1, s2, zero
  JAL zero, bb82
bb86:
  SLLIW s1, s10, 5
  LA s0, test_dct
  ADD s9, s0, s1
  FCVT.S.W fs3, zero
  ADD s0, zero, zero
  ADD s1, s2, zero
  # implict jump to bb87
bb87:
  ADD s8, s0, zero
  SLLIW s0, s8, 2
  ADD s4, s9, s0
  FSW fs3, 0(s4)
  LW s0, 4(sp)
  BLT s3, s0, bb92
  # implict jump to bb88
bb88:
  ADD s0, zero, zero
  # implict jump to bb89
bb89:
  ADDIW s2, s8, 1
  BLT s2, s5, bb91
  # implict jump to bb90
bb90:
  JAL zero, bb84
bb91:
  ADD s0, s2, zero
  JAL zero, bb87
bb92:
  ADD s0, zero, zero
  # implict jump to bb93
bb93:
  ADD s6, s0, zero
  BLT zero, s5, bb98
  # implict jump to bb94
bb94:
  ADD s0, zero, zero
  # implict jump to bb95
bb95:
  ADD s1, s0, zero
  ADDIW s2, s6, 1
  LW s0, 4(sp)
  BLT s2, s0, bb97
  # implict jump to bb96
bb96:
  ADD s0, s2, zero
  JAL zero, bb89
bb97:
  ADD s0, s2, zero
  JAL zero, bb93
bb98:
  SLLIW s1, s6, 5
  LA s0, test_block
  ADD s1, s0, s1
  LW s0, 4(sp)
  FCVT.S.W fs0, s0
  LA s0, .CONSTANT.7.4
  FLW fa0, 0(s0)
  FDIV.S fs1, fa0, fs0
  FCVT.S.W fs0, s6
  LA s0, .CONSTANT.7.5
  FLW fa0, 0(s0)
  FADD.S fa0, fs0, fa0
  FMUL.S fs0, fs1, fa0
  FCVT.S.W fa0, s10
  FMUL.S fs1, fs0, fa0
  ADDI s0, zero, 2
  FCVT.S.W fs0, s0
  LA s0, .CONSTANT.7.4
  FLW fa0, 0(s0)
  FDIV.S fs2, fa0, fs0
  FADD.S fs4, fs1, fs2
  LA s0, .CONSTANT.7.6
  FLW fa0, 0(s0)
  FLT.S s2, fa0, fs4
  ADD s0, zero, zero
  # implict jump to bb99
bb99:
  ADD s7, s0, zero
  FLW fs5, 0(s4)
  SLLIW s0, s7, 2
  ADD s0, s1, s0
  FLW fs1, 0(s0)
  BNE s2, zero, bb125
  # implict jump to bb100
bb100:
  LA s0, .CONSTANT.7.6
  FLW fs0, 0(s0)
  LA s0, .CONSTANT.7.6
  FLW fa0, 0(s0)
  FSGNJN.S fa0, fs0, fa0
  FLT.S s0, fs4, fa0
  # implict jump to bb101
bb101:
  BNE s0, zero, bb124
  # implict jump to bb102
bb102:
  FSGNJ.S fa0, fs4, fs4
  # implict jump to bb103
bb103:
  FSGNJ.S fs0, fa0, fa0
  LA s0, .CONSTANT.7.4
  FLW fa0, 0(s0)
  FLT.S s0, fa0, fs0
  BNE s0, zero, bb123
  # implict jump to bb104
bb104:
  FSGNJ.S fa0, fs0, fs0
  # implict jump to bb105
bb105:
  FSGNJ.S fs7, fa0, fa0
  LA s0, .CONSTANT.7.4
  FLW fs0, 0(s0)
  LA s0, .CONSTANT.7.4
  FLW fa0, 0(s0)
  FSGNJN.S fs6, fs0, fa0
  FLT.S s0, fs7, fs6
  BNE s0, zero, bb122
  # implict jump to bb106
bb106:
  FSGNJ.S fa0, fs7, fs7
  # implict jump to bb107
bb107:
  CALL my_sin_impl
  FMUL.S fs1, fs1, fa0
  FCVT.S.W fs0, s5
  LA s0, .CONSTANT.7.4
  FLW fa0, 0(s0)
  FDIV.S fs7, fa0, fs0
  FCVT.S.W fs0, s7
  LA s0, .CONSTANT.7.5
  FLW fa0, 0(s0)
  FADD.S fa0, fs0, fa0
  FMUL.S fa0, fs7, fa0
  FCVT.S.W fs0, s8
  FMUL.S fa0, fa0, fs0
  FADD.S fs7, fa0, fs2
  LA s0, .CONSTANT.7.6
  FLW fa0, 0(s0)
  FLT.S s0, fa0, fs7
  BNE s0, zero, bb121
  # implict jump to bb108
bb108:
  LA s0, .CONSTANT.7.6
  FLW fs0, 0(s0)
  LA s0, .CONSTANT.7.6
  FLW fa0, 0(s0)
  FSGNJN.S fa0, fs0, fa0
  FLT.S s0, fs7, fa0
  # implict jump to bb109
bb109:
  BNE s0, zero, bb120
  # implict jump to bb110
bb110:
  FSGNJ.S fa0, fs7, fs7
  # implict jump to bb111
bb111:
  FSGNJ.S fs0, fa0, fa0
  LA s0, .CONSTANT.7.4
  FLW fa0, 0(s0)
  FLT.S s0, fa0, fs0
  BNE s0, zero, bb119
  # implict jump to bb112
bb112:
  FSGNJ.S fa0, fs0, fs0
  # implict jump to bb113
bb113:
  FSGNJ.S fs0, fa0, fa0
  FLT.S s0, fs0, fs6
  BNE s0, zero, bb118
  # implict jump to bb114
bb114:
  FSGNJ.S fa0, fs0, fs0
  # implict jump to bb115
bb115:
  CALL my_sin_impl
  FSGNJ.D fs0, fa0, fa0
  FMUL.S fs0, fs1, fs0
  FADD.S fs0, fs5, fs0
  FSW fs0, 0(s4)
  ADDIW s0, s7, 1
  BLT s0, s5, bb117
  # implict jump to bb116
bb116:
  JAL zero, bb95
bb117:
  JAL zero, bb99
bb118:
  LA s0, .CONSTANT.7.6
  FLW fa0, 0(s0)
  FADD.S fa0, fs0, fa0
  JAL zero, bb115
bb119:
  LA s0, .CONSTANT.7.6
  FLW fa0, 0(s0)
  FSUB.S fa0, fs0, fa0
  JAL zero, bb113
bb120:
  LA s0, .CONSTANT.7.6
  FLW fa0, 0(s0)
  FDIV.S fa0, fs7, fa0
  FCVT.W.S s0, fa0, rtz
  FCVT.S.W fs0, s0
  LA s0, .CONSTANT.7.6
  FLW fa0, 0(s0)
  FMUL.S fa0, fs0, fa0
  FSUB.S fa0, fs7, fa0
  JAL zero, bb111
bb121:
  ADDI s0, zero, 1
  JAL zero, bb109
bb122:
  LA s0, .CONSTANT.7.6
  FLW fa0, 0(s0)
  FADD.S fa0, fs7, fa0
  JAL zero, bb107
bb123:
  LA s0, .CONSTANT.7.6
  FLW fa0, 0(s0)
  FSUB.S fa0, fs0, fa0
  JAL zero, bb105
bb124:
  LA s0, .CONSTANT.7.6
  FLW fa0, 0(s0)
  FDIV.S fa0, fs4, fa0
  FCVT.W.S s0, fa0, rtz
  FCVT.S.W fs0, s0
  LA s0, .CONSTANT.7.6
  FLW fa0, 0(s0)
  FMUL.S fa0, fs0, fa0
  FSUB.S fa0, fs4, fa0
  JAL zero, bb103
bb125:
  ADDI s0, zero, 1
  JAL zero, bb101
bb126:
  ADDI s1, zero, 0
  ADD s0, zero, zero
  # implict jump to bb127
bb127:
  ADD s4, s0, zero
  BLT s1, s5, bb130
  # implict jump to bb128
bb128:
  ADDIW s2, s4, 1
  LW s0, 4(sp)
  BLT s2, s0, bb129
  JAL zero, bb7
bb129:
  ADD s0, s2, zero
  JAL zero, bb127
bb130:
  SLLIW s2, s4, 5
  LA s0, test_block
  ADD s6, s0, s2
  ADD s0, zero, zero
  # implict jump to bb131
bb131:
  ADD s2, s0, zero
  SLLIW s0, s2, 2
  ADD s0, s6, s0
  CALL getfloat
  FSGNJ.D fs0, fa0, fa0
  FSW fs0, 0(s0)
  ADDIW s0, s2, 1
  BLT s0, s5, bb132
  JAL zero, bb128
bb132:
  JAL zero, bb131
