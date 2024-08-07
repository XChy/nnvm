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
.word 0x40490fdb
.CONSTANT.7.3:
.word 0x40c90fdb
.CONSTANT.7.4:
.word 0x00000000
.CONSTANT.7.5:
.word 0x3ecccccd
.CONSTANT.7.6:
.word 0x3f000000
.CONSTANT.7.7:
.word 0x40000000
.CONSTANT.7.8:
.word 0x3dcccccd
.CONSTANT.7.9:
.word 0x3f19999a
.CONSTANT.7.10:
.word 0x3d4ccccd
.CONSTANT.7.11:
.word 0x437f0000
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
  ADDI sp, sp, -16
  SD ra, 0(sp)
  CALL write_pgm
  ADD a0, zero, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
write_pgm:   # loop depth 0
  ADDI sp, sp, -272
  SD ra, 152(sp)
  SD s0, 160(sp)
  SD s1, 168(sp)
  SD s2, 176(sp)
  SD s3, 184(sp)
  SD s4, 192(sp)
  FSD fs0, 200(sp)
  FSD fs1, 208(sp)
  FSD fs2, 216(sp)
  FSD fs3, 224(sp)
  FSD fs4, 232(sp)
  FSD fs9, 240(sp)
  FSD fs11, 248(sp)
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
  ADD s1, zero, zero
  # implict jump to bb8
bb8:   # loop depth 1
  FCVT.S.W fa0, s1
  ADDI s0, zero, 192
  FCVT.S.W fs0, s0
  FSW fs0, 20(sp)
  FLW fs0, 20(sp)
  FDIV.S fa0, fa0, fs0
  FSW fa0, 16(sp)
  ADDI s0, zero, 24
  FCVT.S.W fa0, s0
  FSW fa0, 12(sp)
  ADD s2, zero, zero
  # implict jump to bb9
bb9:   # loop depth 2
  FCVT.S.W fa0, s2
  FLW fs0, 20(sp)
  FDIV.S fa0, fa0, fs0
  FSW fa0, 8(sp)
  LA s0, .CONSTANT.7.2
  FLW fa0, 0(s0)
  LA s0, .CONSTANT.7.2
  FLW fs0, 0(s0)
  FSGNJN.S fs9, fa0, fs0
  LUI s0, 24414
  ADDIW s0, s0, 262
  FCVT.S.W fa0, s0
  FSW fa0, 4(sp)
  ADDI s0, zero, 2
  FCVT.S.W fs11, s0
  LA s0, .CONSTANT.7.2
  FLW fa0, 0(s0)
  FDIV.S fa0, fa0, fs11
  FSW fa0, 52(sp)
  LA s0, .CONSTANT.7.3
  FLW fa0, 0(s0)
  LA s0, .CONSTANT.7.3
  FLW fs0, 0(s0)
  FSGNJN.S fa0, fa0, fs0
  FSW fa0, 112(sp)
  LA s0, .CONSTANT.7.4
  FLW fa0, 0(s0)
  LA s0, .CONSTANT.7.4
  FLW fs0, 0(s0)
  FSGNJ.S fs0, fa0, fs0
  ADD s3, zero, zero
  # implict jump to bb10
bb10:   # loop depth 3
  FSW fs0, 104(sp)
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
bb11:   # loop depth 3
  LA s0, seed
  LW s0, 0(s0)
  FCVT.S.W fa0, s0
  FLW fs0, 4(sp)
  FDIV.S fa0, fa0, fs0
  FCVT.S.W fs1, s3
  FADD.S fa0, fs1, fa0
  LA s0, .CONSTANT.7.3
  FLW fs1, 0(s0)
  FMUL.S fa0, fs1, fa0
  FLW fs0, 12(sp)
  FDIV.S fs1, fa0, fs0
  FLW fa0, 52(sp)
  FADD.S fa0, fs1, fa0
  LA s0, .CONSTANT.7.3
  FLW fs2, 0(s0)
  FLT.S s0, fs2, fa0
  BNE s0, zero, bb62
  # implict jump to bb12
bb12:   # loop depth 3
  FLW fs0, 112(sp)
  FLT.S s0, fa0, fs0
  # implict jump to bb13
bb13:   # loop depth 3
  BNE s0, zero, bb61
  # implict jump to bb14
bb14:   # loop depth 3
  # implict jump to bb15
bb15:   # loop depth 3
  LA s0, .CONSTANT.7.2
  FLW fs2, 0(s0)
  FLT.S s0, fs2, fa0
  BNE s0, zero, bb60
  # implict jump to bb16
bb16:   # loop depth 3
  # implict jump to bb17
bb17:   # loop depth 3
  FLT.S s0, fa0, fs9
  BNE s0, zero, bb59
  # implict jump to bb18
bb18:   # loop depth 3
  # implict jump to bb19
bb19:   # loop depth 3
  CALL my_sin_impl
  FSW fa0, 140(sp)
  LA s0, .CONSTANT.7.3
  FLW fa0, 0(s0)
  FLT.S s0, fa0, fs1
  BNE s0, zero, bb58
  # implict jump to bb20
bb20:   # loop depth 3
  FLW fa0, 112(sp)
  FLT.S s0, fs1, fa0
  # implict jump to bb21
bb21:   # loop depth 3
  BNE s0, zero, bb57
  # implict jump to bb22
bb22:   # loop depth 3
  FSGNJ.S fa0, fs1, fs1
  # implict jump to bb23
bb23:   # loop depth 3
  LA s0, .CONSTANT.7.2
  FLW fs1, 0(s0)
  FLT.S s0, fs1, fa0
  BNE s0, zero, bb56
  # implict jump to bb24
bb24:   # loop depth 3
  # implict jump to bb25
bb25:   # loop depth 3
  FLT.S s0, fa0, fs9
  BNE s0, zero, bb55
  # implict jump to bb26
bb26:   # loop depth 3
  # implict jump to bb27
bb27:   # loop depth 3
  CALL my_sin_impl
  FSGNJ.D fs0, fa0, fa0
  FSW fs0, 144(sp)
  ADD s0, zero, zero
  LA s4, .CONSTANT.7.4
  FLW fs1, 0(s4)
  LA s4, .CONSTANT.7.4
  FLW fs4, 0(s4)
  FSGNJ.S fs4, fs1, fs4
  # implict jump to bb28
bb28:   # loop depth 4
  SLTI s4, s0, 10
  BNE s4, zero, bb54
  # implict jump to bb29
bb29:   # loop depth 4
  ADD s4, zero, zero
  # implict jump to bb30
bb30:   # loop depth 4
  BNE s4, zero, bb42
  # implict jump to bb31
bb31:   # loop depth 3
  LA s0, .CONSTANT.7.4
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FSGNJ.S fs1, fs1, fs2
  # implict jump to bb32
bb32:   # loop depth 3
  FLW fs0, 104(sp)
  FADD.S fs0, fs0, fs1
  ADDIW s3, s3, 1
  SLTI s0, s3, 24
  BNE s0, zero, bb41
  # implict jump to bb33
bb33:   # loop depth 2
  FLW fs1, 12(sp)
  FDIV.S fs0, fs0, fs1
  LA a0, .CONSTANT.7.11
  FLW fs1, 0(a0)
  FMUL.S fs0, fs0, fs1
  FCVT.W.S a0, fs0, rtz
  ADDI s0, zero, 255
  BLT s0, a0, bb40
  # implict jump to bb34
bb34:   # loop depth 2
  # implict jump to bb35
bb35:   # loop depth 2
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDIW s2, s2, 1
  SLTI s0, s2, 192
  BNE s0, zero, bb39
  # implict jump to bb36
bb36:   # loop depth 1
  ADDI a0, zero, 10
  CALL putch
  ADDIW s1, s1, 1
  SLTI s0, s1, 192
  BNE s0, zero, bb38
  # implict jump to bb37
bb37:   # loop depth 0
  LD ra, 152(sp)
  LD s0, 160(sp)
  LD s1, 168(sp)
  LD s2, 176(sp)
  LD s3, 184(sp)
  LD s4, 192(sp)
  FLD fs0, 200(sp)
  FLD fs1, 208(sp)
  FLD fs2, 216(sp)
  FLD fs3, 224(sp)
  FLD fs4, 232(sp)
  FLD fs9, 240(sp)
  FLD fs11, 248(sp)
  ADDI sp, sp, 272
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
  FLW fs0, 140(sp)
  FMUL.S fs1, fs0, fs4
  FLW fs0, 8(sp)
  FADD.S fs0, fs0, fs1
  FSW fs0, 116(sp)
  FLW fs0, 144(sp)
  FMUL.S fs1, fs0, fs4
  FLW fs0, 16(sp)
  FADD.S fs0, fs0, fs1
  FSW fs0, 120(sp)
  LA s4, .CONSTANT.7.5
  FLW fs1, 0(s4)
  FLW fs0, 116(sp)
  FSUB.S fs1, fs0, fs1
  LA s4, .CONSTANT.7.5
  FLW fs0, 0(s4)
  FSW fs0, 48(sp)
  FLW fs0, 48(sp)
  FLW fs2, 120(sp)
  FSUB.S fs0, fs2, fs0
  FSW fs0, 124(sp)
  FMUL.S fs1, fs1, fs1
  FLW fs0, 124(sp)
  FLW fs2, 124(sp)
  FMUL.S fs0, fs0, fs2
  FSW fs0, 128(sp)
  FLW fs0, 128(sp)
  FADD.S fs0, fs1, fs0
  FSW fs0, 132(sp)
  ADDI s4, zero, 8
  FCVT.S.W fs0, s4
  FSW fs0, 136(sp)
  FLW fs0, 136(sp)
  FLW fs1, 132(sp)
  FDIV.S fs1, fs1, fs0
  LA s4, .CONSTANT.7.6
  FLW fs0, 0(s4)
  FSW fs0, 44(sp)
  FLW fs0, 44(sp)
  FADD.S fs1, fs1, fs0
  FLW fs0, 132(sp)
  FMUL.S fs0, fs11, fs0
  FSW fs0, 100(sp)
  ADDI s4, zero, 4
  FCVT.S.W fs0, s4
  FSW fs0, 96(sp)
  FLW fs0, 96(sp)
  FLW fs2, 132(sp)
  FADD.S fs0, fs0, fs2
  FSW fs0, 92(sp)
  FLW fs0, 92(sp)
  FLW fs2, 100(sp)
  FDIV.S fs0, fs2, fs0
  FSW fs0, 88(sp)
  FLW fs0, 88(sp)
  FADD.S fs1, fs1, fs0
  ADDI s4, zero, 10
  # implict jump to bb43
bb43:   # loop depth 5
  FLW fs0, 132(sp)
  FDIV.S fs0, fs0, fs1
  FSW fs0, 84(sp)
  FLW fs0, 84(sp)
  FADD.S fs1, fs1, fs0
  FDIV.S fs1, fs1, fs11
  ADDIW s4, s4, -1
  BNE s4, zero, bb53
  # implict jump to bb44
bb44:   # loop depth 4
  LA s4, .CONSTANT.7.8
  FLW fs0, 0(s4)
  FSW fs0, 36(sp)
  FLW fs0, 36(sp)
  FSUB.S fs0, fs1, fs0
  FSW fs0, 76(sp)
  LA s4, .CONSTANT.7.9
  FLW fs1, 0(s4)
  FLW fs0, 116(sp)
  FSUB.S fs1, fs0, fs1
  LA s4, .CONSTANT.7.9
  FLW fs0, 0(s4)
  FSW fs0, 32(sp)
  FLW fs0, 32(sp)
  FLW fs2, 120(sp)
  FSUB.S fs0, fs2, fs0
  FSW fs0, 72(sp)
  FMUL.S fs1, fs1, fs1
  FLW fs0, 72(sp)
  FLW fs2, 72(sp)
  FMUL.S fs0, fs0, fs2
  FSW fs0, 68(sp)
  FLW fs0, 68(sp)
  FADD.S fs0, fs1, fs0
  FSW fs0, 64(sp)
  FLW fs0, 64(sp)
  FLW fs1, 136(sp)
  FDIV.S fs1, fs0, fs1
  LA s4, .CONSTANT.7.6
  FLW fs0, 0(s4)
  FSW fs0, 28(sp)
  FLW fs0, 28(sp)
  FADD.S fs1, fs1, fs0
  FLW fs0, 64(sp)
  FMUL.S fs0, fs11, fs0
  FSW fs0, 60(sp)
  FLW fs0, 64(sp)
  FLW fs2, 96(sp)
  FADD.S fs0, fs2, fs0
  FSW fs0, 56(sp)
  FLW fs0, 56(sp)
  FLW fs2, 60(sp)
  FDIV.S fs0, fs2, fs0
  FSW fs0, 0(sp)
  FLW fs0, 0(sp)
  FADD.S fs1, fs1, fs0
  ADDI s4, zero, 10
  # implict jump to bb45
bb45:   # loop depth 5
  FLW fs0, 64(sp)
  FDIV.S fs0, fs0, fs1
  FSW fs0, 80(sp)
  FLW fs0, 80(sp)
  FADD.S fs1, fs1, fs0
  FDIV.S fs1, fs1, fs11
  ADDIW s4, s4, -1
  BNE s4, zero, bb52
  # implict jump to bb46
bb46:   # loop depth 4
  LA s4, .CONSTANT.7.10
  FLW fs0, 0(s4)
  FSW fs0, 24(sp)
  FLW fs0, 24(sp)
  FSUB.S fs1, fs1, fs0
  FLW fs0, 76(sp)
  FLT.S s4, fs0, fs1
  BNE s4, zero, bb51
  # implict jump to bb47
bb47:   # loop depth 4
  FSW fs1, 256(sp)
  LA s4, .CONSTANT.7.4
  FLW fs1, 0(s4)
  FSW fs1, 260(sp)
  # implict jump to bb48
bb48:   # loop depth 4
  FLW fs1, 256(sp)
  LA s4, .CONSTANT.7.0
  FLW fs0, 0(s4)
  FSW fs0, 40(sp)
  FLW fs0, 40(sp)
  FLT.S s4, fs1, fs0
  BNE s4, zero, bb50
  # implict jump to bb49
bb49:   # loop depth 4
  FADD.S fs4, fs4, fs1
  ADDIW s0, s0, 1
  JAL zero, bb28
bb50:   # loop depth 3
  FLW fs1, 260(sp)
  JAL zero, bb32
bb51:   # loop depth 4
  FLW fs0, 76(sp)
  FSW fs0, 256(sp)
  LA s4, .CONSTANT.7.1
  FLW fs1, 0(s4)
  FSW fs1, 260(sp)
  JAL zero, bb48
bb52:   # loop depth 5
  JAL zero, bb45
bb53:   # loop depth 5
  JAL zero, bb43
bb54:   # loop depth 4
  LA s4, .CONSTANT.7.7
  FLW fs1, 0(s4)
  FLT.S s4, fs4, fs1
  JAL zero, bb30
bb55:   # loop depth 3
  LA s0, .CONSTANT.7.3
  FLW fs1, 0(s0)
  FADD.S fa0, fa0, fs1
  JAL zero, bb27
bb56:   # loop depth 3
  LA s0, .CONSTANT.7.3
  FLW fs1, 0(s0)
  FSUB.S fa0, fa0, fs1
  JAL zero, bb25
bb57:   # loop depth 3
  LA s0, .CONSTANT.7.3
  FLW fa0, 0(s0)
  FDIV.S fa0, fs1, fa0
  FCVT.W.S s0, fa0, rtz
  FCVT.S.W fa0, s0
  LA s0, .CONSTANT.7.3
  FLW fs2, 0(s0)
  FMUL.S fa0, fa0, fs2
  FSUB.S fa0, fs1, fa0
  JAL zero, bb23
bb58:   # loop depth 3
  ADDI s0, zero, 1
  JAL zero, bb21
bb59:   # loop depth 3
  LA s0, .CONSTANT.7.3
  FLW fs2, 0(s0)
  FADD.S fa0, fa0, fs2
  JAL zero, bb19
bb60:   # loop depth 3
  LA s0, .CONSTANT.7.3
  FLW fs2, 0(s0)
  FSUB.S fa0, fa0, fs2
  JAL zero, bb17
bb61:   # loop depth 3
  LA s0, .CONSTANT.7.3
  FLW fs2, 0(s0)
  FDIV.S fs2, fa0, fs2
  FCVT.W.S s0, fs2, rtz
  FCVT.S.W fs2, s0
  LA s0, .CONSTANT.7.3
  FLW fs3, 0(s0)
  FMUL.S fs2, fs2, fs3
  FSUB.S fa0, fa0, fs2
  JAL zero, bb15
bb62:   # loop depth 3
  ADDI s0, zero, 1
  JAL zero, bb13
bb63:   # loop depth 3
  LA s0, seed
  LW s0, 0(s0)
  LUI s4, 24414
  ADDIW s4, s4, 263
  ADDW s0, s0, s4
  LA s4, seed
  SW s0, 0(s4)
  JAL zero, bb11
