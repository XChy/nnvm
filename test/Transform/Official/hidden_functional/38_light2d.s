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
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs0, 16(sp)
  FSD fs1, 24(sp)
  FSD fs2, 32(sp)
  FSD fs3, 40(sp)
  FSGNJ.D fs0, fa0, fa0
  ADDI s0, zero, 0
  FCVT.S.W fs1, s0
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb5
  # implict jump to bb1
bb1:
  FSGNJN.S fs1, fs0, fs0
  # implict jump to bb2
bb2:
  LA s0, .CONSTANT.7.0
  FLW fs2, 0(s0)
  FLE.S s0, fs1, fs2
  BNE s0, zero, bb4
  # implict jump to bb3
bb3:
  LA s0, .CONSTANT.7.1
  FLW fs1, 0(s0)
  FDIV.S fs1, fs0, fs1
  FSGNJ.S fa0, fs1, fs1
  CALL my_sin_impl
  FSGNJ.D fs1, fa0, fa0
  ADDI s0, zero, 3
  FCVT.S.W fs2, s0
  FMUL.S fs2, fs2, fs1
  ADDI s0, zero, 4
  FCVT.S.W fs3, s0
  FMUL.S fs3, fs3, fs1
  FMUL.S fs3, fs3, fs1
  FMUL.S fs1, fs3, fs1
  FSUB.S fs1, fs2, fs1
  FSGNJ.S fa0, fs1, fs1
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  FLD fs2, 32(sp)
  FLD fs3, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb4:
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  FLD fs2, 32(sp)
  FLD fs3, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb5:
  FSGNJ.S fs1, fs0, fs0
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
  ADDI sp, sp, -272
  SD ra, 56(sp)
  SD s0, 64(sp)
  SD s1, 72(sp)
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
  FSD fs10, 184(sp)
  FSD fs11, 192(sp)
  FSD fs4, 200(sp)
  FSD fs2, 208(sp)
  FSD fs3, 216(sp)
  FSD fs5, 224(sp)
  FSD fs7, 232(sp)
  FSD fs6, 240(sp)
  FSD fs9, 248(sp)
  FSD fs8, 256(sp)
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
  FCVT.S.W fs5, s1
  ADDI s2, zero, 192
  FCVT.S.W fs6, s2
  FDIV.S ft4, fs5, fs6
  FSW ft4, 52(sp)
  ADD s2, zero, zero
  # implict jump to bb9
bb9:
  ADD s3, s2, zero
  FCVT.S.W fs7, s3
  FDIV.S ft4, fs7, fs6
  FSW ft4, 44(sp)
  LA s4, .CONSTANT.7.2
  FLW fs8, 0(s4)
  LA s4, .CONSTANT.7.2
  FLW fs9, 0(s4)
  FSGNJ.S fs8, fs8, fs9
  ADD s4, zero, zero
  # implict jump to bb10
bb10:
  ADD t4, s4, zero
  SW t4, 0(sp)
  FSGNJ.S ft4, fs8, fs8
  FSW ft4, 4(sp)
  LA s6, seed
  LW s6, 0(s6)
  LUI s7, 4878
  ADDIW s7, s7, -158
  MULW s6, s6, s7
  LUI s7, 6
  ADDIW s7, s7, -1243
  ADDW s6, s6, s7
  LUI s7, 24414
  ADDIW s7, s7, 263
  REMW s6, s6, s7
  LA s7, seed
  SW s6, 0(s7)
  BLT s6, zero, bb67
  # implict jump to bb11
bb11:
  LA s6, seed
  LW s6, 0(s6)
  FCVT.S.W fs10, s6
  LUI s6, 24414
  ADDIW s6, s6, 262
  FCVT.S.W fs11, s6
  FDIV.S fs10, fs10, fs11
  LW t4, 0(sp)
  FCVT.S.W fs11, t4
  FADD.S fs10, fs11, fs10
  LA s6, .CONSTANT.7.7
  FLW fs11, 0(s6)
  FMUL.S fs10, fs11, fs10
  ADDI s6, zero, 24
  FCVT.S.W fs11, s6
  FDIV.S fs3, fs10, fs11
  ADDI s6, zero, 2
  FCVT.S.W ft4, s6
  FSW ft4, 36(sp)
  LA s6, .CONSTANT.7.8
  FLW fs10, 0(s6)
  FLW ft4, 36(sp)
  FDIV.S fs10, fs10, ft4
  FADD.S fs10, fs3, fs10
  LA s6, .CONSTANT.7.7
  FLW fs11, 0(s6)
  FLT.S s6, fs11, fs10
  BNE s6, zero, bb66
  # implict jump to bb12
bb12:
  LA s6, .CONSTANT.7.7
  FLW fs11, 0(s6)
  LA s6, .CONSTANT.7.7
  FLW fs1, 0(s6)
  FSGNJN.S fs1, fs11, fs1
  FLT.S s6, fs10, fs1
  # implict jump to bb13
bb13:
  BNE s6, zero, bb65
  # implict jump to bb14
bb14:
  FSGNJ.S fs1, fs10, fs10
  # implict jump to bb15
bb15:
  LA s6, .CONSTANT.7.8
  FLW fs0, 0(s6)
  FLT.S s6, fs0, fs1
  BNE s6, zero, bb64
  # implict jump to bb16
bb16:
  FSGNJ.S fs0, fs1, fs1
  # implict jump to bb17
bb17:
  LA s6, .CONSTANT.7.8
  FLW fs1, 0(s6)
  LA s6, .CONSTANT.7.8
  FLW fs10, 0(s6)
  FSGNJN.S fs4, fs1, fs10
  FLT.S s6, fs0, fs4
  BNE s6, zero, bb63
  # implict jump to bb18
bb18:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb19
bb19:
  FSGNJ.S fa0, fs1, fs1
  CALL my_sin_impl
  FSGNJ.D ft4, fa0, fa0
  FSW ft4, 40(sp)
  LA s6, .CONSTANT.7.7
  FLW fs0, 0(s6)
  FLT.S s6, fs0, fs3
  BNE s6, zero, bb62
  # implict jump to bb20
bb20:
  LA s6, .CONSTANT.7.7
  FLW fs0, 0(s6)
  LA s6, .CONSTANT.7.7
  FLW fs1, 0(s6)
  FSGNJN.S fs0, fs0, fs1
  FLT.S s6, fs3, fs0
  # implict jump to bb21
bb21:
  BNE s6, zero, bb61
  # implict jump to bb22
bb22:
  FSGNJ.S fs0, fs3, fs3
  # implict jump to bb23
bb23:
  LA s6, .CONSTANT.7.8
  FLW fs1, 0(s6)
  FLT.S s6, fs1, fs0
  BNE s6, zero, bb60
  # implict jump to bb24
bb24:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb25
bb25:
  FLT.S s6, fs1, fs4
  BNE s6, zero, bb59
  # implict jump to bb26
bb26:
  FSGNJ.S fs0, fs1, fs1
  # implict jump to bb27
bb27:
  FSGNJ.S fa0, fs0, fs0
  CALL my_sin_impl
  FSGNJ.D ft4, fa0, fa0
  FSW ft4, 32(sp)
  ADD s6, zero, zero
  LA s7, .CONSTANT.7.2
  FLW fs0, 0(s7)
  LA s7, .CONSTANT.7.2
  FLW fs1, 0(s7)
  FSGNJ.S fs0, fs0, fs1
  # implict jump to bb28
bb28:
  FSGNJ.S ft4, fs0, fs0
  FSW ft4, 8(sp)
  ADD t4, s6, zero
  SW t4, 48(sp)
  LW t4, 48(sp)
  SLTI s8, t4, 10
  BNE s8, zero, bb58
  # implict jump to bb29
bb29:
  ADD s8, zero, zero
  # implict jump to bb30
bb30:
  BNE s8, zero, bb44
  # implict jump to bb31
bb31:
  LA s8, .CONSTANT.7.2
  FLW fs3, 0(s8)
  LA s8, .CONSTANT.7.2
  FLW fs4, 0(s8)
  FSGNJ.S fs3, fs3, fs4
  # implict jump to bb32
bb32:
  FLW ft4, 4(sp)
  FADD.S fs0, ft4, fs3
  LW t4, 0(sp)
  ADDIW s6, t4, 1
  SLTI s11, s6, 24
  BNE s11, zero, bb43
  # implict jump to bb33
bb33:
  # implict jump to bb34
bb34:
  ADDI s11, zero, 24
  FCVT.S.W fs3, s11
  FDIV.S fs3, fs0, fs3
  LA s11, .CONSTANT.7.3
  FLW fs5, 0(s11)
  FMUL.S fs3, fs3, fs5
  FCVT.W.S s11, fs3, rtz
  ADDI s5, zero, 255
  BLT s5, s11, bb42
  # implict jump to bb35
bb35:
  ADD s5, s11, zero
  # implict jump to bb36
bb36:
  ADD a0, s5, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDIW s5, s3, 1
  SLTI s11, s5, 192
  BNE s11, zero, bb41
  # implict jump to bb37
bb37:
  # implict jump to bb38
bb38:
  ADDI a0, zero, 10
  CALL putch
  ADDIW s11, s1, 1
  SLTI t0, s11, 192
  BNE t0, zero, bb40
  # implict jump to bb39
bb39:
  LD ra, 56(sp)
  LD s0, 64(sp)
  LD s1, 72(sp)
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
  FLD fs10, 184(sp)
  FLD fs11, 192(sp)
  FLD fs4, 200(sp)
  FLD fs2, 208(sp)
  FLD fs3, 216(sp)
  FLD fs5, 224(sp)
  FLD fs7, 232(sp)
  FLD fs6, 240(sp)
  FLD fs9, 248(sp)
  FLD fs8, 256(sp)
  ADDI sp, sp, 272
  JALR zero, 0(ra)
bb40:
  ADD s0, s11, zero
  JAL zero, bb8
bb41:
  ADD s2, s5, zero
  JAL zero, bb9
bb42:
  ADDI s5, zero, 255
  JAL zero, bb36
bb43:
  FSGNJ.S fs8, fs0, fs0
  ADD s4, s6, zero
  JAL zero, bb10
bb44:
  FLW ft4, 40(sp)
  FLW ft3, 8(sp)
  FMUL.S fs4, ft4, ft3
  FLW ft3, 44(sp)
  FADD.S ft4, ft3, fs4
  FSW ft4, 12(sp)
  FLW ft4, 32(sp)
  FLW ft3, 8(sp)
  FMUL.S fs10, ft4, ft3
  FLW ft3, 52(sp)
  FADD.S ft4, ft3, fs10
  FSW ft4, 16(sp)
  LA s8, .CONSTANT.7.4
  FLW fs11, 0(s8)
  FLW ft4, 12(sp)
  FSUB.S fs11, ft4, fs11
  LA s8, .CONSTANT.7.4
  FLW fs2, 0(s8)
  FLW ft4, 16(sp)
  FSUB.S fs2, ft4, fs2
  FMUL.S fs11, fs11, fs11
  FMUL.S fs2, fs2, fs2
  FADD.S ft4, fs11, fs2
  FSW ft4, 24(sp)
  ADDI s8, zero, 8
  FCVT.S.W ft4, s8
  FSW ft4, 28(sp)
  FLW ft4, 24(sp)
  FLW ft3, 28(sp)
  FDIV.S fs11, ft4, ft3
  LA s8, .CONSTANT.7.5
  FLW fs2, 0(s8)
  FADD.S fs2, fs11, fs2
  FLW ft4, 36(sp)
  FLW ft3, 24(sp)
  FMUL.S fs11, ft4, ft3
  ADDI s8, zero, 4
  FCVT.S.W ft4, s8
  FSW ft4, 20(sp)
  FLW ft4, 20(sp)
  FLW ft3, 24(sp)
  FADD.S fs10, ft4, ft3
  FDIV.S fs10, fs11, fs10
  FADD.S fs2, fs2, fs10
  ADDI s8, zero, 10
  # implict jump to bb45
bb45:
  ADD s9, s8, zero
  FSGNJ.S fs10, fs2, fs2
  FLW ft4, 24(sp)
  FDIV.S fs11, ft4, fs10
  FADD.S fs10, fs10, fs11
  FLW ft4, 36(sp)
  FDIV.S fs10, fs10, ft4
  ADDI s10, zero, 1
  SUBW s9, s9, s10
  BNE s9, zero, bb57
  # implict jump to bb46
bb46:
  # implict jump to bb47
bb47:
  LA s10, .CONSTANT.7.9
  FLW fs11, 0(s10)
  FSUB.S fs11, fs10, fs11
  LA s10, .CONSTANT.7.10
  FLW fs4, 0(s10)
  FLW ft4, 12(sp)
  FSUB.S fs4, ft4, fs4
  LA s10, .CONSTANT.7.10
  FLW fs1, 0(s10)
  FLW ft4, 16(sp)
  FSUB.S fs1, ft4, fs1
  FMUL.S fs4, fs4, fs4
  FMUL.S fs1, fs1, fs1
  FADD.S fs1, fs4, fs1
  FLW ft4, 28(sp)
  FDIV.S fs4, fs1, ft4
  LA s10, .CONSTANT.7.5
  FLW fs9, 0(s10)
  FADD.S fs4, fs4, fs9
  FLW ft4, 36(sp)
  FMUL.S fs9, ft4, fs1
  FLW ft4, 20(sp)
  FADD.S fs7, ft4, fs1
  FDIV.S fs7, fs9, fs7
  FADD.S fs4, fs4, fs7
  ADDI s10, zero, 10
  # implict jump to bb48
bb48:
  ADD s11, s10, zero
  FSGNJ.S fs7, fs4, fs4
  FDIV.S fs9, fs1, fs7
  FADD.S fs7, fs7, fs9
  FLW ft4, 36(sp)
  FDIV.S fs7, fs7, ft4
  ADDI s7, zero, 1
  SUBW s7, s11, s7
  BNE s7, zero, bb56
  # implict jump to bb49
bb49:
  # implict jump to bb50
bb50:
  LA s11, .CONSTANT.7.11
  FLW fs9, 0(s11)
  FSUB.S fs9, fs7, fs9
  FLT.S s11, fs11, fs9
  BNE s11, zero, bb55
  # implict jump to bb51
bb51:
  FSW fs9, 176(sp)
  LA s11, .CONSTANT.7.2
  FLW fs9, 0(s11)
  FSW fs9, 180(sp)
  # implict jump to bb52
bb52:
  FLW fs9, 176(sp)
  LA s11, .CONSTANT.7.0
  FLW fs5, 0(s11)
  FLT.S s11, fs9, fs5
  BNE s11, zero, bb54
  # implict jump to bb53
bb53:
  FLW ft4, 8(sp)
  FADD.S fs5, ft4, fs9
  LW t4, 48(sp)
  ADDIW s11, t4, 1
  ADD s6, s11, zero
  FSGNJ.S fs0, fs5, fs5
  JAL zero, bb28
bb54:
  FLW fs0, 180(sp)
  FSGNJ.S fs3, fs0, fs0
  JAL zero, bb32
bb55:
  FSW fs11, 176(sp)
  LA s11, .CONSTANT.7.1
  FLW fs9, 0(s11)
  FSW fs9, 180(sp)
  JAL zero, bb52
bb56:
  FSGNJ.S fs4, fs7, fs7
  ADD s10, s7, zero
  JAL zero, bb48
bb57:
  FSGNJ.S fs2, fs10, fs10
  ADD s8, s9, zero
  JAL zero, bb45
bb58:
  LA s9, .CONSTANT.7.6
  FLW fs3, 0(s9)
  FLW ft4, 8(sp)
  FLT.S s9, ft4, fs3
  ADD s8, s9, zero
  JAL zero, bb30
bb59:
  LA s6, .CONSTANT.7.7
  FLW fs3, 0(s6)
  FADD.S fs1, fs1, fs3
  FSGNJ.S fs0, fs1, fs1
  JAL zero, bb27
bb60:
  LA s6, .CONSTANT.7.7
  FLW fs3, 0(s6)
  FSUB.S fs0, fs0, fs3
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb25
bb61:
  LA s6, .CONSTANT.7.7
  FLW fs1, 0(s6)
  FDIV.S fs1, fs3, fs1
  FCVT.W.S s6, fs1, rtz
  FCVT.S.W fs1, s6
  LA s6, .CONSTANT.7.7
  FLW fs10, 0(s6)
  FMUL.S fs1, fs1, fs10
  FSUB.S fs1, fs3, fs1
  FSGNJ.S fs0, fs1, fs1
  JAL zero, bb23
bb62:
  ADDI s6, zero, 1
  JAL zero, bb21
bb63:
  LA s6, .CONSTANT.7.7
  FLW fs10, 0(s6)
  FADD.S fs0, fs0, fs10
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb19
bb64:
  LA s6, .CONSTANT.7.7
  FLW fs10, 0(s6)
  FSUB.S fs1, fs1, fs10
  FSGNJ.S fs0, fs1, fs1
  JAL zero, bb17
bb65:
  LA s6, .CONSTANT.7.7
  FLW fs11, 0(s6)
  FDIV.S fs11, fs10, fs11
  FCVT.W.S s6, fs11, rtz
  FCVT.S.W fs11, s6
  LA s6, .CONSTANT.7.7
  FLW fs0, 0(s6)
  FMUL.S fs0, fs11, fs0
  FSUB.S fs0, fs10, fs0
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb15
bb66:
  ADDI s6, zero, 1
  JAL zero, bb13
bb67:
  LA s6, seed
  LW s6, 0(s6)
  LUI s7, 24414
  ADDIW s7, s7, 263
  ADDW s6, s6, s7
  LA s7, seed
  SW s6, 0(s7)
  JAL zero, bb11
