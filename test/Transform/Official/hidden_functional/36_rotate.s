.global my_sin_impl
.global main
.global write_pgm
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
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  FSD fs0, 64(sp)
  CALL getfloat
  FSGNJ.D fs0, fa0, fa0
  CALL getch
  CALL getch
  ADD s0, a0, zero
  XORI s0, s0, 80
  BNE s0, zero, bb30
  # implict jump to bb7
bb7:   # loop depth 0
  CALL getch
  ADD s0, a0, zero
  XORI s0, s0, 50
  SLTU s0, zero, s0
  # implict jump to bb8
bb8:   # loop depth 0
  BNE s0, zero, bb29
  # implict jump to bb9
bb9:   # loop depth 0
  CALL getint
  LA s1, width
  ADD s0, a0, zero
  LA s2, height
  SW s0, 0(s1)
  LA s1, width
  ADDI s3, zero, 1024
  CALL getint
  ADD s0, a0, zero
  SW s0, 0(s2)
  LW s1, 0(s1)
  BLT s3, s1, bb28
  # implict jump to bb10
bb10:   # loop depth 0
  ADDI s1, zero, 1024
  SLT s0, s1, s0
  # implict jump to bb11
bb11:   # loop depth 0
  BNE s0, zero, bb27
  # implict jump to bb12
bb12:   # loop depth 0
  CALL getint
  ADD s0, a0, zero
  XORI s0, s0, 255
  SLTU s0, zero, s0
  # implict jump to bb13
bb13:   # loop depth 0
  BNE s0, zero, bb26
  # implict jump to bb14
bb14:   # loop depth 0
  LA s0, height
  LW s0, 0(s0)
  BLT zero, s0, bb19
  # implict jump to bb15
bb15:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb16
bb16:   # loop depth 0
  BLT s0, zero, bb18
  # implict jump to bb17
bb17:   # loop depth 0
  FSGNJ.S fa0, fs0, fs0
  CALL write_pgm
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  FLD fs0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb18:   # loop depth 0
  ADDI a0, zero, -1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  FLD fs0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb19:   # loop depth 0
  ADD s2, zero, zero
  # implict jump to bb20
bb20:   # loop depth 1
  LA s0, width
  LW s0, 0(s0)
  BLT zero, s0, bb23
  # implict jump to bb21
bb21:   # loop depth 1
  LA s0, height
  ADDIW s2, s2, 1
  LW s0, 0(s0)
  BLT s2, s0, bb22
  JAL zero, bb15
bb22:   # loop depth 1
  JAL zero, bb20
bb23:   # loop depth 1
  ADD s0, zero, zero
  # implict jump to bb24
bb24:   # loop depth 2
  LA s1, width
  LA s6, image
  LA s5, width
  LW s3, 0(s1)
  ADDIW s1, s0, 1
  MULW s4, s2, s3
  CALL getint
  ADD s3, a0, zero
  ADDW s0, s4, s0
  SLLIW s0, s0, 2
  ADD s0, s6, s0
  SW s3, 0(s0)
  LW s0, 0(s5)
  BLT s1, s0, bb25
  JAL zero, bb21
bb25:   # loop depth 2
  ADD s0, s1, zero
  JAL zero, bb24
bb26:   # loop depth 0
  ADDI s0, zero, -1
  JAL zero, bb16
bb27:   # loop depth 0
  ADDI s0, zero, 1
  JAL zero, bb13
bb28:   # loop depth 0
  ADDI s0, zero, 1
  JAL zero, bb11
bb29:   # loop depth 0
  ADDI s0, zero, -1
  JAL zero, bb16
bb30:   # loop depth 0
  ADDI s0, zero, 1
  JAL zero, bb8
write_pgm:   # loop depth 0
  ADDI sp, sp, -176
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  FSD fs0, 72(sp)
  FSD fs1, 80(sp)
  FSD fs2, 88(sp)
  FSD fs3, 96(sp)
  FSD fs4, 104(sp)
  FSD fs5, 112(sp)
  FSD fs6, 120(sp)
  FSD fs7, 128(sp)
  FSD fs8, 136(sp)
  FSD fs9, 144(sp)
  FSD fs10, 152(sp)
  FSD fs11, 160(sp)
  ADDI a0, zero, 80
  FSGNJ.D fs6, fa0, fa0
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
  BLT zero, s0, bb33
  # implict jump to bb32
bb32:   # loop depth 0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  FLD fs0, 72(sp)
  FLD fs1, 80(sp)
  FLD fs2, 88(sp)
  FLD fs3, 96(sp)
  FLD fs4, 104(sp)
  FLD fs5, 112(sp)
  FLD fs6, 120(sp)
  FLD fs7, 128(sp)
  FLD fs8, 136(sp)
  FLD fs9, 144(sp)
  FLD fs10, 152(sp)
  FLD fs11, 160(sp)
  ADDI sp, sp, 176
  JALR zero, 0(ra)
bb33:   # loop depth 0
  LA s0, .CONSTANT.7.2
  LA s2, .CONSTANT.7.2
  LA s3, .CONSTANT.7.3
  LA s4, .CONSTANT.7.3
  FLW fs0, 0(s0)
  ADD s1, zero, zero
  FLW fs1, 0(s2)
  FLW fs2, 0(s3)
  FSGNJ.S fs0, fs0, fs1
  FLW fs1, 0(s4)
  FSGNJ.S fs1, fs2, fs1
  # implict jump to bb34
bb34:   # loop depth 1
  LA s0, width
  LW s0, 0(s0)
  BLT zero, s0, bb37
  # implict jump to bb35
bb35:   # loop depth 1
  ADDI a0, zero, 10
  LA s0, height
  ADDIW s1, s1, 1
  CALL putch
  LW s0, 0(s0)
  BLT s1, s0, bb36
  JAL zero, bb32
bb36:   # loop depth 1
  JAL zero, bb34
bb37:   # loop depth 1
  ADDI s0, zero, 2
  FLT.S s3, fs0, fs6
  FCVT.S.W fa0, s0
  FSGNJN.S fs2, fs0, fs0
  FSGNJN.S fs3, fs1, fs1
  ADD s0, zero, zero
  FDIV.S fa0, fs1, fa0
  FADD.S fs4, fs6, fa0
  FLT.S s4, fs0, fs4
  # implict jump to bb38
bb38:   # loop depth 2
  BNE s3, zero, bb75
  # implict jump to bb39
bb39:   # loop depth 2
  FLT.S s2, fs6, fs2
  # implict jump to bb40
bb40:   # loop depth 2
  BNE s2, zero, bb74
  # implict jump to bb41
bb41:   # loop depth 2
  FSGNJ.S fa0, fs6, fs6
  # implict jump to bb42
bb42:   # loop depth 2
  FLT.S s2, fs1, fa0
  BNE s2, zero, bb73
  # implict jump to bb43
bb43:   # loop depth 2
  # implict jump to bb44
bb44:   # loop depth 2
  FLT.S s2, fa0, fs3
  BNE s2, zero, bb72
  # implict jump to bb45
bb45:   # loop depth 2
  # implict jump to bb46
bb46:   # loop depth 2
  CALL my_sin_impl
  FSGNJ.D fs5, fa0, fa0
  BNE s4, zero, bb71
  # implict jump to bb47
bb47:   # loop depth 2
  FLT.S s2, fs4, fs2
  # implict jump to bb48
bb48:   # loop depth 2
  BNE s2, zero, bb70
  # implict jump to bb49
bb49:   # loop depth 2
  FSGNJ.S fa0, fs4, fs4
  # implict jump to bb50
bb50:   # loop depth 2
  FLT.S s2, fs1, fa0
  BNE s2, zero, bb69
  # implict jump to bb51
bb51:   # loop depth 2
  # implict jump to bb52
bb52:   # loop depth 2
  FLT.S s2, fa0, fs3
  BNE s2, zero, bb68
  # implict jump to bb53
bb53:   # loop depth 2
  # implict jump to bb54
bb54:   # loop depth 2
  LA s2, width
  LA s5, height
  CALL my_sin_impl
  LW s2, 0(s2)
  FSGNJ.D fs7, fa0, fa0
  LW s7, 0(s5)
  SRAIW a0, s2, 31
  SRLIW a0, a0, 31
  ADD a0, s2, a0
  SRAIW s5, s7, 31
  SRAIW a0, a0, 1
  SRLIW s6, s5, 31
  SUBW s5, s0, a0
  ADD s6, s7, s6
  FCVT.S.W fs8, s5
  SRAIW s5, s6, 1
  FCVT.S.W fs11, a0
  SUBW a0, s1, s5
  FMUL.S fs9, fs8, fs7
  FCVT.S.W fs10, a0
  FMUL.S fs8, fs8, fs5
  FMUL.S fs5, fs10, fs5
  FMUL.S fs7, fs10, fs7
  FCVT.S.W fs10, s5
  FSUB.S fs5, fs9, fs5
  FADD.S fs7, fs8, fs7
  FADD.S fs5, fs5, fs11
  FADD.S fs7, fs7, fs10
  FCVT.W.S s5, fs5, rtz
  FCVT.W.S s6, fs7, rtz
  BLT s5, zero, bb67
  # implict jump to bb55
bb55:   # loop depth 2
  SLT a0, s5, s2
  XORI a0, a0, 1
  # implict jump to bb56
bb56:   # loop depth 2
  BNE a0, zero, bb66
  # implict jump to bb57
bb57:   # loop depth 2
  SLT a0, s6, zero
  # implict jump to bb58
bb58:   # loop depth 2
  BNE a0, zero, bb65
  # implict jump to bb59
bb59:   # loop depth 2
  SLT a0, s6, s7
  XORI a0, a0, 1
  # implict jump to bb60
bb60:   # loop depth 2
  BNE a0, zero, bb64
  # implict jump to bb61
bb61:   # loop depth 2
  MULW a0, s6, s2
  LA s2, image
  ADDW a0, a0, s5
  SLLIW a0, a0, 2
  ADD a0, s2, a0
  LW a0, 0(a0)
  # implict jump to bb62
bb62:   # loop depth 2
  LA s2, width
  ADDIW s0, s0, 1
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LW s2, 0(s2)
  BLT s0, s2, bb63
  JAL zero, bb35
bb63:   # loop depth 2
  JAL zero, bb38
bb64:   # loop depth 2
  ADD a0, zero, zero
  JAL zero, bb62
bb65:   # loop depth 2
  ADDI a0, zero, 1
  JAL zero, bb60
bb66:   # loop depth 2
  ADDI a0, zero, 1
  JAL zero, bb58
bb67:   # loop depth 2
  ADDI a0, zero, 1
  JAL zero, bb56
bb68:   # loop depth 2
  FADD.S fa0, fa0, fs0
  JAL zero, bb54
bb69:   # loop depth 2
  FSUB.S fa0, fa0, fs0
  JAL zero, bb52
bb70:   # loop depth 2
  FDIV.S fa0, fs4, fs0
  FCVT.W.S s2, fa0, rtz
  FCVT.S.W fa0, s2
  FMUL.S fa0, fa0, fs0
  FSUB.S fa0, fs4, fa0
  JAL zero, bb50
bb71:   # loop depth 2
  ADDI s2, zero, 1
  JAL zero, bb48
bb72:   # loop depth 2
  FADD.S fa0, fa0, fs0
  JAL zero, bb46
bb73:   # loop depth 2
  FSUB.S fa0, fa0, fs0
  JAL zero, bb44
bb74:   # loop depth 2
  FDIV.S fa0, fs6, fs0
  FCVT.W.S s2, fa0, rtz
  FCVT.S.W fa0, s2
  FMUL.S fa0, fa0, fs0
  FSUB.S fa0, fs6, fa0
  JAL zero, bb42
bb75:   # loop depth 2
  ADDI s2, zero, 1
  JAL zero, bb40
