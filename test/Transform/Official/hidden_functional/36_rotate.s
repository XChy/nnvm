.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global my_sin_impl
.global main
.section .bss


image:
.space 4194304




.section .data
height:
.word 0x00000000
width:
.word 0x00000000

.CONSTANT.7.0:
.word 0x358637bd
.CONSTANT.7.1:
.word 0x40400000
.CONSTANT.7.2:
.word 0x40c90fdb
.CONSTANT.7.3:
.word 0x40490fdb
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
  ADDI sp, sp, -208
  SD ra, 16(sp)
  SD s0, 24(sp)
  SD s1, 32(sp)
  SD s2, 40(sp)
  FSD fs4, 48(sp)
  SD s3, 56(sp)
  SD s4, 64(sp)
  SD s5, 72(sp)
  SD s6, 80(sp)
  SD s7, 88(sp)
  SD s8, 96(sp)
  SD s9, 104(sp)
  FSD fs0, 112(sp)
  FSD fs1, 120(sp)
  FSD fs2, 128(sp)
  FSD fs3, 136(sp)
  FSD fs5, 144(sp)
  FSD fs6, 152(sp)
  FSD fs7, 160(sp)
  FSD fs8, 168(sp)
  FSD fs9, 176(sp)
  FSD fs10, 184(sp)
  FSD fs11, 192(sp)
  CALL getfloat
  FSGNJ.D fs4, fa0, fa0
  CALL getch
  CALL getch
  ADD s0, a0, zero
  XORI s0, s0, 80
  BNE s0, zero, bb56
  # implict jump to bb7
bb7:   # loop depth 0
  CALL getch
  ADD s0, a0, zero
  XORI s0, s0, 50
  SLTU s0, zero, s0
  # implict jump to bb8
bb8:   # loop depth 0
  BNE s0, zero, bb55
  # implict jump to bb9
bb9:   # loop depth 0
  LA s1, width
  CALL getint
  ADD s0, a0, zero
  LA s2, height
  SW s0, 0(s1)
  LA s3, width
  ADDI s1, zero, 1024
  ADDI s4, zero, 1024
  CALL getint
  ADD s0, a0, zero
  SW s0, 0(s2)
  SLT s1, s1, s0
  LW s0, 0(s3)
  SLT s0, s4, s0
  OR s0, s0, s1
  BNE s0, zero, bb54
  # implict jump to bb10
bb10:   # loop depth 0
  CALL getint
  ADD s0, a0, zero
  XORI s0, s0, 255
  SLTU s0, zero, s0
  # implict jump to bb11
bb11:   # loop depth 0
  BNE s0, zero, bb53
  # implict jump to bb12
bb12:   # loop depth 0
  LA s0, height
  LW s0, 0(s0)
  BLT zero, s0, bb46
  # implict jump to bb13
bb13:   # loop depth 0
  ADD a0, zero, zero
  # implict jump to bb14
bb14:   # loop depth 0
  BLT a0, zero, bb45
  # implict jump to bb15
bb15:   # loop depth 0
  ADDI a0, zero, 80
  LA s0, width
  LA s1, height
  LA s2, height
  CALL putch
  ADDI a0, zero, 50
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  LW a0, 0(s0)
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LW a0, 0(s1)
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDI a0, zero, 255
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW s0, 0(s2)
  BLT zero, s0, bb17
  # implict jump to bb16
bb16:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 16(sp)
  LD s0, 24(sp)
  LD s1, 32(sp)
  LD s2, 40(sp)
  FLD fs4, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD s5, 72(sp)
  LD s6, 80(sp)
  LD s7, 88(sp)
  LD s8, 96(sp)
  LD s9, 104(sp)
  FLD fs0, 112(sp)
  FLD fs1, 120(sp)
  FLD fs2, 128(sp)
  FLD fs3, 136(sp)
  FLD fs5, 144(sp)
  FLD fs6, 152(sp)
  FLD fs7, 160(sp)
  FLD fs8, 168(sp)
  FLD fs9, 176(sp)
  FLD fs10, 184(sp)
  FLD fs11, 192(sp)
  ADDI sp, sp, 208
  JALR zero, 0(ra)
bb17:   # loop depth 0
  LA s0, .CONSTANT.7.2
  LA s2, .CONSTANT.7.2
  LA s3, .CONSTANT.7.3
  LA s4, .CONSTANT.7.3
  FLW fs0, 0(s0)
  ADDI s0, zero, 2
  FCVT.S.W fs2, s0
  ADD s1, zero, zero
  FLW fs1, 0(s2)
  FLW fs3, 0(s3)
  FSGNJ.S fs7, fs0, fs1
  FLW fs5, 0(s4)
  FDIV.S fs1, fs4, fs7
  FSGNJN.S fs0, fs7, fs7
  FLT.S s0, fs7, fs4
  FSGNJ.S fs8, fs3, fs5
  FLT.S s2, fs4, fs0
  FDIV.S fs2, fs8, fs2
  FSGNJN.S fs9, fs8, fs8
  OR s2, s0, s2
  FCVT.W.S s0, fs1, rtz
  FADD.S fs2, fs4, fs2
  FCVT.S.W fs1, s0
  FMUL.S fs1, fs1, fs7
  FDIV.S fs3, fs2, fs7
  FLT.S s3, fs2, fs0
  FLT.S s0, fs7, fs2
  FSUB.S fs5, fs4, fs1
  OR s3, s0, s3
  FCVT.W.S s0, fs3, rtz
  FCVT.S.W fs0, s0
  FMUL.S fs0, fs0, fs7
  FSUB.S fs3, fs2, fs0
  # implict jump to bb18
bb18:   # loop depth 1
  LA s0, width
  LW s0, 0(s0)
  BLT zero, s0, bb21
  # implict jump to bb19
bb19:   # loop depth 1
  LA s0, height
  ADDI a0, zero, 10
  ADDIW s1, s1, 1
  CALL putch
  LW s0, 0(s0)
  BLT s1, s0, bb20
  JAL zero, bb16
bb20:   # loop depth 1
  JAL zero, bb18
bb21:   # loop depth 1
  ADD s0, zero, zero
  # implict jump to bb22
bb22:   # loop depth 2
  BNE s2, zero, bb44
  # implict jump to bb23
bb23:   # loop depth 2
  FSGNJ.S fs1, fs4, fs4
  # implict jump to bb24
bb24:   # loop depth 2
  FSUB.S fs0, fs1, fs7
  FLT.S s4, fs8, fs1
  BNE s4, zero, bb43
  # implict jump to bb25
bb25:   # loop depth 2
  FSGNJ.S fs0, fs1, fs1
  # implict jump to bb26
bb26:   # loop depth 2
  FADD.S fa0, fs0, fs7
  FLT.S s4, fs0, fs9
  BNE s4, zero, bb42
  # implict jump to bb27
bb27:   # loop depth 2
  FSGNJ.S fa0, fs0, fs0
  # implict jump to bb28
bb28:   # loop depth 2
  CALL my_sin_impl
  FSGNJ.D fs6, fa0, fa0
  BNE s3, zero, bb41
  # implict jump to bb29
bb29:   # loop depth 2
  FSGNJ.S fs1, fs2, fs2
  # implict jump to bb30
bb30:   # loop depth 2
  FSUB.S fs0, fs1, fs7
  FLT.S s4, fs8, fs1
  BNE s4, zero, bb40
  # implict jump to bb31
bb31:   # loop depth 2
  FSGNJ.S fs0, fs1, fs1
  # implict jump to bb32
bb32:   # loop depth 2
  FADD.S fa0, fs0, fs7
  FLT.S s4, fs0, fs9
  BNE s4, zero, bb39
  # implict jump to bb33
bb33:   # loop depth 2
  FSGNJ.S fa0, fs0, fs0
  # implict jump to bb34
bb34:   # loop depth 2
  LA s4, width
  LA s5, height
  CALL my_sin_impl
  LW a0, 0(s4)
  FSGNJ.D fs0, fa0, fa0
  LW s5, 0(s5)
  SRAIW s4, a0, 31
  SRLIW s4, s4, 31
  ADD s4, a0, s4
  SRAIW s6, s5, 31
  SRAIW s4, s4, 1
  SRLIW s7, s6, 31
  SUBW s6, s0, s4
  ADD s7, s5, s7
  FCVT.S.W fs1, s6
  SRAIW s6, s7, 1
  FCVT.S.W fs10, s4
  FSW fs10, 0(sp)
  SUBW s4, s1, s6
  FMUL.S fs10, fs1, fs0
  FCVT.S.W fs11, s4
  FMUL.S fs1, fs1, fs6
  FSW fs1, 4(sp)
  FMUL.S fs1, fs11, fs6
  FMUL.S fs6, fs11, fs0
  FCVT.S.W fs11, s6
  FSUB.S fs0, fs10, fs1
  FLW fs1, 4(sp)
  FADD.S fs1, fs1, fs6
  FLW fs6, 0(sp)
  FADD.S fs0, fs0, fs6
  FADD.S fs1, fs1, fs11
  FCVT.W.S s4, fs0, rtz
  FCVT.W.S s6, fs1, rtz
  SLT s8, s4, a0
  SLT s7, s4, zero
  XORI s8, s8, 1
  SLT s9, s6, s5
  SLT s5, s6, zero
  OR s7, s7, s8
  XORI s8, s9, 1
  OR s5, s7, s5
  OR s5, s5, s8
  BNE s5, zero, bb38
  # implict jump to bb35
bb35:   # loop depth 2
  MULW a0, s6, a0
  LA s5, image
  ADDW a0, a0, s4
  SH2ADD a0, a0, s5
  LW a0, 0(a0)
  # implict jump to bb36
bb36:   # loop depth 2
  LA s4, width
  ADDIW s0, s0, 1
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LW s4, 0(s4)
  BLT s0, s4, bb37
  JAL zero, bb19
bb37:   # loop depth 2
  JAL zero, bb22
bb38:   # loop depth 2
  ADD a0, zero, zero
  JAL zero, bb36
bb39:   # loop depth 2
  JAL zero, bb34
bb40:   # loop depth 2
  JAL zero, bb32
bb41:   # loop depth 2
  FSGNJ.S fs1, fs3, fs3
  JAL zero, bb30
bb42:   # loop depth 2
  JAL zero, bb28
bb43:   # loop depth 2
  JAL zero, bb26
bb44:   # loop depth 2
  FSGNJ.S fs1, fs5, fs5
  JAL zero, bb24
bb45:   # loop depth 0
  ADDI a0, zero, -1
  LD ra, 16(sp)
  LD s0, 24(sp)
  LD s1, 32(sp)
  LD s2, 40(sp)
  FLD fs4, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD s5, 72(sp)
  LD s6, 80(sp)
  LD s7, 88(sp)
  LD s8, 96(sp)
  LD s9, 104(sp)
  FLD fs0, 112(sp)
  FLD fs1, 120(sp)
  FLD fs2, 128(sp)
  FLD fs3, 136(sp)
  FLD fs5, 144(sp)
  FLD fs6, 152(sp)
  FLD fs7, 160(sp)
  FLD fs8, 168(sp)
  FLD fs9, 176(sp)
  FLD fs10, 184(sp)
  FLD fs11, 192(sp)
  ADDI sp, sp, 208
  JALR zero, 0(ra)
bb46:   # loop depth 0
  ADD s2, zero, zero
  # implict jump to bb47
bb47:   # loop depth 1
  LA s0, width
  LW s0, 0(s0)
  BLT zero, s0, bb50
  # implict jump to bb48
bb48:   # loop depth 1
  LA s0, height
  ADDIW s2, s2, 1
  LW s0, 0(s0)
  BLT s2, s0, bb49
  JAL zero, bb13
bb49:   # loop depth 1
  JAL zero, bb47
bb50:   # loop depth 1
  ADD s0, zero, zero
  # implict jump to bb51
bb51:   # loop depth 2
  LA s1, width
  LA s5, image
  LA s6, width
  LW s3, 0(s1)
  ADDIW s1, s0, 1
  MULW s4, s2, s3
  CALL getint
  ADD s3, a0, zero
  ADDW s0, s4, s0
  SH2ADD s0, s0, s5
  SW s3, 0(s0)
  LW s0, 0(s6)
  BLT s1, s0, bb52
  JAL zero, bb48
bb52:   # loop depth 2
  ADD s0, s1, zero
  JAL zero, bb51
bb53:   # loop depth 0
  ADDI a0, zero, -1
  JAL zero, bb14
bb54:   # loop depth 0
  ADDI s0, zero, 1
  JAL zero, bb11
bb55:   # loop depth 0
  ADDI a0, zero, -1
  JAL zero, bb14
bb56:   # loop depth 0
  ADDI s0, zero, 1
  JAL zero, bb8
