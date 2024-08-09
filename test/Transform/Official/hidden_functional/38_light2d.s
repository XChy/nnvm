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
.word 0x40490fdb
.CONSTANT.7.4:
.word 0x40c90fdb
.CONSTANT.7.5:
.word 0x40000000
.CONSTANT.7.6:
.word 0x3f19999a
.CONSTANT.7.7:
.word 0x3ecccccd
.CONSTANT.7.8:
.word 0x3f000000
.CONSTANT.7.9:
.word 0x3dcccccd
.CONSTANT.7.10:
.word 0x3d4ccccd
.CONSTANT.7.11:
.word 0x437f0000
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
  ADDI sp, sp, -16
  SD ra, 0(sp)
  CALL write_pgm
  ADD a0, zero, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
write_pgm:   # loop depth 0
  ADDI sp, sp, -352
  FSD fs0, 208(sp)
  FSD fs1, 216(sp)
  FSD fs2, 224(sp)
  FSD fs4, 232(sp)
  FSD fs5, 240(sp)
  FSD fs6, 248(sp)
  FSD fs7, 256(sp)
  SD ra, 264(sp)
  SD s0, 272(sp)
  SD s1, 280(sp)
  SD s2, 288(sp)
  SD s3, 296(sp)
  SD s4, 304(sp)
  SD s5, 312(sp)
  SD s6, 320(sp)
  SD s7, 328(sp)
  ADDI a0, zero, 80
  ADD s1, zero, zero
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
  # implict jump to bb8
bb8:   # loop depth 1
  ADDI s0, zero, 192
  FCVT.S.W fa0, s0
  FSW fa0, 44(sp)
  LA s0, .CONSTANT.7.2
  FCVT.S.W fa0, s1
  LA s2, .CONSTANT.7.2
  FLW fs0, 0(s0)
  LA s0, .CONSTANT.7.3
  FLW fs1, 44(sp)
  FDIV.S fa0, fa0, fs1
  FSW fa0, 48(sp)
  LA s3, .CONSTANT.7.3
  FLW fa0, 0(s2)
  LA s4, .CONSTANT.7.4
  LA s5, .CONSTANT.7.4
  ADDI s2, zero, 24
  FLW fs1, 0(s0)
  FCVT.S.W fs2, s2
  FSW fs2, 52(sp)
  FSGNJ.S fs5, fs0, fa0
  ADD s2, zero, zero
  FLW fa0, 0(s3)
  FLW fs0, 0(s4)
  FSGNJ.S fs6, fs1, fa0
  FLW fa0, 0(s5)
  FSGNJ.S fs7, fs0, fa0
  # implict jump to bb9
bb9:   # loop depth 2
  ADDI s0, zero, 2
  FCVT.S.W fa0, s0
  FSW fa0, 156(sp)
  LUI s0, 24414
  FCVT.S.W fa0, s2
  ADDIW s0, s0, 262
  FLW fs0, 156(sp)
  FDIV.S fs0, fs6, fs0
  FSW fs0, 68(sp)
  FSGNJN.S fs0, fs6, fs6
  FSW fs0, 60(sp)
  FLW fs0, 44(sp)
  FDIV.S fa0, fa0, fs0
  FSW fa0, 56(sp)
  FSGNJN.S fa0, fs7, fs7
  FSW fa0, 108(sp)
  FSGNJ.S fs0, fs5, fs5
  ADD s3, zero, zero
  FCVT.S.W fa0, s0
  FSW fa0, 64(sp)
  # implict jump to bb10
bb10:   # loop depth 3
  LA s0, seed
  LUI s7, 4878
  ADDIW s7, s7, -158
  LUI s4, 6
  LW s0, 0(s0)
  LUI s6, 24414
  ADDIW s4, s4, -1243
  ADDIW s6, s6, 263
  LA s5, seed
  FSW fs0, 140(sp)
  MULW s0, s0, s7
  ADDW s0, s0, s4
  REMW s0, s0, s6
  SW s0, 0(s5)
  BLT s0, zero, bb63
  # implict jump to bb11
bb11:   # loop depth 3
  LA s0, seed
  FCVT.S.W fs1, s3
  LW s0, 0(s0)
  FCVT.S.W fa0, s0
  FLW fs0, 64(sp)
  FDIV.S fa0, fa0, fs0
  FADD.S fa0, fs1, fa0
  FMUL.S fa0, fs7, fa0
  FLW fs0, 52(sp)
  FDIV.S fs1, fa0, fs0
  FLW fa0, 68(sp)
  FADD.S fa0, fs1, fa0
  FLT.S s0, fs7, fa0
  BNE s0, zero, bb62
  # implict jump to bb12
bb12:   # loop depth 3
  FLW fs0, 108(sp)
  FLT.S s0, fa0, fs0
  # implict jump to bb13
bb13:   # loop depth 3
  BNE s0, zero, bb61
  # implict jump to bb14
bb14:   # loop depth 3
  # implict jump to bb15
bb15:   # loop depth 3
  FLT.S s0, fs6, fa0
  BNE s0, zero, bb60
  # implict jump to bb16
bb16:   # loop depth 3
  # implict jump to bb17
bb17:   # loop depth 3
  FLW fs0, 60(sp)
  FLT.S s0, fa0, fs0
  BNE s0, zero, bb59
  # implict jump to bb18
bb18:   # loop depth 3
  # implict jump to bb19
bb19:   # loop depth 3
  FLT.S s0, fs7, fs1
  CALL my_sin_impl
  FSW fa0, 176(sp)
  BNE s0, zero, bb58
  # implict jump to bb20
bb20:   # loop depth 3
  FLW fa0, 108(sp)
  FLT.S s0, fs1, fa0
  # implict jump to bb21
bb21:   # loop depth 3
  BNE s0, zero, bb57
  # implict jump to bb22
bb22:   # loop depth 3
  FSGNJ.S fa0, fs1, fs1
  # implict jump to bb23
bb23:   # loop depth 3
  FLT.S s0, fs6, fa0
  BNE s0, zero, bb56
  # implict jump to bb24
bb24:   # loop depth 3
  # implict jump to bb25
bb25:   # loop depth 3
  FLW fs0, 60(sp)
  FLT.S s0, fa0, fs0
  BNE s0, zero, bb55
  # implict jump to bb26
bb26:   # loop depth 3
  # implict jump to bb27
bb27:   # loop depth 3
  LA s0, .CONSTANT.7.6
  LA s4, .CONSTANT.7.6
  LA s5, .CONSTANT.7.7
  LA s6, .CONSTANT.7.7
  FLW fs2, 0(s0)
  LA s0, .CONSTANT.7.8
  LA s7, .CONSTANT.7.8
  FLW fs0, 0(s4)
  FSW fs0, 172(sp)
  FSGNJ.S fs4, fs5, fs5
  ADD s4, zero, zero
  FLW fs0, 0(s5)
  FSW fs0, 28(sp)
  FLW fs0, 172(sp)
  FSGNJ.S fs0, fs2, fs0
  FSW fs0, 116(sp)
  FLW fs2, 0(s6)
  FLW fs0, 0(s0)
  FSW fs0, 168(sp)
  FLW fs0, 28(sp)
  FSGNJ.S fs0, fs0, fs2
  FSW fs0, 192(sp)
  FLW fs2, 0(s7)
  CALL my_sin_impl
  FLW fs0, 168(sp)
  FSGNJ.S fs0, fs0, fs2
  FSW fs0, 188(sp)
  FSGNJ.D fs0, fa0, fa0
  FSW fs0, 184(sp)
  # implict jump to bb28
bb28:   # loop depth 4
  SLTI s0, s4, 10
  BNE s0, zero, bb54
  # implict jump to bb29
bb29:   # loop depth 4
  ADD s0, zero, zero
  # implict jump to bb30
bb30:   # loop depth 4
  BNE s0, zero, bb42
  # implict jump to bb31
bb31:   # loop depth 3
  FSGNJ.S fs1, fs5, fs5
  # implict jump to bb32
bb32:   # loop depth 3
  ADDIW s3, s3, 1
  SLTI s0, s3, 24
  FLW fs0, 140(sp)
  FADD.S fs0, fs0, fs1
  BNE s0, zero, bb41
  # implict jump to bb33
bb33:   # loop depth 2
  FLW fs1, 52(sp)
  FDIV.S fs0, fs0, fs1
  LA a0, .CONSTANT.7.11
  ADDI s0, zero, 255
  FLW fs1, 0(a0)
  FMUL.S fs0, fs0, fs1
  FCVT.W.S a0, fs0, rtz
  BLT s0, a0, bb40
  # implict jump to bb34
bb34:   # loop depth 2
  # implict jump to bb35
bb35:   # loop depth 2
  ADDIW s2, s2, 1
  SLTI s0, s2, 192
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  BNE s0, zero, bb39
  # implict jump to bb36
bb36:   # loop depth 1
  ADDI a0, zero, 10
  ADDIW s1, s1, 1
  SLTI s0, s1, 192
  CALL putch
  BNE s0, zero, bb38
  # implict jump to bb37
bb37:   # loop depth 0
  FLD fs0, 208(sp)
  FLD fs1, 216(sp)
  FLD fs2, 224(sp)
  FLD fs4, 232(sp)
  FLD fs5, 240(sp)
  FLD fs6, 248(sp)
  FLD fs7, 256(sp)
  LD ra, 264(sp)
  LD s0, 272(sp)
  LD s1, 280(sp)
  LD s2, 288(sp)
  LD s3, 296(sp)
  LD s4, 304(sp)
  LD s5, 312(sp)
  LD s6, 320(sp)
  LD s7, 328(sp)
  ADDI sp, sp, 352
  JALR zero, 0(ra)
bb38:   # loop depth 1
  JAL zero, bb8
bb39:   # loop depth 2
  JAL zero, bb9
bb40:   # loop depth 2
  ADDI a0, zero, 255
  JAL zero, bb35
bb41:   # loop depth 3
  JAL zero, bb10
bb42:   # loop depth 4
  FLW fs0, 176(sp)
  FMUL.S fs1, fs0, fs4
  ADDI s0, zero, 8
  FLW fs0, 184(sp)
  FMUL.S fs0, fs0, fs4
  FSW fs0, 76(sp)
  ADDI s5, zero, 4
  FCVT.S.W fs0, s0
  FSW fs0, 96(sp)
  ADDI s0, zero, 10
  FCVT.S.W fs0, s5
  FSW fs0, 104(sp)
  FLW fs0, 56(sp)
  FADD.S fs0, fs0, fs1
  FSW fs0, 164(sp)
  FLW fs0, 48(sp)
  FLW fs1, 76(sp)
  FADD.S fs0, fs0, fs1
  FSW fs0, 80(sp)
  FLW fs0, 192(sp)
  FLW fs1, 164(sp)
  FSUB.S fs1, fs1, fs0
  FLW fs0, 192(sp)
  FLW fs2, 80(sp)
  FSUB.S fs0, fs2, fs0
  FSW fs0, 84(sp)
  FMUL.S fs1, fs1, fs1
  FLW fs0, 84(sp)
  FLW fs2, 84(sp)
  FMUL.S fs0, fs0, fs2
  FSW fs0, 88(sp)
  FLW fs0, 88(sp)
  FADD.S fs0, fs1, fs0
  FSW fs0, 92(sp)
  FLW fs0, 92(sp)
  FLW fs1, 156(sp)
  FMUL.S fs0, fs1, fs0
  FSW fs0, 100(sp)
  FLW fs0, 96(sp)
  FLW fs1, 92(sp)
  FDIV.S fs0, fs1, fs0
  FSW fs0, 204(sp)
  FLW fs0, 104(sp)
  FLW fs1, 92(sp)
  FADD.S fs0, fs0, fs1
  FSW fs0, 200(sp)
  FLW fs0, 200(sp)
  FLW fs1, 100(sp)
  FDIV.S fs0, fs1, fs0
  FSW fs0, 196(sp)
  FLW fs0, 188(sp)
  FLW fs1, 204(sp)
  FADD.S fs1, fs1, fs0
  FLW fs0, 196(sp)
  FADD.S fs1, fs1, fs0
  # implict jump to bb43
bb43:   # loop depth 5
  ADDIW s0, s0, -1
  FLW fs0, 92(sp)
  FDIV.S fs0, fs0, fs1
  FSW fs0, 180(sp)
  FLW fs0, 180(sp)
  FADD.S fs1, fs1, fs0
  FLW fs0, 156(sp)
  FDIV.S fs1, fs1, fs0
  BNE s0, zero, bb53
  # implict jump to bb44
bb44:   # loop depth 4
  FLW fs0, 116(sp)
  FLW fs2, 164(sp)
  FSUB.S fs0, fs2, fs0
  FSW fs0, 36(sp)
  LA s5, .CONSTANT.7.9
  FLW fs0, 116(sp)
  FLW fs2, 80(sp)
  FSUB.S fs0, fs2, fs0
  FSW fs0, 4(sp)
  ADDI s0, zero, 10
  FLW fs0, 0(s5)
  FSW fs0, 0(sp)
  FLW fs0, 0(sp)
  FSUB.S fs0, fs1, fs0
  FSW fs0, 136(sp)
  FLW fs0, 36(sp)
  FLW fs1, 36(sp)
  FMUL.S fs1, fs0, fs1
  FLW fs0, 4(sp)
  FLW fs2, 4(sp)
  FMUL.S fs0, fs0, fs2
  FSW fs0, 8(sp)
  FLW fs0, 8(sp)
  FADD.S fs0, fs1, fs0
  FSW fs0, 12(sp)
  FLW fs0, 12(sp)
  FLW fs1, 156(sp)
  FMUL.S fs0, fs1, fs0
  FSW fs0, 16(sp)
  FLW fs0, 12(sp)
  FLW fs1, 96(sp)
  FDIV.S fs1, fs0, fs1
  FLW fs0, 12(sp)
  FLW fs2, 104(sp)
  FADD.S fs0, fs2, fs0
  FSW fs0, 20(sp)
  FLW fs0, 20(sp)
  FLW fs2, 16(sp)
  FDIV.S fs0, fs2, fs0
  FSW fs0, 24(sp)
  FLW fs0, 188(sp)
  FADD.S fs1, fs1, fs0
  FLW fs0, 24(sp)
  FADD.S fs1, fs1, fs0
  # implict jump to bb45
bb45:   # loop depth 5
  ADDIW s0, s0, -1
  FLW fs0, 12(sp)
  FDIV.S fs0, fs0, fs1
  FSW fs0, 132(sp)
  FLW fs0, 132(sp)
  FADD.S fs1, fs1, fs0
  FLW fs0, 156(sp)
  FDIV.S fs1, fs1, fs0
  BNE s0, zero, bb52
  # implict jump to bb46
bb46:   # loop depth 4
  LA s0, .CONSTANT.7.10
  FLW fs0, 0(s0)
  FSW fs0, 40(sp)
  FLW fs0, 40(sp)
  FSUB.S fs1, fs1, fs0
  FLW fs0, 136(sp)
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb51
  # implict jump to bb47
bb47:   # loop depth 4
  FSW fs1, 336(sp)
  FSW fs5, 340(sp)
  # implict jump to bb48
bb48:   # loop depth 4
  FLW fs1, 336(sp)
  LA s0, .CONSTANT.7.0
  FLW fs0, 0(s0)
  FSW fs0, 32(sp)
  FLW fs0, 32(sp)
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb50
  # implict jump to bb49
bb49:   # loop depth 4
  FADD.S fs4, fs4, fs1
  ADDIW s4, s4, 1
  JAL zero, bb28
bb50:   # loop depth 3
  FLW fs1, 340(sp)
  JAL zero, bb32
bb51:   # loop depth 4
  FLW fs0, 136(sp)
  FSW fs0, 336(sp)
  LA s0, .CONSTANT.7.1
  FLW fs1, 0(s0)
  FSW fs1, 340(sp)
  JAL zero, bb48
bb52:   # loop depth 5
  JAL zero, bb45
bb53:   # loop depth 5
  JAL zero, bb43
bb54:   # loop depth 4
  LA s0, .CONSTANT.7.5
  FLW fs1, 0(s0)
  FLT.S s0, fs4, fs1
  JAL zero, bb30
bb55:   # loop depth 3
  FADD.S fa0, fa0, fs7
  JAL zero, bb27
bb56:   # loop depth 3
  FSUB.S fa0, fa0, fs7
  JAL zero, bb25
bb57:   # loop depth 3
  FDIV.S fa0, fs1, fs7
  FCVT.W.S s0, fa0, rtz
  FCVT.S.W fa0, s0
  FMUL.S fa0, fa0, fs7
  FSUB.S fa0, fs1, fa0
  JAL zero, bb23
bb58:   # loop depth 3
  ADDI s0, zero, 1
  JAL zero, bb21
bb59:   # loop depth 3
  FADD.S fa0, fa0, fs7
  JAL zero, bb19
bb60:   # loop depth 3
  FSUB.S fa0, fa0, fs7
  JAL zero, bb17
bb61:   # loop depth 3
  FDIV.S fs2, fa0, fs7
  FCVT.W.S s0, fs2, rtz
  FCVT.S.W fs2, s0
  FMUL.S fs2, fs2, fs7
  FSUB.S fa0, fa0, fs2
  JAL zero, bb15
bb62:   # loop depth 3
  ADDI s0, zero, 1
  JAL zero, bb13
bb63:   # loop depth 3
  LA s0, seed
  LUI s4, 24414
  LA s5, seed
  ADDIW s4, s4, 263
  LW s0, 0(s0)
  ADDW s0, s0, s4
  SW s0, 0(s5)
  JAL zero, bb11
