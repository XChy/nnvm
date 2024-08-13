.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
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
  FCVT.S.W fs1, s0
  FSGNJN.S fs0, fa0, fa0
  FLT.S s0, fs1, fa0
  BNE s0, zero, bb5
  # implict jump to bb1
bb1:   # loop depth 0
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
  ADDI sp, sp, -336
  FSD fs0, 192(sp)
  FSD fs1, 200(sp)
  FSD fs2, 208(sp)
  FSD fs3, 216(sp)
  FSD fs4, 224(sp)
  FSD fs5, 232(sp)
  SD ra, 240(sp)
  SD s0, 248(sp)
  SD s1, 256(sp)
  SD s2, 264(sp)
  SD s3, 272(sp)
  SD s4, 280(sp)
  SD s5, 288(sp)
  SD s6, 296(sp)
  SD s7, 304(sp)
  SD s8, 312(sp)
  LA a0, .CONSTANT.7.2
  LA s0, .CONSTANT.7.2
  ADDI s2, zero, 2
  LA s1, .CONSTANT.7.3
  FLW fs0, 0(a0)
  FCVT.S.W fs1, s2
  FSW fs1, 156(sp)
  LA s2, .CONSTANT.7.3
  ADDI a0, zero, 80
  FLW fs1, 0(s0)
  LUI s3, 24414
  ADDI s5, zero, 192
  ADDIW s3, s3, 262
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 0(sp)
  FLW fs0, 0(s1)
  ADDI s4, zero, 4
  ADDI s1, zero, 8
  FLW fs1, 0(sp)
  FLW fs2, 156(sp)
  FDIV.S fs1, fs1, fs2
  FSW fs1, 56(sp)
  FLW fs1, 0(s2)
  ADDI s0, zero, 24
  FCVT.S.W fs2, s5
  FSW fs2, 68(sp)
  FSGNJ.S fs0, fs0, fs1
  FSW fs0, 168(sp)
  FLW fs0, 0(sp)
  FLW fs1, 0(sp)
  FSGNJN.S fs0, fs0, fs1
  FSW fs0, 64(sp)
  FCVT.S.W fs0, s3
  FSW fs0, 52(sp)
  ADD s3, zero, zero
  CALL putch
  FLW fs0, 168(sp)
  FLW fs1, 168(sp)
  FSGNJN.S fs0, fs0, fs1
  FSW fs0, 60(sp)
  ADDI a0, zero, 50
  FCVT.S.W fs0, s4
  FSW fs0, 48(sp)
  FCVT.S.W fs0, s1
  FSW fs0, 44(sp)
  CALL putch
  ADDI a0, zero, 10
  FCVT.S.W fs0, s0
  FSW fs0, 40(sp)
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
  LA s0, .CONSTANT.7.4
  FCVT.S.W fa0, s3
  LA s1, .CONSTANT.7.4
  FLW fs0, 0(s0)
  ADD s4, zero, zero
  FLW fs1, 68(sp)
  FDIV.S fa0, fa0, fs1
  FSW fa0, 132(sp)
  FLW fa0, 0(s1)
  FSGNJ.S fs5, fs0, fa0
  # implict jump to bb9
bb9:   # loop depth 2
  FSGNJ.S fs0, fs5, fs5
  FCVT.S.W fa0, s4
  ADD s0, zero, zero
  FLW fs1, 68(sp)
  FDIV.S fa0, fa0, fs1
  FSW fa0, 188(sp)
  # implict jump to bb10
bb10:   # loop depth 3
  LA s1, seed
  LUI s7, 4878
  ADDIW s7, s7, -158
  LUI s2, 6
  LW s1, 0(s1)
  LUI s6, 24414
  ADDIW s2, s2, -1243
  ADDIW s6, s6, 263
  LA s5, seed
  FSW fs0, 184(sp)
  MULW s1, s1, s7
  ADDW s1, s1, s2
  REMW s1, s1, s6
  SW s1, 0(s5)
  BLT s1, zero, bb54
  # implict jump to bb11
bb11:   # loop depth 3
  LA s1, seed
  FCVT.S.W fs1, s0
  LW s1, 0(s1)
  FCVT.S.W fa0, s1
  FLW fs0, 52(sp)
  FDIV.S fa0, fa0, fs0
  FADD.S fa0, fs1, fa0
  FLW fs0, 168(sp)
  FMUL.S fa0, fs0, fa0
  FLW fs0, 40(sp)
  FDIV.S fs1, fa0, fs0
  FLW fa0, 56(sp)
  FADD.S fs2, fs1, fa0
  FLW fs0, 60(sp)
  FLT.S s2, fs2, fs0
  FLW fa0, 168(sp)
  FLT.S s1, fa0, fs2
  OR s1, s1, s2
  BNE s1, zero, bb53
  # implict jump to bb12
bb12:   # loop depth 3
  # implict jump to bb13
bb13:   # loop depth 3
  FLW fa0, 168(sp)
  FSUB.S fs3, fs2, fa0
  FLW fs0, 0(sp)
  FLT.S s1, fs0, fs2
  BNE s1, zero, bb52
  # implict jump to bb14
bb14:   # loop depth 3
  FSGNJ.S fs3, fs2, fs2
  # implict jump to bb15
bb15:   # loop depth 3
  FLW fa0, 168(sp)
  FADD.S fa0, fs3, fa0
  FLW fs0, 64(sp)
  FLT.S s1, fs3, fs0
  BNE s1, zero, bb51
  # implict jump to bb16
bb16:   # loop depth 3
  FSGNJ.S fa0, fs3, fs3
  # implict jump to bb17
bb17:   # loop depth 3
  FLW fs0, 60(sp)
  FLT.S s2, fs1, fs0
  FLW fs0, 168(sp)
  FLT.S s1, fs0, fs1
  CALL my_sin_impl
  OR s1, s1, s2
  FSW fa0, 172(sp)
  BNE s1, zero, bb50
  # implict jump to bb18
bb18:   # loop depth 3
  FSGNJ.S fa0, fs1, fs1
  # implict jump to bb19
bb19:   # loop depth 3
  LA s1, .CONSTANT.7.6
  LA s2, .CONSTANT.7.6
  LA s5, .CONSTANT.7.7
  LA s6, .CONSTANT.7.7
  FLW fs2, 0(s1)
  LA s7, .CONSTANT.7.8
  LA s8, .CONSTANT.7.8
  FLW fs4, 0(s2)
  FLW fs0, 168(sp)
  FSUB.S fs1, fa0, fs0
  FLW fs0, 0(sp)
  FLT.S s1, fs0, fa0
  FLW fs0, 0(s5)
  FSW fs0, 20(sp)
  FSGNJ.S fs0, fs2, fs4
  FSW fs0, 100(sp)
  FLW fs2, 0(s6)
  FLW fs4, 0(s7)
  FLW fs0, 20(sp)
  FSGNJ.S fs0, fs0, fs2
  FSW fs0, 96(sp)
  FLW fs2, 0(s8)
  FSGNJ.S fs0, fs4, fs2
  FSW fs0, 92(sp)
  BNE s1, zero, bb49
  # implict jump to bb20
bb20:   # loop depth 3
  # implict jump to bb21
bb21:   # loop depth 3
  FLW fs0, 168(sp)
  FADD.S fs1, fa0, fs0
  FLW fs0, 64(sp)
  FLT.S s1, fa0, fs0
  BNE s1, zero, bb48
  # implict jump to bb22
bb22:   # loop depth 3
  # implict jump to bb23
bb23:   # loop depth 3
  ADD s2, zero, zero
  FSGNJ.S fs4, fs5, fs5
  CALL my_sin_impl
  FSGNJ.D fs0, fa0, fa0
  FSW fs0, 176(sp)
  # implict jump to bb24
bb24:   # loop depth 4
  LA s1, .CONSTANT.7.5
  FLW fs1, 0(s1)
  SLTI s1, s2, 10
  FLT.S s5, fs4, fs1
  AND s1, s1, s5
  BNE s1, zero, bb36
  # implict jump to bb25
bb25:   # loop depth 3
  FSGNJ.S fs1, fs5, fs5
  # implict jump to bb26
bb26:   # loop depth 3
  ADDIW s0, s0, 1
  SLTI s1, s0, 24
  FLW fs0, 184(sp)
  FADD.S fs0, fs0, fs1
  BNE s1, zero, bb35
  # implict jump to bb27
bb27:   # loop depth 2
  FLW fs1, 40(sp)
  FDIV.S fs0, fs0, fs1
  LA a0, .CONSTANT.7.11
  ADDI s0, zero, 255
  FLW fs1, 0(a0)
  FMUL.S fs0, fs0, fs1
  FCVT.W.S a0, fs0, rtz
  BLT s0, a0, bb34
  # implict jump to bb28
bb28:   # loop depth 2
  # implict jump to bb29
bb29:   # loop depth 2
  ADDIW s4, s4, 1
  SLTI s0, s4, 192
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  BNE s0, zero, bb33
  # implict jump to bb30
bb30:   # loop depth 1
  ADDIW s3, s3, 1
  ADDI a0, zero, 10
  SLTI s0, s3, 192
  CALL putch
  BNE s0, zero, bb32
  # implict jump to bb31
bb31:   # loop depth 0
  FLD fs0, 192(sp)
  FLD fs1, 200(sp)
  FLD fs2, 208(sp)
  FLD fs3, 216(sp)
  FLD fs4, 224(sp)
  FLD fs5, 232(sp)
  LD ra, 240(sp)
  LD s0, 248(sp)
  LD s1, 256(sp)
  LD s2, 264(sp)
  LD s3, 272(sp)
  LD s4, 280(sp)
  LD s5, 288(sp)
  LD s6, 296(sp)
  LD s7, 304(sp)
  LD s8, 312(sp)
  ADDI sp, sp, 336
  JALR zero, 0(ra)
bb32:   # loop depth 1
  JAL zero, bb8
bb33:   # loop depth 2
  JAL zero, bb9
bb34:   # loop depth 2
  ADDI a0, zero, 255
  JAL zero, bb29
bb35:   # loop depth 3
  JAL zero, bb10
bb36:   # loop depth 4
  FLW fs0, 176(sp)
  FMUL.S fs0, fs0, fs4
  FSW fs0, 152(sp)
  ADDI s1, zero, 10
  FLW fs0, 172(sp)
  FMUL.S fs1, fs0, fs4
  FLW fs0, 132(sp)
  FLW fs2, 152(sp)
  FADD.S fs0, fs0, fs2
  FSW fs0, 128(sp)
  FLW fs0, 188(sp)
  FADD.S fs0, fs0, fs1
  FSW fs0, 148(sp)
  FLW fs0, 96(sp)
  FLW fs1, 128(sp)
  FSUB.S fs0, fs1, fs0
  FSW fs0, 124(sp)
  FLW fs0, 96(sp)
  FLW fs1, 148(sp)
  FSUB.S fs1, fs1, fs0
  FLW fs0, 124(sp)
  FLW fs2, 124(sp)
  FMUL.S fs0, fs0, fs2
  FSW fs0, 120(sp)
  FMUL.S fs1, fs1, fs1
  FLW fs0, 120(sp)
  FADD.S fs0, fs1, fs0
  FSW fs0, 116(sp)
  FLW fs0, 48(sp)
  FLW fs1, 116(sp)
  FADD.S fs0, fs0, fs1
  FSW fs0, 180(sp)
  FLW fs0, 116(sp)
  FLW fs1, 156(sp)
  FMUL.S fs0, fs1, fs0
  FSW fs0, 112(sp)
  FLW fs0, 44(sp)
  FLW fs1, 116(sp)
  FDIV.S fs1, fs1, fs0
  FLW fs0, 180(sp)
  FLW fs2, 112(sp)
  FDIV.S fs0, fs2, fs0
  FSW fs0, 104(sp)
  FLW fs0, 92(sp)
  FADD.S fs1, fs1, fs0
  FLW fs0, 104(sp)
  FADD.S fs1, fs1, fs0
  # implict jump to bb37
bb37:   # loop depth 5
  ADDIW s1, s1, -1
  FLW fs0, 116(sp)
  FDIV.S fs0, fs0, fs1
  FSW fs0, 88(sp)
  FLW fs0, 88(sp)
  FADD.S fs1, fs1, fs0
  FLW fs0, 156(sp)
  FDIV.S fs1, fs1, fs0
  BNE s1, zero, bb47
  # implict jump to bb38
bb38:   # loop depth 4
  FLW fs0, 100(sp)
  FLW fs2, 128(sp)
  FSUB.S fs0, fs2, fs0
  FSW fs0, 72(sp)
  LA s5, .CONSTANT.7.9
  FLW fs0, 100(sp)
  FLW fs2, 148(sp)
  FSUB.S fs0, fs2, fs0
  FSW fs0, 76(sp)
  ADDI s1, zero, 10
  FLW fs0, 0(s5)
  FSW fs0, 28(sp)
  FLW fs0, 28(sp)
  FSUB.S fs0, fs1, fs0
  FSW fs0, 80(sp)
  FLW fs0, 72(sp)
  FLW fs1, 72(sp)
  FMUL.S fs0, fs0, fs1
  FSW fs0, 36(sp)
  FLW fs0, 76(sp)
  FLW fs1, 76(sp)
  FMUL.S fs1, fs0, fs1
  FLW fs0, 36(sp)
  FADD.S fs0, fs1, fs0
  FSW fs0, 4(sp)
  FLW fs0, 48(sp)
  FLW fs1, 4(sp)
  FADD.S fs0, fs0, fs1
  FSW fs0, 12(sp)
  FLW fs0, 4(sp)
  FLW fs1, 156(sp)
  FMUL.S fs0, fs1, fs0
  FSW fs0, 8(sp)
  FLW fs0, 44(sp)
  FLW fs1, 4(sp)
  FDIV.S fs1, fs1, fs0
  FLW fs0, 12(sp)
  FLW fs2, 8(sp)
  FDIV.S fs0, fs2, fs0
  FSW fs0, 16(sp)
  FLW fs0, 92(sp)
  FADD.S fs1, fs1, fs0
  FLW fs0, 16(sp)
  FADD.S fs1, fs1, fs0
  # implict jump to bb39
bb39:   # loop depth 5
  ADDIW s1, s1, -1
  FLW fs0, 4(sp)
  FDIV.S fs0, fs0, fs1
  FSW fs0, 84(sp)
  FLW fs0, 84(sp)
  FADD.S fs1, fs1, fs0
  FLW fs0, 156(sp)
  FDIV.S fs1, fs1, fs0
  BNE s1, zero, bb46
  # implict jump to bb40
bb40:   # loop depth 4
  LA s1, .CONSTANT.7.10
  FLW fs0, 0(s1)
  FSW fs0, 32(sp)
  FLW fs0, 32(sp)
  FSUB.S fs1, fs1, fs0
  FLW fs0, 80(sp)
  FLT.S s1, fs0, fs1
  BNE s1, zero, bb45
  # implict jump to bb41
bb41:   # loop depth 4
  FSW fs1, 320(sp)
  FSW fs5, 324(sp)
  # implict jump to bb42
bb42:   # loop depth 4
  LA s1, .CONSTANT.7.0
  FLW fs1, 320(sp)
  FLW fs0, 0(s1)
  FSW fs0, 24(sp)
  FLW fs0, 24(sp)
  FLT.S s1, fs1, fs0
  BNE s1, zero, bb44
  # implict jump to bb43
bb43:   # loop depth 4
  FADD.S fs4, fs4, fs1
  ADDIW s2, s2, 1
  JAL zero, bb24
bb44:   # loop depth 3
  FLW fs1, 324(sp)
  JAL zero, bb26
bb45:   # loop depth 4
  FLW fs0, 80(sp)
  FSW fs0, 320(sp)
  LA s1, .CONSTANT.7.1
  FLW fs1, 0(s1)
  FSW fs1, 324(sp)
  JAL zero, bb42
bb46:   # loop depth 5
  JAL zero, bb39
bb47:   # loop depth 5
  JAL zero, bb37
bb48:   # loop depth 3
  FSGNJ.S fa0, fs1, fs1
  JAL zero, bb23
bb49:   # loop depth 3
  FSGNJ.S fa0, fs1, fs1
  JAL zero, bb21
bb50:   # loop depth 3
  FLW fa0, 168(sp)
  FDIV.S fa0, fs1, fa0
  FCVT.W.S s1, fa0, rtz
  FCVT.S.W fa0, s1
  FLW fs0, 168(sp)
  FMUL.S fa0, fa0, fs0
  FSUB.S fa0, fs1, fa0
  JAL zero, bb19
bb51:   # loop depth 3
  JAL zero, bb17
bb52:   # loop depth 3
  JAL zero, bb15
bb53:   # loop depth 3
  FLW fa0, 168(sp)
  FDIV.S fs3, fs2, fa0
  FCVT.W.S s1, fs3, rtz
  FCVT.S.W fs3, s1
  FLW fa0, 168(sp)
  FMUL.S fs3, fs3, fa0
  FSUB.S fs2, fs2, fs3
  JAL zero, bb13
bb54:   # loop depth 3
  LA s1, seed
  LUI s2, 24414
  LA s5, seed
  ADDIW s2, s2, 263
  LW s1, 0(s1)
  ADDW s1, s1, s2
  SW s1, 0(s5)
  JAL zero, bb11
