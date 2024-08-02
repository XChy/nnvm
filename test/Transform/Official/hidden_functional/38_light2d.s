.global my_sin_impl
.global main
.global write_pgm
.section .bss













.section .data
seed:
.word 0x00000000
.CONSTANT.7.0:
.word 0x358637bd
.CONSTANT.7.1:
.word 0x40400000
.CONSTANT.7.2:
.word 0x00000000
.CONSTANT.7.3:
.word 0x437f0000
.CONSTANT.7.4:
.word 0x3ecccccd
.CONSTANT.7.5:
.word 0x3f000000
.CONSTANT.7.6:
.word 0x40000000
.CONSTANT.7.7:
.word 0x40c90fdb
.CONSTANT.7.8:
.word 0x40490fdb
.CONSTANT.7.9:
.word 0x3dcccccd
.CONSTANT.7.10:
.word 0x3f19999a
.CONSTANT.7.11:
.word 0x3d4ccccd
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
  LA s0, .CONSTANT.7.0
  FLW fs1, 0(s0)
  FLE.S s0, fa0, fs1
  BNE s0, zero, bb4
  # implict jump to bb3
bb3:
  LA s0, .CONSTANT.7.1
  FLW fa0, 0(s0)
  FDIV.S fa0, fs0, fa0
  CALL my_sin_impl
  FSGNJ.D ft0, fa0, fa0
  ADDI t0, zero, 3
  FCVT.S.W ft1, t0
  FMUL.S ft1, ft1, ft0
  ADDI t0, zero, 4
  FCVT.S.W ft2, t0
  FMUL.S ft2, ft2, ft0
  FMUL.S ft2, ft2, ft0
  FMUL.S ft0, ft2, ft0
  FSUB.S ft0, ft1, ft0
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
  ADDI sp, sp, -16
  SD ra, 0(sp)
  CALL write_pgm
  ADD a0, zero, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
write_pgm:
  ADDI sp, sp, -208
  SD s3, 40(sp)
  SD ra, 48(sp)
  SD s0, 56(sp)
  SD s1, 64(sp)
  SD s2, 72(sp)
  SD s4, 80(sp)
  SD s5, 88(sp)
  FSD fs0, 96(sp)
  FSD fs1, 104(sp)
  FSD fs2, 112(sp)
  FSD fs3, 120(sp)
  FSD fs4, 128(sp)
  FSD fs5, 136(sp)
  FSD fs6, 144(sp)
  FSD fs7, 152(sp)
  FSD fs8, 160(sp)
  FSD fs9, 168(sp)
  FSD fs10, 176(sp)
  FSD fs11, 184(sp)
  ADDI a0, zero, 80
  CALL putch
  ADDI a0, zero, 50
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  ADDI a0, zero, 192
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDI a0, zero, 192
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDI a0, zero, 255
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD s0, zero, zero
  # implict jump to bb8
bb8:
  FCVT.S.W fa0, s0
  ADDI s1, zero, 192
  FCVT.S.W fs0, s1
  FDIV.S fs1, fa0, fs0
  ADD s1, zero, zero
  # implict jump to bb9
bb9:
  FCVT.S.W fa0, s1
  FDIV.S fs2, fa0, fs0
  LA s2, .CONSTANT.7.2
  FLW fa0, 0(s2)
  LA s2, .CONSTANT.7.2
  FLW fs3, 0(s2)
  FSGNJ.S fa0, fa0, fs3
  ADD s2, zero, zero
  # implict jump to bb10
bb10:
  FSW fa0, 28(sp)
  LA s3, seed
  LW s3, 0(s3)
  LUI s4, 4878
  ADDIW s4, s4, -158
  MULW s3, s3, s4
  LUI s4, 6
  ADDIW s4, s4, -1243
  ADDW s3, s3, s4
  LUI s4, 24414
  ADDIW s4, s4, 263
  REMW s3, s3, s4
  LA s4, seed
  SW s3, 0(s4)
  BLT s3, zero, bb63
  # implict jump to bb11
bb11:
  LA s3, seed
  LW s3, 0(s3)
  FCVT.S.W fa0, s3
  LUI s3, 24414
  ADDIW s3, s3, 262
  FCVT.S.W fs4, s3
  FDIV.S fa0, fa0, fs4
  FCVT.S.W fs4, s2
  FADD.S fa0, fs4, fa0
  LA s3, .CONSTANT.7.7
  FLW fs4, 0(s3)
  FMUL.S fa0, fs4, fa0
  ADDI s3, zero, 24
  FCVT.S.W fs3, s3
  FSW fs3, 0(sp)
  FLW fs3, 0(sp)
  FDIV.S fs4, fa0, fs3
  ADDI s3, zero, 2
  FCVT.S.W fa0, s3
  FSW fa0, 24(sp)
  LA s3, .CONSTANT.7.8
  FLW fa0, 0(s3)
  FLW fs3, 24(sp)
  FDIV.S fa0, fa0, fs3
  FADD.S fa0, fs4, fa0
  LA s3, .CONSTANT.7.7
  FLW fs5, 0(s3)
  FLT.S s3, fs5, fa0
  BNE s3, zero, bb62
  # implict jump to bb12
bb12:
  LA s3, .CONSTANT.7.7
  FLW fs5, 0(s3)
  LA s3, .CONSTANT.7.7
  FLW fs6, 0(s3)
  FSGNJN.S fs5, fs5, fs6
  FLT.S s3, fa0, fs5
  # implict jump to bb13
bb13:
  BNE s3, zero, bb61
  # implict jump to bb14
bb14:
  # implict jump to bb15
bb15:
  LA s3, .CONSTANT.7.8
  FLW fs5, 0(s3)
  FLT.S s3, fs5, fa0
  BNE s3, zero, bb60
  # implict jump to bb16
bb16:
  # implict jump to bb17
bb17:
  LA s3, .CONSTANT.7.8
  FLW fs5, 0(s3)
  LA s3, .CONSTANT.7.8
  FLW fs6, 0(s3)
  FSGNJN.S fs5, fs5, fs6
  FLT.S s3, fa0, fs5
  BNE s3, zero, bb59
  # implict jump to bb18
bb18:
  # implict jump to bb19
bb19:
  CALL my_sin_impl
  FSW fa0, 32(sp)
  LA s3, .CONSTANT.7.7
  FLW fa0, 0(s3)
  FLT.S s3, fa0, fs4
  BNE s3, zero, bb58
  # implict jump to bb20
bb20:
  LA s3, .CONSTANT.7.7
  FLW fa0, 0(s3)
  LA s3, .CONSTANT.7.7
  FLW fs6, 0(s3)
  FSGNJN.S fa0, fa0, fs6
  FLT.S s3, fs4, fa0
  # implict jump to bb21
bb21:
  BNE s3, zero, bb57
  # implict jump to bb22
bb22:
  FSGNJ.S fa0, fs4, fs4
  # implict jump to bb23
bb23:
  LA s3, .CONSTANT.7.8
  FLW fs4, 0(s3)
  FLT.S s3, fs4, fa0
  BNE s3, zero, bb56
  # implict jump to bb24
bb24:
  # implict jump to bb25
bb25:
  FLT.S s3, fa0, fs5
  BNE s3, zero, bb55
  # implict jump to bb26
bb26:
  # implict jump to bb27
bb27:
  CALL my_sin_impl
  FSGNJ.D fs3, fa0, fa0
  FSW fs3, 36(sp)
  ADD s3, zero, zero
  LA s4, .CONSTANT.7.2
  FLW fs4, 0(s4)
  LA s4, .CONSTANT.7.2
  FLW fs5, 0(s4)
  FSGNJ.S fs4, fs4, fs5
  # implict jump to bb28
bb28:
  FSGNJ.S fs3, fs4, fs4
  FSW fs3, 12(sp)
  SLTI s4, s3, 10
  BNE s4, zero, bb54
  # implict jump to bb29
bb29:
  ADD s4, zero, zero
  # implict jump to bb30
bb30:
  BNE s4, zero, bb42
  # implict jump to bb31
bb31:
  LA s3, .CONSTANT.7.2
  FLW fs4, 0(s3)
  LA s3, .CONSTANT.7.2
  FLW fs5, 0(s3)
  FSGNJ.S fs4, fs4, fs5
  # implict jump to bb32
bb32:
  FLW fs3, 28(sp)
  FADD.S fs3, fs3, fs4
  ADDIW s2, s2, 1
  SLTI s3, s2, 24
  BNE s3, zero, bb41
  # implict jump to bb33
bb33:
  FLW fs2, 0(sp)
  FDIV.S fs2, fs3, fs2
  LA a0, .CONSTANT.7.3
  FLW fs3, 0(a0)
  FMUL.S fs2, fs2, fs3
  FCVT.W.S a0, fs2, rtz
  ADDI s2, zero, 255
  BLT s2, a0, bb40
  # implict jump to bb34
bb34:
  # implict jump to bb35
bb35:
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDIW s1, s1, 1
  SLTI s2, s1, 192
  BNE s2, zero, bb39
  # implict jump to bb36
bb36:
  ADDI a0, zero, 10
  CALL putch
  ADDIW s0, s0, 1
  SLTI s1, s0, 192
  BNE s1, zero, bb38
  # implict jump to bb37
bb37:
  LD s3, 40(sp)
  LD ra, 48(sp)
  LD s0, 56(sp)
  LD s1, 64(sp)
  LD s2, 72(sp)
  LD s4, 80(sp)
  LD s5, 88(sp)
  FLD fs0, 96(sp)
  FLD fs1, 104(sp)
  FLD fs2, 112(sp)
  FLD fs3, 120(sp)
  FLD fs4, 128(sp)
  FLD fs5, 136(sp)
  FLD fs6, 144(sp)
  FLD fs7, 152(sp)
  FLD fs8, 160(sp)
  FLD fs9, 168(sp)
  FLD fs10, 176(sp)
  FLD fs11, 184(sp)
  ADDI sp, sp, 208
  JALR zero, 0(ra)
bb38:
  JAL zero, bb8
bb39:
  JAL zero, bb9
bb40:
  ADDI a0, zero, 255
  JAL zero, bb35
bb41:
  FSGNJ.S fa0, fs3, fs3
  JAL zero, bb10
bb42:
  FLW fs3, 12(sp)
  FLW fs4, 32(sp)
  FMUL.S fs5, fs4, fs3
  FADD.S fs5, fs2, fs5
  FLW fs3, 12(sp)
  FLW fs4, 36(sp)
  FMUL.S fs6, fs4, fs3
  FADD.S fs6, fs1, fs6
  LA s4, .CONSTANT.7.4
  FLW fs7, 0(s4)
  FSUB.S fs7, fs5, fs7
  LA s4, .CONSTANT.7.4
  FLW fs8, 0(s4)
  FSUB.S fs8, fs6, fs8
  FMUL.S fs7, fs7, fs7
  FMUL.S fs8, fs8, fs8
  FADD.S fs3, fs7, fs8
  FSW fs3, 20(sp)
  ADDI s4, zero, 8
  FCVT.S.W fs8, s4
  FLW fs3, 20(sp)
  FDIV.S fs9, fs3, fs8
  LA s4, .CONSTANT.7.5
  FLW fs10, 0(s4)
  FADD.S fs9, fs9, fs10
  FLW fs3, 24(sp)
  FLW fs4, 20(sp)
  FMUL.S fs10, fs3, fs4
  ADDI s4, zero, 4
  FCVT.S.W fs11, s4
  FLW fs3, 20(sp)
  FADD.S fs3, fs11, fs3
  FSW fs3, 16(sp)
  FLW fs3, 16(sp)
  FDIV.S fs10, fs10, fs3
  FADD.S fs9, fs9, fs10
  ADDI s4, zero, 10
  # implict jump to bb43
bb43:
  FLW fs3, 20(sp)
  FDIV.S fs10, fs3, fs9
  FADD.S fs9, fs9, fs10
  FLW fs3, 24(sp)
  FDIV.S fs9, fs9, fs3
  ADDI s5, zero, 1
  SUBW s4, s4, s5
  BNE s4, zero, bb53
  # implict jump to bb44
bb44:
  LA s4, .CONSTANT.7.9
  FLW fs7, 0(s4)
  FSUB.S fs7, fs9, fs7
  LA s4, .CONSTANT.7.10
  FLW fs9, 0(s4)
  FSUB.S fs5, fs5, fs9
  LA s4, .CONSTANT.7.10
  FLW fs9, 0(s4)
  FSUB.S fs6, fs6, fs9
  FMUL.S fs5, fs5, fs5
  FMUL.S fs6, fs6, fs6
  FADD.S fs5, fs5, fs6
  FDIV.S fs6, fs5, fs8
  LA s4, .CONSTANT.7.5
  FLW fs8, 0(s4)
  FADD.S fs6, fs6, fs8
  FLW fs3, 24(sp)
  FMUL.S fs8, fs3, fs5
  FADD.S fs9, fs11, fs5
  FDIV.S fs8, fs8, fs9
  FADD.S fs6, fs6, fs8
  ADDI s4, zero, 10
  # implict jump to bb45
bb45:
  FDIV.S fs8, fs5, fs6
  FADD.S fs6, fs6, fs8
  FLW fs3, 24(sp)
  FDIV.S fs6, fs6, fs3
  ADDI s5, zero, 1
  SUBW s4, s4, s5
  BNE s4, zero, bb52
  # implict jump to bb46
bb46:
  LA s4, .CONSTANT.7.11
  FLW fs5, 0(s4)
  FSUB.S fs5, fs6, fs5
  FLT.S s4, fs7, fs5
  BNE s4, zero, bb51
  # implict jump to bb47
bb47:
  FSW fs5, 192(sp)
  LA s4, .CONSTANT.7.2
  FLW fs5, 0(s4)
  FSW fs5, 196(sp)
  # implict jump to bb48
bb48:
  FLW fs5, 192(sp)
  LA s4, .CONSTANT.7.0
  FLW fs6, 0(s4)
  FLT.S s4, fs5, fs6
  BNE s4, zero, bb50
  # implict jump to bb49
bb49:
  FLW fs3, 12(sp)
  FADD.S fs4, fs3, fs5
  ADDIW s3, s3, 1
  JAL zero, bb28
bb50:
  FLW fs4, 196(sp)
  JAL zero, bb32
bb51:
  FSW fs7, 192(sp)
  LA s4, .CONSTANT.7.1
  FLW fs5, 0(s4)
  FSW fs5, 196(sp)
  JAL zero, bb48
bb52:
  JAL zero, bb45
bb53:
  JAL zero, bb43
bb54:
  LA s4, .CONSTANT.7.6
  FLW fs5, 0(s4)
  FLW fs3, 12(sp)
  FLT.S s4, fs3, fs5
  JAL zero, bb30
bb55:
  LA s3, .CONSTANT.7.7
  FLW fs4, 0(s3)
  FADD.S fa0, fa0, fs4
  JAL zero, bb27
bb56:
  LA s3, .CONSTANT.7.7
  FLW fs4, 0(s3)
  FSUB.S fa0, fa0, fs4
  JAL zero, bb25
bb57:
  LA s3, .CONSTANT.7.7
  FLW fa0, 0(s3)
  FDIV.S fa0, fs4, fa0
  FCVT.W.S s3, fa0, rtz
  FCVT.S.W fa0, s3
  LA s3, .CONSTANT.7.7
  FLW fs6, 0(s3)
  FMUL.S fa0, fa0, fs6
  FSUB.S fa0, fs4, fa0
  JAL zero, bb23
bb58:
  ADDI s3, zero, 1
  JAL zero, bb21
bb59:
  LA s3, .CONSTANT.7.7
  FLW fs6, 0(s3)
  FADD.S fa0, fa0, fs6
  JAL zero, bb19
bb60:
  LA s3, .CONSTANT.7.7
  FLW fs5, 0(s3)
  FSUB.S fa0, fa0, fs5
  JAL zero, bb17
bb61:
  LA s3, .CONSTANT.7.7
  FLW fs5, 0(s3)
  FDIV.S fs5, fa0, fs5
  FCVT.W.S s3, fs5, rtz
  FCVT.S.W fs5, s3
  LA s3, .CONSTANT.7.7
  FLW fs6, 0(s3)
  FMUL.S fs5, fs5, fs6
  FSUB.S fa0, fa0, fs5
  JAL zero, bb15
bb62:
  ADDI s3, zero, 1
  JAL zero, bb13
bb63:
  LA s3, seed
  LW s3, 0(s3)
  LUI s4, 24414
  ADDIW s4, s4, 263
  ADDW s3, s3, s4
  LA s4, seed
  SW s3, 0(s4)
  JAL zero, bb11
