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
  FSGNJ.D fs1, fa0, fa0
  ADDI s0, zero, 0
  FCVT.S.W fa0, s0
  FLT.S s0, fa0, fs1
  BNE s0, zero, bb5
  # implict jump to bb1
bb1:
  FSGNJN.S fa0, fs1, fs1
  # implict jump to bb2
bb2:
  LA s0, .CONSTANT.7.0
  FLW fs0, 0(s0)
  FLE.S s0, fa0, fs0
  BNE s0, zero, bb4
  # implict jump to bb3
bb3:
  LA s0, .CONSTANT.7.1
  FLW fa0, 0(s0)
  FDIV.S fa0, fs1, fa0
  CALL my_sin_impl
  FSGNJ.D ft1, fa0, fa0
  ADDI t0, zero, 3
  FCVT.S.W ft0, t0
  FMUL.S ft2, ft0, ft1
  ADDI t0, zero, 4
  FCVT.S.W ft0, t0
  FMUL.S ft0, ft0, ft1
  FMUL.S ft0, ft0, ft1
  FMUL.S ft0, ft0, ft1
  FSUB.S ft0, ft2, ft0
  FSGNJ.S fa0, ft0, ft0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb4:
  FSGNJ.S fa0, fs1, fs1
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb5:
  FSGNJ.S fa0, fs1, fs1
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
  ADDI sp, sp, -192
  SD s2, 40(sp)
  SD ra, 48(sp)
  SD s0, 56(sp)
  SD s1, 64(sp)
  SD s3, 72(sp)
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
  ADD s1, s0, zero
  FCVT.S.W fa0, s1
  ADDI s0, zero, 192
  FCVT.S.W fs10, s0
  FDIV.S fa0, fa0, fs10
  FSW fa0, 36(sp)
  ADD s0, zero, zero
  # implict jump to bb9
bb9:
  ADD s2, s0, zero
  FCVT.S.W fa0, s2
  FDIV.S fs3, fa0, fs10
  LA s0, .CONSTANT.7.2
  FLW fa0, 0(s0)
  LA s0, .CONSTANT.7.2
  FLW fs0, 0(s0)
  FSGNJ.S fa0, fa0, fs0
  ADD s0, zero, zero
  # implict jump to bb10
bb10:
  ADD s3, s0, zero
  FSW fa0, 8(sp)
  LA s0, seed
  LW s4, 0(s0)
  LUI s0, 4878
  ADDIW s0, s0, -158
  MULW s4, s4, s0
  LUI s0, 6
  ADDIW s0, s0, -1243
  ADDW s4, s4, s0
  LUI s0, 24414
  ADDIW s0, s0, 263
  REMW s4, s4, s0
  LA s0, seed
  SW s4, 0(s0)
  BLT s4, zero, bb63
  # implict jump to bb11
bb11:
  LA s0, seed
  LW s0, 0(s0)
  FCVT.S.W fs0, s0
  LUI s0, 24414
  ADDIW s0, s0, 262
  FCVT.S.W fa0, s0
  FDIV.S fs0, fs0, fa0
  FCVT.S.W fa0, s3
  FADD.S fs0, fa0, fs0
  LA s0, .CONSTANT.7.7
  FLW fa0, 0(s0)
  FMUL.S fs0, fa0, fs0
  ADDI s0, zero, 24
  FCVT.S.W fa0, s0
  FSW fa0, 20(sp)
  FLW fa0, 20(sp)
  FDIV.S fs4, fs0, fa0
  ADDI s0, zero, 2
  FCVT.S.W fa0, s0
  FSW fa0, 24(sp)
  LA s0, .CONSTANT.7.8
  FLW fs0, 0(s0)
  FLW fa0, 24(sp)
  FDIV.S fa0, fs0, fa0
  FADD.S fs1, fs4, fa0
  LA s0, .CONSTANT.7.7
  FLW fa0, 0(s0)
  FLT.S s0, fa0, fs1
  BNE s0, zero, bb62
  # implict jump to bb12
bb12:
  LA s0, .CONSTANT.7.7
  FLW fs0, 0(s0)
  LA s0, .CONSTANT.7.7
  FLW fa0, 0(s0)
  FSGNJN.S fa0, fs0, fa0
  FLT.S s0, fs1, fa0
  # implict jump to bb13
bb13:
  BNE s0, zero, bb61
  # implict jump to bb14
bb14:
  FSGNJ.S fa0, fs1, fs1
  # implict jump to bb15
bb15:
  FSGNJ.S fs0, fa0, fa0
  LA s0, .CONSTANT.7.8
  FLW fa0, 0(s0)
  FLT.S s0, fa0, fs0
  BNE s0, zero, bb60
  # implict jump to bb16
bb16:
  FSGNJ.S fa0, fs0, fs0
  # implict jump to bb17
bb17:
  FSGNJ.S fs0, fa0, fa0
  LA s0, .CONSTANT.7.8
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.8
  FLW fa0, 0(s0)
  FSGNJN.S fs1, fs1, fa0
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb59
  # implict jump to bb18
bb18:
  FSGNJ.S fa0, fs0, fs0
  # implict jump to bb19
bb19:
  CALL my_sin_impl
  FSGNJ.D fs2, fa0, fa0
  LA s0, .CONSTANT.7.7
  FLW fa0, 0(s0)
  FLT.S s0, fa0, fs4
  BNE s0, zero, bb58
  # implict jump to bb20
bb20:
  LA s0, .CONSTANT.7.7
  FLW fa0, 0(s0)
  LA s0, .CONSTANT.7.7
  FLW fs0, 0(s0)
  FSGNJN.S fa0, fa0, fs0
  FLT.S s0, fs4, fa0
  # implict jump to bb21
bb21:
  BNE s0, zero, bb57
  # implict jump to bb22
bb22:
  FSGNJ.S fa0, fs4, fs4
  # implict jump to bb23
bb23:
  FSGNJ.S fs0, fa0, fa0
  LA s0, .CONSTANT.7.8
  FLW fa0, 0(s0)
  FLT.S s0, fa0, fs0
  BNE s0, zero, bb56
  # implict jump to bb24
bb24:
  FSGNJ.S fa0, fs0, fs0
  # implict jump to bb25
bb25:
  FSGNJ.S fs0, fa0, fa0
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb55
  # implict jump to bb26
bb26:
  FSGNJ.S fa0, fs0, fs0
  # implict jump to bb27
bb27:
  CALL my_sin_impl
  FSGNJ.D fs8, fa0, fa0
  ADD s4, zero, zero
  LA s0, .CONSTANT.7.2
  FLW fs0, 0(s0)
  LA s0, .CONSTANT.7.2
  FLW fs1, 0(s0)
  FSGNJ.S fs0, fs0, fs1
  # implict jump to bb28
bb28:
  FSW fs0, 12(sp)
  SLTI s0, s4, 10
  BNE s0, zero, bb54
  # implict jump to bb29
bb29:
  ADD s0, zero, zero
  # implict jump to bb30
bb30:
  BNE s0, zero, bb42
  # implict jump to bb31
bb31:
  LA s0, .CONSTANT.7.2
  FLW fs0, 0(s0)
  LA s0, .CONSTANT.7.2
  FLW fs1, 0(s0)
  FSGNJ.S fs0, fs0, fs1
  # implict jump to bb32
bb32:
  FSGNJ.S fs1, fs0, fs0
  FLW fs0, 8(sp)
  FADD.S fs1, fs0, fs1
  ADDIW s3, s3, 1
  SLTI s0, s3, 24
  BNE s0, zero, bb41
  # implict jump to bb33
bb33:
  FLW fs0, 20(sp)
  FDIV.S fs1, fs1, fs0
  LA a0, .CONSTANT.7.3
  FLW fs0, 0(a0)
  FMUL.S fs0, fs1, fs0
  FCVT.W.S s0, fs0, rtz
  ADDI a0, zero, 255
  BLT a0, s0, bb40
  # implict jump to bb34
bb34:
  ADD a0, s0, zero
  # implict jump to bb35
bb35:
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDIW s0, s2, 1
  SLTI s2, s0, 192
  BNE s2, zero, bb39
  # implict jump to bb36
bb36:
  ADDI a0, zero, 10
  CALL putch
  ADDIW s1, s1, 1
  SLTI s0, s1, 192
  BNE s0, zero, bb38
  # implict jump to bb37
bb37:
  LD s2, 40(sp)
  LD ra, 48(sp)
  LD s0, 56(sp)
  LD s1, 64(sp)
  LD s3, 72(sp)
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
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb38:
  ADD s0, s1, zero
  JAL zero, bb8
bb39:
  JAL zero, bb9
bb40:
  ADDI a0, zero, 255
  JAL zero, bb35
bb41:
  FSGNJ.S fa0, fs1, fs1
  ADD s0, s3, zero
  JAL zero, bb10
bb42:
  FLW fs0, 12(sp)
  FMUL.S fs0, fs2, fs0
  FADD.S fs7, fs3, fs0
  FLW fs0, 12(sp)
  FMUL.S fs1, fs8, fs0
  FLW fs0, 36(sp)
  FADD.S fs9, fs0, fs1
  LA s0, .CONSTANT.7.4
  FLW fs0, 0(s0)
  FSUB.S fs0, fs7, fs0
  LA s0, .CONSTANT.7.4
  FLW fs1, 0(s0)
  FSUB.S fs4, fs9, fs1
  FMUL.S fs1, fs0, fs0
  FMUL.S fs0, fs4, fs4
  FADD.S fs0, fs1, fs0
  FSW fs0, 16(sp)
  ADDI s0, zero, 8
  FCVT.S.W fs6, s0
  FLW fs0, 16(sp)
  FDIV.S fs1, fs0, fs6
  LA s0, .CONSTANT.7.5
  FLW fs0, 0(s0)
  FADD.S fs5, fs1, fs0
  FLW fs0, 24(sp)
  FLW fs1, 16(sp)
  FMUL.S fs1, fs0, fs1
  ADDI s0, zero, 4
  FCVT.S.W fs4, s0
  FLW fs0, 16(sp)
  FADD.S fs0, fs4, fs0
  FDIV.S fs0, fs1, fs0
  FADD.S fs0, fs5, fs0
  ADDI s0, zero, 10
  # implict jump to bb43
bb43:
  ADD s5, s0, zero
  FSGNJ.S fs1, fs0, fs0
  FLW fs0, 16(sp)
  FDIV.S fs0, fs0, fs1
  FADD.S fs1, fs1, fs0
  FLW fs0, 24(sp)
  FDIV.S fs1, fs1, fs0
  ADDI s0, zero, 1
  SUBW s0, s5, s0
  BNE s0, zero, bb53
  # implict jump to bb44
bb44:
  LA s0, .CONSTANT.7.9
  FLW fs0, 0(s0)
  FSUB.S fs5, fs1, fs0
  LA s0, .CONSTANT.7.10
  FLW fs0, 0(s0)
  FSUB.S fs7, fs7, fs0
  LA s0, .CONSTANT.7.10
  FLW fs0, 0(s0)
  FSUB.S fs1, fs9, fs0
  FMUL.S fs0, fs7, fs7
  FMUL.S fs1, fs1, fs1
  FADD.S fs7, fs0, fs1
  FDIV.S fs1, fs7, fs6
  LA s0, .CONSTANT.7.5
  FLW fs0, 0(s0)
  FADD.S fs1, fs1, fs0
  FLW fs0, 24(sp)
  FMUL.S fs0, fs0, fs7
  FADD.S fs4, fs4, fs7
  FDIV.S fs0, fs0, fs4
  FADD.S fs0, fs1, fs0
  ADDI s0, zero, 10
  # implict jump to bb45
bb45:
  ADD s5, s0, zero
  FDIV.S fs1, fs7, fs0
  FADD.S fs1, fs0, fs1
  FLW fs0, 24(sp)
  FDIV.S fs0, fs1, fs0
  ADDI s0, zero, 1
  SUBW s0, s5, s0
  BNE s0, zero, bb52
  # implict jump to bb46
bb46:
  LA s0, .CONSTANT.7.11
  FLW fs1, 0(s0)
  FSUB.S fs0, fs0, fs1
  FLT.S s0, fs5, fs0
  BNE s0, zero, bb51
  # implict jump to bb47
bb47:
  FSW fs0, 184(sp)
  LA s0, .CONSTANT.7.2
  FLW fs0, 0(s0)
  FSW fs0, 188(sp)
  # implict jump to bb48
bb48:
  FLW fs1, 184(sp)
  LA s0, .CONSTANT.7.0
  FLW fs0, 0(s0)
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb50
  # implict jump to bb49
bb49:
  FLW fs0, 12(sp)
  FADD.S fs0, fs0, fs1
  ADDIW s0, s4, 1
  ADD s4, s0, zero
  JAL zero, bb28
bb50:
  FLW fs0, 188(sp)
  JAL zero, bb32
bb51:
  FSW fs5, 184(sp)
  LA s0, .CONSTANT.7.1
  FLW fs0, 0(s0)
  FSW fs0, 188(sp)
  JAL zero, bb48
bb52:
  JAL zero, bb45
bb53:
  FSGNJ.S fs0, fs1, fs1
  JAL zero, bb43
bb54:
  LA s0, .CONSTANT.7.6
  FLW fs1, 0(s0)
  FLW fs0, 12(sp)
  FLT.S s0, fs0, fs1
  JAL zero, bb30
bb55:
  LA s0, .CONSTANT.7.7
  FLW fa0, 0(s0)
  FADD.S fa0, fs0, fa0
  JAL zero, bb27
bb56:
  LA s0, .CONSTANT.7.7
  FLW fa0, 0(s0)
  FSUB.S fa0, fs0, fa0
  JAL zero, bb25
bb57:
  LA s0, .CONSTANT.7.7
  FLW fa0, 0(s0)
  FDIV.S fa0, fs4, fa0
  FCVT.W.S s0, fa0, rtz
  FCVT.S.W fs0, s0
  LA s0, .CONSTANT.7.7
  FLW fa0, 0(s0)
  FMUL.S fa0, fs0, fa0
  FSUB.S fa0, fs4, fa0
  JAL zero, bb23
bb58:
  ADDI s0, zero, 1
  JAL zero, bb21
bb59:
  LA s0, .CONSTANT.7.7
  FLW fa0, 0(s0)
  FADD.S fa0, fs0, fa0
  JAL zero, bb19
bb60:
  LA s0, .CONSTANT.7.7
  FLW fa0, 0(s0)
  FSUB.S fa0, fs0, fa0
  JAL zero, bb17
bb61:
  LA s0, .CONSTANT.7.7
  FLW fa0, 0(s0)
  FDIV.S fa0, fs1, fa0
  FCVT.W.S s0, fa0, rtz
  FCVT.S.W fa0, s0
  LA s0, .CONSTANT.7.7
  FLW fs0, 0(s0)
  FMUL.S fa0, fa0, fs0
  FSUB.S fa0, fs1, fa0
  JAL zero, bb15
bb62:
  ADDI s0, zero, 1
  JAL zero, bb13
bb63:
  LA s0, seed
  LW s0, 0(s0)
  LUI s4, 24414
  ADDIW s4, s4, 263
  ADDW s0, s0, s4
  LA s4, seed
  SW s0, 0(s4)
  JAL zero, bb11
