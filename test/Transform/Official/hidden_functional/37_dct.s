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
.word 0x40000000
.CONSTANT.7.3:
.word 0x40800000
.CONSTANT.7.4:
.word 0x3f000000
.CONSTANT.7.5:
.word 0x40c90fdb
.CONSTANT.7.6:
.word 0x40490fdb
.section .text
my_sin_impl:   # loop depth 0
  ADDI sp, sp, -32
  SD ra, 0(sp)
  FSD fs0, 8(sp)
  FSD fs1, 16(sp)
  ADDI t0, zero, 0
  FCVT.S.W ft1, t0
  FSGNJN.S ft0, fa0, fa0
  FLT.S t0, ft1, fa0
  BNE t0, zero, bb5
  # implict jump to bb1
bb1:   # loop depth 0
  # implict jump to bb2
bb2:   # loop depth 0
  LA t0, .CONSTANT.7.0
  FLW ft1, 0(t0)
  FLE.S t0, ft0, ft1
  BNE t0, zero, bb4
  # implict jump to bb3
bb3:   # loop depth 0
  LA t0, .CONSTANT.7.1
  ADDI t1, zero, 4
  FCVT.S.W fs1, t1
  ADDI t1, zero, 3
  FLW ft0, 0(t0)
  FCVT.S.W fs0, t1
  FDIV.S fa0, fa0, ft0
  CALL my_sin_impl
  FMUL.S ft1, fs1, fa0
  FMUL.S ft0, fs0, fa0
  FMUL.S ft1, ft1, fa0
  FMUL.S ft1, ft1, fa0
  FSUB.S fa0, ft0, ft1
  LD ra, 0(sp)
  FLD fs0, 8(sp)
  FLD fs1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb4:   # loop depth 0
  LD ra, 0(sp)
  FLD fs0, 8(sp)
  FLD fs1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb5:   # loop depth 0
  FSGNJ.S ft0, fa0, fa0
  JAL zero, bb2
main:   # loop depth 0
  ADDI sp, sp, -288
  SD s9, 96(sp)
  SD ra, 104(sp)
  SD s0, 112(sp)
  SD s1, 120(sp)
  SD s2, 128(sp)
  SD s3, 136(sp)
  SD s4, 144(sp)
  SD s5, 152(sp)
  SD s6, 160(sp)
  SD s7, 168(sp)
  SD s8, 176(sp)
  SD s10, 184(sp)
  FSD fs0, 192(sp)
  FSD fs1, 200(sp)
  FSD fs4, 208(sp)
  FSD fs6, 216(sp)
  FSD fs8, 224(sp)
  FSD fs9, 232(sp)
  FSD fs10, 240(sp)
  FSD fs11, 248(sp)
  LA s10, test_block
  CALL getint
  ADD s5, a0, zero
  ADDI t0, zero, 0
  SW t0, 52(sp)
  CALL getint
  ADD s4, a0, zero
  LW t0, 52(sp)
  BLT t0, s5, bb115
  # implict jump to bb7
bb7:   # loop depth 0
  LA t0, .CONSTANT.7.4
  LA t1, .CONSTANT.7.4
  LA t2, .CONSTANT.7.5
  LA a0, .CONSTANT.7.5
  FLW ft0, 0(t0)
  LA t0, .CONSTANT.7.6
  LA a1, .CONSTANT.7.6
  ADDI a2, zero, 2
  FLW ft1, 0(t1)
  FCVT.S.W ft2, s4
  FSW ft2, 20(sp)
  FCVT.S.W ft2, a2
  FSW ft2, 16(sp)
  LA t1, test_dct
  SD t1, 256(sp)
  FLW ft2, 0(t2)
  FCVT.S.W ft3, s5
  FSW ft3, 12(sp)
  FSGNJ.S ft0, ft0, ft1
  FSW ft0, 88(sp)
  FLW ft0, 0(a0)
  FLW ft1, 0(t0)
  FSGNJ.S ft0, ft2, ft0
  FSW ft0, 80(sp)
  FLW ft0, 0(a1)
  FLW ft2, 80(sp)
  FLW ft3, 80(sp)
  FSGNJN.S ft2, ft2, ft3
  FSW ft2, 68(sp)
  FSGNJ.S ft0, ft1, ft0
  FSW ft0, 76(sp)
  FLW ft0, 76(sp)
  FLW ft1, 76(sp)
  FSGNJN.S ft0, ft0, ft1
  FSW ft0, 64(sp)
  LW t0, 52(sp)
  BLT t0, s5, bb76
  # implict jump to bb8
bb8:   # loop depth 0
  LW t0, 52(sp)
  BLT t0, s5, bb69
  # implict jump to bb9
bb9:   # loop depth 0
  ADDI a0, zero, 10
  LA t0, test_idct
  SD t0, 264(sp)
  CALL putch
  LW t0, 52(sp)
  BLT t0, s5, bb19
  # implict jump to bb10
bb10:   # loop depth 0
  LW t0, 52(sp)
  BLT t0, s5, bb12
  # implict jump to bb11
bb11:   # loop depth 0
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD s9, 96(sp)
  LD ra, 104(sp)
  LD s0, 112(sp)
  LD s1, 120(sp)
  LD s2, 128(sp)
  LD s3, 136(sp)
  LD s4, 144(sp)
  LD s5, 152(sp)
  LD s6, 160(sp)
  LD s7, 168(sp)
  LD s8, 176(sp)
  LD s10, 184(sp)
  FLD fs0, 192(sp)
  FLD fs1, 200(sp)
  FLD fs4, 208(sp)
  FLD fs6, 216(sp)
  FLD fs8, 224(sp)
  FLD fs9, 232(sp)
  FLD fs10, 240(sp)
  FLD fs11, 248(sp)
  ADDI sp, sp, 288
  JALR zero, 0(ra)
bb12:   # loop depth 0
  ADD s1, zero, zero
  ADDI s6, zero, 1
  # implict jump to bb13
bb13:   # loop depth 1
  SLLIW t0, s1, 5
  LD t1, 264(sp)
  ADD s2, t1, t0
  FLW fa0, 0(s2)
  CALL putfloat
  BLT s6, s4, bb16
  # implict jump to bb14
bb14:   # loop depth 1
  ADDI a0, zero, 10
  ADDIW s1, s1, 1
  CALL putch
  BLT s1, s5, bb15
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
  BLT s0, s4, bb18
  JAL zero, bb14
bb18:   # loop depth 2
  JAL zero, bb17
bb19:   # loop depth 0
  LA t0, .CONSTANT.7.2
  LA t2, .CONSTANT.7.2
  LA a0, .CONSTANT.7.3
  ADDI t1, zero, 1
  FLW ft1, 0(t0)
  FCVT.S.W ft0, t1
  FLW ft2, 20(sp)
  FLW ft3, 76(sp)
  FDIV.S ft2, ft3, ft2
  FSW ft2, 44(sp)
  ADD s0, zero, zero
  FLW ft2, 0(t2)
  FLW ft3, 16(sp)
  FLW ft4, 76(sp)
  FDIV.S fs6, ft4, ft3
  FLW ft3, 12(sp)
  FLW ft4, 76(sp)
  FDIV.S ft3, ft4, ft3
  FSW ft3, 48(sp)
  ADD s1, zero, zero
  FLW ft3, 0(a0)
  FSGNJ.S ft1, ft1, ft2
  FSW ft1, 60(sp)
  ADD s3, zero, zero
  ADDI s10, zero, 1
  FLW ft1, 60(sp)
  FDIV.S fs4, ft0, ft1
  FDIV.S ft0, ft0, ft3
  FSW ft0, 56(sp)
  # implict jump to bb20
bb20:   # loop depth 1
  BLT zero, s4, bb24
  # implict jump to bb21
bb21:   # loop depth 1
  # implict jump to bb22
bb22:   # loop depth 1
  ADDIW s3, s3, 1
  BLT s3, s5, bb23
  JAL zero, bb10
bb23:   # loop depth 1
  JAL zero, bb20
bb24:   # loop depth 1
  FCVT.S.W ft0, s3
  SLLIW t0, s3, 5
  ADD s2, zero, zero
  LD t2, 264(sp)
  ADD t0, t2, t0
  SD t0, 272(sp)
  FLW ft1, 88(sp)
  FADD.S ft0, ft0, ft1
  FLW ft1, 48(sp)
  FMUL.S ft0, ft1, ft0
  FSW ft0, 4(sp)
  # implict jump to bb25
bb25:   # loop depth 2
  LD t0, 256(sp)
  FLW ft0, 0(t0)
  LD t0, 272(sp)
  SH2ADD s7, s2, t0
  FLW ft1, 56(sp)
  FMUL.S ft0, ft1, ft0
  FSW ft0, 0(s7)
  BLT s10, s5, bb65
  # implict jump to bb26
bb26:   # loop depth 2
  ADDI t0, zero, 1
  SW t0, 0(sp)
  LW t0, 0(sp)
  BLT t0, s4, bb61
  # implict jump to bb27
bb27:   # loop depth 2
  ADDI s0, zero, 1
  # implict jump to bb28
bb28:   # loop depth 2
  BLT s10, s5, bb33
  # implict jump to bb29
bb29:   # loop depth 2
  ADDI s1, zero, 1
  # implict jump to bb30
bb30:   # loop depth 2
  FLW ft0, 0(s7)
  ADDIW s2, s2, 1
  FLW ft1, 60(sp)
  FMUL.S ft0, ft0, ft1
  FLW ft1, 12(sp)
  FDIV.S ft0, ft0, ft1
  FLW ft1, 60(sp)
  FMUL.S ft0, ft0, ft1
  FLW ft1, 20(sp)
  FDIV.S ft0, ft0, ft1
  FSW ft0, 0(s7)
  BLT s2, s4, bb32
  # implict jump to bb31
bb31:   # loop depth 2
  ADDIW s3, s3, 1
  BLT s3, s5, bb23
  JAL zero, bb10
bb32:   # loop depth 2
  JAL zero, bb25
bb33:   # loop depth 2
  FCVT.S.W ft0, s2
  ADDI s1, zero, 1
  FLW ft1, 88(sp)
  FADD.S ft0, ft0, ft1
  FLW ft1, 44(sp)
  FMUL.S ft0, ft1, ft0
  FSW ft0, 8(sp)
  # implict jump to bb34
bb34:   # loop depth 3
  LW t0, 0(sp)
  BLT t0, s4, bb39
  # implict jump to bb35
bb35:   # loop depth 3
  ADDI s0, zero, 1
  # implict jump to bb36
bb36:   # loop depth 3
  ADDIW s1, s1, 1
  BLT s1, s5, bb38
  # implict jump to bb37
bb37:   # loop depth 3
  JAL zero, bb30
bb38:   # loop depth 3
  JAL zero, bb34
bb39:   # loop depth 3
  FCVT.S.W ft0, s1
  SLLIW t1, s1, 5
  ADDI s0, zero, 1
  LD t0, 256(sp)
  ADD s8, t0, t1
  FLW ft1, 4(sp)
  FMUL.S ft0, ft1, ft0
  FADD.S fs0, ft0, fs6
  FLW ft0, 80(sp)
  FDIV.S ft0, fs0, ft0
  FLW ft1, 68(sp)
  FLT.S t2, fs0, ft1
  FLW ft1, 80(sp)
  FLT.S t1, ft1, fs0
  OR s9, t1, t2
  FCVT.W.S t1, ft0, rtz
  FCVT.S.W ft0, t1
  FLW ft1, 80(sp)
  FMUL.S ft0, ft0, ft1
  FSUB.S fs1, fs0, ft0
  # implict jump to bb40
bb40:   # loop depth 4
  FLW fs10, 0(s7)
  SH2ADD t0, s0, s8
  FLW fs11, 0(t0)
  BNE s9, zero, bb60
  # implict jump to bb41
bb41:   # loop depth 4
  FSGNJ.S ft2, fs0, fs0
  # implict jump to bb42
bb42:   # loop depth 4
  FLW ft0, 80(sp)
  FSUB.S ft1, ft2, ft0
  FLW ft0, 76(sp)
  FLT.S t0, ft0, ft2
  BNE t0, zero, bb59
  # implict jump to bb43
bb43:   # loop depth 4
  FSGNJ.S ft1, ft2, ft2
  # implict jump to bb44
bb44:   # loop depth 4
  FLW ft0, 80(sp)
  FADD.S fa0, ft1, ft0
  FLW ft0, 64(sp)
  FLT.S t0, ft1, ft0
  BNE t0, zero, bb58
  # implict jump to bb45
bb45:   # loop depth 4
  FSGNJ.S fa0, ft1, ft1
  # implict jump to bb46
bb46:   # loop depth 4
  FCVT.S.W ft1, s0
  FLW ft0, 8(sp)
  FMUL.S ft0, ft0, ft1
  FSW ft0, 92(sp)
  CALL my_sin_impl
  FLW ft0, 92(sp)
  FADD.S ft1, ft0, fs6
  FMUL.S fs11, fs11, fa0
  FLW ft0, 68(sp)
  FLT.S t1, ft1, ft0
  FLW ft0, 80(sp)
  FLT.S t0, ft0, ft1
  OR t0, t0, t1
  BNE t0, zero, bb57
  # implict jump to bb47
bb47:   # loop depth 4
  # implict jump to bb48
bb48:   # loop depth 4
  FLW ft0, 80(sp)
  FSUB.S ft2, ft1, ft0
  FLW ft0, 76(sp)
  FLT.S t0, ft0, ft1
  BNE t0, zero, bb56
  # implict jump to bb49
bb49:   # loop depth 4
  # implict jump to bb50
bb50:   # loop depth 4
  FLW ft0, 80(sp)
  FADD.S ft2, ft1, ft0
  FLW ft0, 64(sp)
  FLT.S t0, ft1, ft0
  BNE t0, zero, bb55
  # implict jump to bb51
bb51:   # loop depth 4
  # implict jump to bb52
bb52:   # loop depth 4
  ADDIW s0, s0, 1
  FSGNJ.S fa0, ft1, ft1
  CALL my_sin_impl
  FMUL.S ft0, fs11, fa0
  FADD.S ft0, fs10, ft0
  FSW ft0, 0(s7)
  BLT s0, s4, bb54
  # implict jump to bb53
bb53:   # loop depth 4
  JAL zero, bb36
bb54:   # loop depth 4
  JAL zero, bb40
bb55:   # loop depth 4
  FSGNJ.S ft1, ft2, ft2
  JAL zero, bb52
bb56:   # loop depth 4
  FSGNJ.S ft1, ft2, ft2
  JAL zero, bb50
bb57:   # loop depth 4
  FLW ft0, 80(sp)
  FDIV.S ft0, ft1, ft0
  FCVT.W.S t0, ft0, rtz
  FCVT.S.W ft0, t0
  FLW ft2, 80(sp)
  FMUL.S ft0, ft0, ft2
  FSUB.S ft1, ft1, ft0
  JAL zero, bb48
bb58:   # loop depth 4
  JAL zero, bb46
bb59:   # loop depth 4
  JAL zero, bb44
bb60:   # loop depth 4
  FSGNJ.S ft2, fs1, fs1
  JAL zero, bb42
bb61:   # loop depth 2
  FLW ft0, 0(s7)
  ADDI s0, zero, 1
  # implict jump to bb62
bb62:   # loop depth 3
  LD t0, 256(sp)
  SH2ADD t1, s0, t0
  ADDIW s0, s0, 1
  FLW ft1, 0(t1)
  FMUL.S ft1, fs4, ft1
  FADD.S ft0, ft0, ft1
  BLT s0, s4, bb64
  # implict jump to bb63
bb63:   # loop depth 2
  FSW ft0, 0(s7)
  JAL zero, bb28
bb64:   # loop depth 3
  JAL zero, bb62
bb65:   # loop depth 2
  ADDI t0, zero, 1
  # implict jump to bb66
bb66:   # loop depth 3
  SLLIW t1, t0, 5
  ADDIW t0, t0, 1
  LD t2, 256(sp)
  ADD t1, t2, t1
  FLW ft1, 0(t1)
  FMUL.S ft1, fs4, ft1
  FADD.S ft0, ft0, ft1
  BLT t0, s5, bb68
  # implict jump to bb67
bb67:   # loop depth 2
  FSW ft0, 0(s7)
  JAL zero, bb26
bb68:   # loop depth 3
  JAL zero, bb66
bb69:   # loop depth 0
  ADD s1, zero, zero
  ADDI s6, zero, 1
  # implict jump to bb70
bb70:   # loop depth 1
  SLLIW t0, s1, 5
  LD t1, 256(sp)
  ADD s2, t1, t0
  FLW fa0, 0(s2)
  CALL putfloat
  BLT s6, s4, bb73
  # implict jump to bb71
bb71:   # loop depth 1
  ADDI a0, zero, 10
  ADDIW s1, s1, 1
  CALL putch
  BLT s1, s5, bb72
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
  BLT s0, s4, bb75
  JAL zero, bb71
bb75:   # loop depth 2
  JAL zero, bb74
bb76:   # loop depth 0
  FCVT.S.W ft0, zero
  FSW ft0, 24(sp)
  ADD s0, zero, zero
  ADD s1, zero, zero
  ADD s3, zero, zero
  # implict jump to bb77
bb77:   # loop depth 1
  BLT zero, s4, bb81
  # implict jump to bb78
bb78:   # loop depth 1
  # implict jump to bb79
bb79:   # loop depth 1
  ADDIW s3, s3, 1
  BLT s3, s5, bb80
  JAL zero, bb8
bb80:   # loop depth 1
  JAL zero, bb77
bb81:   # loop depth 1
  FLW ft0, 20(sp)
  FLW ft1, 76(sp)
  FDIV.S ft0, ft1, ft0
  FSW ft0, 36(sp)
  SLLIW t1, s3, 5
  FLW ft0, 16(sp)
  FLW ft1, 76(sp)
  FDIV.S fs6, ft1, ft0
  FLW ft0, 12(sp)
  FLW ft1, 76(sp)
  FDIV.S ft0, ft1, ft0
  FSW ft0, 28(sp)
  ADD s2, zero, zero
  FCVT.S.W ft0, s3
  FSW ft0, 32(sp)
  LD t0, 256(sp)
  ADD s6, t0, t1
  # implict jump to bb82
bb82:   # loop depth 2
  SH2ADD s7, s2, s6
  FLW ft0, 24(sp)
  FSW ft0, 0(s7)
  LW t0, 52(sp)
  BLT t0, s5, bb87
  # implict jump to bb83
bb83:   # loop depth 2
  ADD s1, zero, zero
  # implict jump to bb84
bb84:   # loop depth 2
  ADDIW s2, s2, 1
  BLT s2, s4, bb86
  # implict jump to bb85
bb85:   # loop depth 2
  ADDIW s3, s3, 1
  BLT s3, s5, bb80
  JAL zero, bb8
bb86:   # loop depth 2
  JAL zero, bb82
bb87:   # loop depth 2
  FCVT.S.W fs8, s2
  ADD s1, zero, zero
  # implict jump to bb88
bb88:   # loop depth 3
  BLT zero, s4, bb93
  # implict jump to bb89
bb89:   # loop depth 3
  ADD s0, zero, zero
  # implict jump to bb90
bb90:   # loop depth 3
  ADDIW s1, s1, 1
  BLT s1, s5, bb92
  # implict jump to bb91
bb91:   # loop depth 3
  JAL zero, bb84
bb92:   # loop depth 3
  JAL zero, bb88
bb93:   # loop depth 3
  FCVT.S.W ft0, s1
  SLLIW t1, s1, 5
  ADD s0, zero, zero
  ADD s8, s10, t1
  FLW ft1, 88(sp)
  FADD.S ft0, ft0, ft1
  FLW ft1, 28(sp)
  FMUL.S ft0, ft1, ft0
  FLW ft1, 32(sp)
  FMUL.S ft0, ft0, ft1
  FADD.S fs0, ft0, fs6
  FLW ft0, 80(sp)
  FDIV.S ft0, fs0, ft0
  FLW ft1, 68(sp)
  FLT.S t2, fs0, ft1
  FLW ft1, 80(sp)
  FLT.S t1, ft1, fs0
  OR s9, t1, t2
  FCVT.W.S t1, ft0, rtz
  FCVT.S.W ft0, t1
  FLW ft1, 80(sp)
  FMUL.S ft0, ft0, ft1
  FSUB.S fs1, fs0, ft0
  # implict jump to bb94
bb94:   # loop depth 4
  FLW fs9, 0(s7)
  SH2ADD t0, s0, s8
  FLW fs10, 0(t0)
  BNE s9, zero, bb114
  # implict jump to bb95
bb95:   # loop depth 4
  FSGNJ.S ft2, fs0, fs0
  # implict jump to bb96
bb96:   # loop depth 4
  FLW ft0, 80(sp)
  FSUB.S ft1, ft2, ft0
  FLW ft0, 76(sp)
  FLT.S t0, ft0, ft2
  BNE t0, zero, bb113
  # implict jump to bb97
bb97:   # loop depth 4
  FSGNJ.S ft1, ft2, ft2
  # implict jump to bb98
bb98:   # loop depth 4
  FLW ft0, 80(sp)
  FADD.S fa0, ft1, ft0
  FLW ft0, 64(sp)
  FLT.S t0, ft1, ft0
  BNE t0, zero, bb112
  # implict jump to bb99
bb99:   # loop depth 4
  FSGNJ.S fa0, ft1, ft1
  # implict jump to bb100
bb100:   # loop depth 4
  FCVT.S.W ft1, s0
  FLW ft0, 88(sp)
  FADD.S fs11, ft1, ft0
  CALL my_sin_impl
  FLW ft0, 36(sp)
  FMUL.S ft1, ft0, fs11
  FMUL.S fs10, fs10, fa0
  FMUL.S ft0, ft1, fs8
  FADD.S ft1, ft0, fs6
  FLW ft0, 68(sp)
  FLT.S t1, ft1, ft0
  FLW ft0, 80(sp)
  FLT.S t0, ft0, ft1
  OR t0, t0, t1
  BNE t0, zero, bb111
  # implict jump to bb101
bb101:   # loop depth 4
  # implict jump to bb102
bb102:   # loop depth 4
  FLW ft0, 80(sp)
  FSUB.S fa0, ft1, ft0
  FLW ft0, 76(sp)
  FLT.S t0, ft0, ft1
  BNE t0, zero, bb110
  # implict jump to bb103
bb103:   # loop depth 4
  FSGNJ.S fa0, ft1, ft1
  # implict jump to bb104
bb104:   # loop depth 4
  FLW ft0, 80(sp)
  FADD.S ft1, fa0, ft0
  FLW ft0, 64(sp)
  FLT.S t0, fa0, ft0
  BNE t0, zero, bb109
  # implict jump to bb105
bb105:   # loop depth 4
  # implict jump to bb106
bb106:   # loop depth 4
  ADDIW s0, s0, 1
  CALL my_sin_impl
  FMUL.S ft0, fs10, fa0
  FADD.S ft0, fs9, ft0
  FSW ft0, 0(s7)
  BLT s0, s4, bb108
  # implict jump to bb107
bb107:   # loop depth 4
  JAL zero, bb90
bb108:   # loop depth 4
  JAL zero, bb94
bb109:   # loop depth 4
  FSGNJ.S fa0, ft1, ft1
  JAL zero, bb106
bb110:   # loop depth 4
  JAL zero, bb104
bb111:   # loop depth 4
  FLW ft0, 80(sp)
  FDIV.S ft2, ft1, ft0
  FCVT.W.S t0, ft2, rtz
  FCVT.S.W ft2, t0
  FLW ft0, 80(sp)
  FMUL.S ft2, ft2, ft0
  FSUB.S ft1, ft1, ft2
  JAL zero, bb102
bb112:   # loop depth 4
  JAL zero, bb100
bb113:   # loop depth 4
  JAL zero, bb98
bb114:   # loop depth 4
  FSGNJ.S ft2, fs1, fs1
  JAL zero, bb96
bb115:   # loop depth 0
  ADD s1, zero, zero
  # implict jump to bb116
bb116:   # loop depth 1
  ADDI t1, zero, 0
  BLT t1, s4, bb119
  # implict jump to bb117
bb117:   # loop depth 1
  ADDIW s1, s1, 1
  BLT s1, s5, bb118
  JAL zero, bb7
bb118:   # loop depth 1
  JAL zero, bb116
bb119:   # loop depth 1
  SLLIW t1, s1, 5
  ADD s0, zero, zero
  ADD s2, s10, t1
  # implict jump to bb120
bb120:   # loop depth 2
  CALL getfloat
  SH2ADD t0, s0, s2
  FSW fa0, 0(t0)
  ADDIW s0, s0, 1
  BLT s0, s4, bb121
  ADDIW s1, s1, 1
  BLT s1, s5, bb118
  JAL zero, bb7
bb121:   # loop depth 2
  JAL zero, bb120
