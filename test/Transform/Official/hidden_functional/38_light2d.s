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
  ADDI sp, sp, -16
  SD ra, 0(sp)
  CALL write_pgm
  ADD a0, zero, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
write_pgm:
  ADDI sp, sp, -192
  SD ra, 56(sp)
  SD s0, 64(sp)
  SD s1, 72(sp)
  SD s2, 80(sp)
  SD s3, 88(sp)
  SD s4, 96(sp)
  SD s5, 104(sp)
  FSD fs0, 112(sp)
  FSD fs1, 120(sp)
  FSD fs2, 128(sp)
  FSD fs3, 136(sp)
  FSD fs4, 144(sp)
  FSD fs5, 152(sp)
  FSD fs9, 160(sp)
  FSD fs10, 168(sp)
  FSD fs11, 176(sp)
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
  ADD s2, zero, zero
  # implict jump to bb8
bb8:
  FCVT.S.W fa0, s2
  ADDI s0, zero, 192
  FCVT.S.W fs0, s0
  FSW fs0, 16(sp)
  FLW fs0, 16(sp)
  FDIV.S fa0, fa0, fs0
  FSW fa0, 20(sp)
  ADDI s0, zero, 24
  FCVT.S.W fa0, s0
  FSW fa0, 24(sp)
  ADD s3, zero, zero
  # implict jump to bb9
bb9:
  FCVT.S.W fa0, s3
  FLW fs0, 16(sp)
  FDIV.S fa0, fa0, fs0
  FSW fa0, 28(sp)
  LA s0, .CONSTANT.7.2
  FLW fa0, 0(s0)
  LA s0, .CONSTANT.7.2
  FLW fs0, 0(s0)
  FSGNJ.S fs0, fa0, fs0
  ADD s1, zero, zero
  # implict jump to bb10
bb10:
  FSW fs0, 32(sp)
  LA s0, seed
  LW s0, 0(s0)
  LUI s4, 4878
  ADDIW s4, s4, -158
  MULW s0, s0, s4
  LUI s4, 6
  ADDIW s4, s4, -1243
  ADDW s0, s0, s4
  LUI s4, 24414
  ADDIW s4, s4, 263
  REMW s0, s0, s4
  LA s4, seed
  SW s0, 0(s4)
  BLT s0, zero, bb63
  # implict jump to bb11
bb11:
  LA s0, seed
  LW s0, 0(s0)
  FCVT.S.W fa0, s0
  LUI s0, 24414
  ADDIW s0, s0, 262
  FCVT.S.W fs1, s0
  FDIV.S fa0, fa0, fs1
  FCVT.S.W fs1, s1
  FADD.S fa0, fs1, fa0
  LA s0, .CONSTANT.7.7
  FLW fs1, 0(s0)
  FMUL.S fa0, fs1, fa0
  FLW fs0, 24(sp)
  FDIV.S fs1, fa0, fs0
  ADDI s0, zero, 2
  FCVT.S.W fa0, s0
  FSW fa0, 0(sp)
  LA s0, .CONSTANT.7.8
  FLW fa0, 0(s0)
  FLW fs0, 0(sp)
  FDIV.S fa0, fa0, fs0
  FADD.S fa0, fs1, fa0
  LA s0, .CONSTANT.7.7
  FLW fs2, 0(s0)
  FLT.S s0, fs2, fa0
  LA s4, .CONSTANT.7.7
  FLW fs2, 0(s4)
  LA s4, .CONSTANT.7.7
  FLW fs3, 0(s4)
  FSGNJN.S fs2, fs2, fs3
  BNE s0, zero, bb62
  # implict jump to bb12
bb12:
  FLT.S s0, fa0, fs2
  # implict jump to bb13
bb13:
  BNE s0, zero, bb61
  # implict jump to bb14
bb14:
  # implict jump to bb15
bb15:
  LA s0, .CONSTANT.7.8
  FLW fs3, 0(s0)
  FLT.S s0, fs3, fa0
  BNE s0, zero, bb60
  # implict jump to bb16
bb16:
  # implict jump to bb17
bb17:
  LA s0, .CONSTANT.7.8
  FLW fs3, 0(s0)
  LA s0, .CONSTANT.7.8
  FLW fs4, 0(s0)
  FSGNJN.S fs3, fs3, fs4
  FLT.S s0, fa0, fs3
  BNE s0, zero, bb59
  # implict jump to bb18
bb18:
  # implict jump to bb19
bb19:
  CALL my_sin_impl
  FSGNJ.D fs4, fa0, fa0
  LA s0, .CONSTANT.7.7
  FLW fa0, 0(s0)
  FLT.S s0, fa0, fs1
  BNE s0, zero, bb58
  # implict jump to bb20
bb20:
  FLT.S s0, fs1, fs2
  # implict jump to bb21
bb21:
  BNE s0, zero, bb57
  # implict jump to bb22
bb22:
  # implict jump to bb23
bb23:
  LA s0, .CONSTANT.7.8
  FLW fa0, 0(s0)
  FLT.S s0, fa0, fs1
  BNE s0, zero, bb56
  # implict jump to bb24
bb24:
  # implict jump to bb25
bb25:
  FLT.S s0, fs1, fs3
  BNE s0, zero, bb55
  # implict jump to bb26
bb26:
  # implict jump to bb27
bb27:
  FSGNJ.S fa0, fs1, fs1
  CALL my_sin_impl
  FSGNJ.D fs3, fa0, fa0
  ADD s4, zero, zero
  LA s0, .CONSTANT.7.2
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.2
  FLW fs2, 0(s0)
  FSGNJ.S fs2, fs1, fs2
  # implict jump to bb28
bb28:
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
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.2
  FLW fs2, 0(s0)
  FSGNJ.S fs1, fs1, fs2
  # implict jump to bb32
bb32:
  FLW fs0, 32(sp)
  FADD.S fs0, fs0, fs1
  ADDIW s1, s1, 1
  SLTI s0, s1, 24
  BNE s0, zero, bb41
  # implict jump to bb33
bb33:
  FLW fs1, 24(sp)
  FDIV.S fs0, fs0, fs1
  LA a0, .CONSTANT.7.3
  FLW fs1, 0(a0)
  FMUL.S fs0, fs0, fs1
  FCVT.W.S a0, fs0, rtz
  ADDI s0, zero, 255
  BLT s0, a0, bb40
  # implict jump to bb34
bb34:
  # implict jump to bb35
bb35:
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDIW s3, s3, 1
  SLTI s0, s3, 192
  BNE s0, zero, bb39
  # implict jump to bb36
bb36:
  ADDI a0, zero, 10
  CALL putch
  ADDIW s2, s2, 1
  SLTI s0, s2, 192
  BNE s0, zero, bb38
  # implict jump to bb37
bb37:
  LD ra, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
  LD s2, 80(sp)
  LD s3, 88(sp)
  LD s4, 96(sp)
  LD s5, 104(sp)
  FLD fs0, 112(sp)
  FLD fs1, 120(sp)
  FLD fs2, 128(sp)
  FLD fs3, 136(sp)
  FLD fs4, 144(sp)
  FLD fs5, 152(sp)
  FLD fs9, 160(sp)
  FLD fs10, 168(sp)
  FLD fs11, 176(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb38:
  JAL zero, bb8
bb39:
  JAL zero, bb9
bb40:
  ADDI a0, zero, 255
  JAL zero, bb35
bb41:
  JAL zero, bb10
bb42:
  FMUL.S fs1, fs4, fs2
  FLW fs0, 28(sp)
  FADD.S fs9, fs0, fs1
  FMUL.S fs1, fs3, fs2
  FLW fs0, 20(sp)
  FADD.S fs11, fs0, fs1
  LA s0, .CONSTANT.7.4
  FLW fs1, 0(s0)
  FSUB.S fs1, fs9, fs1
  LA s0, .CONSTANT.7.4
  FLW fs10, 0(s0)
  FSUB.S fs10, fs11, fs10
  FMUL.S fs1, fs1, fs1
  FMUL.S fs10, fs10, fs10
  FADD.S fs10, fs1, fs10
  ADDI s0, zero, 8
  FCVT.S.W fs0, s0
  FSW fs0, 48(sp)
  FLW fs0, 48(sp)
  FDIV.S fs1, fs10, fs0
  LA s0, .CONSTANT.7.5
  FLW fs0, 0(s0)
  FSW fs0, 12(sp)
  FLW fs0, 12(sp)
  FADD.S fs1, fs1, fs0
  FLW fs0, 0(sp)
  FMUL.S fs0, fs0, fs10
  FSW fs0, 52(sp)
  ADDI s0, zero, 4
  FCVT.S.W fs0, s0
  FSW fs0, 44(sp)
  FLW fs0, 44(sp)
  FADD.S fs0, fs0, fs10
  FSW fs0, 40(sp)
  FLW fs0, 40(sp)
  FLW fs5, 52(sp)
  FDIV.S fs0, fs5, fs0
  FSW fs0, 36(sp)
  FLW fs0, 36(sp)
  FADD.S fs1, fs1, fs0
  ADDI s0, zero, 10
  # implict jump to bb43
bb43:
  FDIV.S fs0, fs10, fs1
  FSW fs0, 4(sp)
  FLW fs0, 4(sp)
  FADD.S fs1, fs1, fs0
  FLW fs0, 0(sp)
  FDIV.S fs1, fs1, fs0
  ADDI s5, zero, 1
  SUBW s0, s0, s5
  BNE s0, zero, bb53
  # implict jump to bb44
bb44:
  LA s0, .CONSTANT.7.9
  FLW fs10, 0(s0)
  FSUB.S fs10, fs1, fs10
  LA s0, .CONSTANT.7.10
  FLW fs1, 0(s0)
  FSUB.S fs1, fs9, fs1
  LA s0, .CONSTANT.7.10
  FLW fs9, 0(s0)
  FSUB.S fs9, fs11, fs9
  FMUL.S fs1, fs1, fs1
  FMUL.S fs9, fs9, fs9
  FADD.S fs9, fs1, fs9
  FLW fs0, 48(sp)
  FDIV.S fs1, fs9, fs0
  LA s0, .CONSTANT.7.5
  FLW fs11, 0(s0)
  FADD.S fs1, fs1, fs11
  FLW fs0, 0(sp)
  FMUL.S fs11, fs0, fs9
  FLW fs0, 44(sp)
  FADD.S fs0, fs0, fs9
  FSW fs0, 8(sp)
  FLW fs0, 8(sp)
  FDIV.S fs11, fs11, fs0
  FADD.S fs1, fs1, fs11
  ADDI s0, zero, 10
  # implict jump to bb45
bb45:
  FDIV.S fs11, fs9, fs1
  FADD.S fs1, fs1, fs11
  FLW fs0, 0(sp)
  FDIV.S fs1, fs1, fs0
  ADDI s5, zero, 1
  SUBW s0, s0, s5
  BNE s0, zero, bb52
  # implict jump to bb46
bb46:
  LA s0, .CONSTANT.7.11
  FLW fs9, 0(s0)
  FSUB.S fs1, fs1, fs9
  FLT.S s0, fs10, fs1
  BNE s0, zero, bb51
  # implict jump to bb47
bb47:
  FSW fs1, 184(sp)
  LA s0, .CONSTANT.7.2
  FLW fs1, 0(s0)
  FSW fs1, 188(sp)
  # implict jump to bb48
bb48:
  FLW fs1, 184(sp)
  LA s0, .CONSTANT.7.0
  FLW fs9, 0(s0)
  FLT.S s0, fs1, fs9
  BNE s0, zero, bb50
  # implict jump to bb49
bb49:
  FADD.S fs2, fs2, fs1
  ADDIW s4, s4, 1
  JAL zero, bb28
bb50:
  FLW fs1, 188(sp)
  JAL zero, bb32
bb51:
  FSW fs10, 184(sp)
  LA s0, .CONSTANT.7.1
  FLW fs1, 0(s0)
  FSW fs1, 188(sp)
  JAL zero, bb48
bb52:
  JAL zero, bb45
bb53:
  JAL zero, bb43
bb54:
  LA s0, .CONSTANT.7.6
  FLW fs1, 0(s0)
  FLT.S s0, fs2, fs1
  JAL zero, bb30
bb55:
  LA s0, .CONSTANT.7.7
  FLW fs2, 0(s0)
  FADD.S fs1, fs1, fs2
  JAL zero, bb27
bb56:
  LA s0, .CONSTANT.7.7
  FLW fa0, 0(s0)
  FSUB.S fs1, fs1, fa0
  JAL zero, bb25
bb57:
  LA s0, .CONSTANT.7.7
  FLW fa0, 0(s0)
  FDIV.S fa0, fs1, fa0
  FCVT.W.S s0, fa0, rtz
  FCVT.S.W fa0, s0
  LA s0, .CONSTANT.7.7
  FLW fs2, 0(s0)
  FMUL.S fa0, fa0, fs2
  FSUB.S fs1, fs1, fa0
  JAL zero, bb23
bb58:
  ADDI s0, zero, 1
  JAL zero, bb21
bb59:
  LA s0, .CONSTANT.7.7
  FLW fs4, 0(s0)
  FADD.S fa0, fa0, fs4
  JAL zero, bb19
bb60:
  LA s0, .CONSTANT.7.7
  FLW fs3, 0(s0)
  FSUB.S fa0, fa0, fs3
  JAL zero, bb17
bb61:
  LA s0, .CONSTANT.7.7
  FLW fs3, 0(s0)
  FDIV.S fs3, fa0, fs3
  FCVT.W.S s0, fs3, rtz
  FCVT.S.W fs3, s0
  LA s0, .CONSTANT.7.7
  FLW fs4, 0(s0)
  FMUL.S fs3, fs3, fs4
  FSUB.S fa0, fa0, fs3
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
