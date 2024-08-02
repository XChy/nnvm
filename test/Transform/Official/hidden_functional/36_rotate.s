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
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  FSD fs0, 40(sp)
  CALL getfloat
  FSGNJ.D fs0, fa0, fa0
  CALL getch
  CALL getch
  ADD s0, a0, zero
  XORI s0, s0, 80
  BNE s0, zero, bb30
  # implict jump to bb7
bb7:
  CALL getch
  ADD s0, a0, zero
  XORI s0, s0, 50
  SLTU s0, zero, s0
  # implict jump to bb8
bb8:
  BNE s0, zero, bb29
  # implict jump to bb9
bb9:
  CALL getint
  ADD s0, a0, zero
  LA s1, width
  SW s0, 0(s1)
  CALL getint
  ADD s0, a0, zero
  LA s1, height
  SW s0, 0(s1)
  LA s1, width
  LW s1, 0(s1)
  ADDI s2, zero, 1024
  BLT s2, s1, bb28
  # implict jump to bb10
bb10:
  ADDI s1, zero, 1024
  SLT s0, s1, s0
  # implict jump to bb11
bb11:
  BNE s0, zero, bb27
  # implict jump to bb12
bb12:
  CALL getint
  ADD s0, a0, zero
  XORI s0, s0, 255
  SLTU s0, zero, s0
  # implict jump to bb13
bb13:
  BNE s0, zero, bb26
  # implict jump to bb14
bb14:
  LA s0, height
  LW s0, 0(s0)
  BLT zero, s0, bb19
  # implict jump to bb15
bb15:
  ADD s0, zero, zero
  # implict jump to bb16
bb16:
  BLT s0, zero, bb18
  # implict jump to bb17
bb17:
  FSGNJ.S fa0, fs0, fs0
  CALL write_pgm
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  FLD fs0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb18:
  ADDI a0, zero, -1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  FLD fs0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb19:
  ADD s0, zero, zero
  # implict jump to bb20
bb20:
  LA s1, width
  LW s1, 0(s1)
  BLT zero, s1, bb23
  # implict jump to bb21
bb21:
  ADDIW s0, s0, 1
  LA s1, height
  LW s1, 0(s1)
  BLT s0, s1, bb22
  JAL zero, bb15
bb22:
  JAL zero, bb20
bb23:
  ADD s1, zero, zero
  # implict jump to bb24
bb24:
  LA s2, width
  LW s2, 0(s2)
  MULW s2, s0, s2
  ADDW s2, s2, s1
  SLLIW s2, s2, 2
  LA s3, image
  ADD s2, s3, s2
  CALL getint
  ADD s3, a0, zero
  SW s3, 0(s2)
  ADDIW s1, s1, 1
  LA s2, width
  LW s2, 0(s2)
  BLT s1, s2, bb25
  JAL zero, bb21
bb25:
  JAL zero, bb24
bb26:
  ADDI s0, zero, -1
  JAL zero, bb16
bb27:
  ADDI s0, zero, 1
  JAL zero, bb13
bb28:
  ADDI s0, zero, 1
  JAL zero, bb11
bb29:
  ADDI s0, zero, -1
  JAL zero, bb16
bb30:
  ADDI s0, zero, 1
  JAL zero, bb8
write_pgm:
  ADDI sp, sp, -128
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
  FSGNJ.D fs1, fa0, fa0
  ADDI a0, zero, 80
  CALL putch
  ADDI a0, zero, 50
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  LA a0, width
  LW a0, 0(a0)
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LA a0, height
  LW a0, 0(a0)
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDI a0, zero, 255
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LA s0, height
  LW s0, 0(s0)
  BLT zero, s0, bb33
  # implict jump to bb32
bb32:
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
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb33:
  ADD s0, zero, zero
  # implict jump to bb34
bb34:
  LA s1, width
  LW s1, 0(s1)
  BLT zero, s1, bb37
  # implict jump to bb35
bb35:
  ADDI a0, zero, 10
  CALL putch
  ADDIW s0, s0, 1
  LA s1, height
  LW s1, 0(s1)
  BLT s0, s1, bb36
  JAL zero, bb32
bb36:
  JAL zero, bb34
bb37:
  LA s1, .CONSTANT.7.2
  FLW fa0, 0(s1)
  FLT.S s1, fa0, fs1
  ADD s2, zero, zero
  # implict jump to bb38
bb38:
  BNE s1, zero, bb75
  # implict jump to bb39
bb39:
  LA s3, .CONSTANT.7.2
  FLW fa0, 0(s3)
  LA s3, .CONSTANT.7.2
  FLW fs0, 0(s3)
  FSGNJN.S fa0, fa0, fs0
  FLT.S s3, fs1, fa0
  # implict jump to bb40
bb40:
  BNE s3, zero, bb74
  # implict jump to bb41
bb41:
  FSGNJ.S fa0, fs1, fs1
  # implict jump to bb42
bb42:
  LA s3, .CONSTANT.7.3
  FLW fs0, 0(s3)
  FLT.S s3, fs0, fa0
  BNE s3, zero, bb73
  # implict jump to bb43
bb43:
  # implict jump to bb44
bb44:
  LA s3, .CONSTANT.7.3
  FLW fs0, 0(s3)
  LA s3, .CONSTANT.7.3
  FLW fs2, 0(s3)
  FSGNJN.S fs0, fs0, fs2
  FLT.S s3, fa0, fs0
  BNE s3, zero, bb72
  # implict jump to bb45
bb45:
  # implict jump to bb46
bb46:
  CALL my_sin_impl
  FSGNJ.D fs2, fa0, fa0
  ADDI s3, zero, 2
  FCVT.S.W fa0, s3
  LA s3, .CONSTANT.7.3
  FLW fs3, 0(s3)
  FDIV.S fa0, fs3, fa0
  FADD.S fa0, fs1, fa0
  LA s3, .CONSTANT.7.2
  FLW fs3, 0(s3)
  FLT.S s3, fs3, fa0
  BNE s3, zero, bb71
  # implict jump to bb47
bb47:
  LA s3, .CONSTANT.7.2
  FLW fs3, 0(s3)
  LA s3, .CONSTANT.7.2
  FLW fs4, 0(s3)
  FSGNJN.S fs3, fs3, fs4
  FLT.S s3, fa0, fs3
  # implict jump to bb48
bb48:
  BNE s3, zero, bb70
  # implict jump to bb49
bb49:
  # implict jump to bb50
bb50:
  LA s3, .CONSTANT.7.3
  FLW fs3, 0(s3)
  FLT.S s3, fs3, fa0
  BNE s3, zero, bb69
  # implict jump to bb51
bb51:
  # implict jump to bb52
bb52:
  FLT.S s3, fa0, fs0
  BNE s3, zero, bb68
  # implict jump to bb53
bb53:
  # implict jump to bb54
bb54:
  CALL my_sin_impl
  FSGNJ.D fs0, fa0, fa0
  LA a0, width
  LW s3, 0(a0)
  SRAIW a0, s3, 31
  SRLIW a0, a0, 31
  ADD a0, s3, a0
  SRAIW a0, a0, 1
  LA s4, height
  LW s6, 0(s4)
  SRAIW s4, s6, 31
  SRLIW s4, s4, 31
  ADD s4, s6, s4
  SRAIW s5, s4, 1
  SUBW s4, s2, a0
  SUBW s7, s0, s5
  FCVT.S.W fs3, s4
  FMUL.S fs4, fs3, fs0
  FCVT.S.W fs5, s7
  FMUL.S fs6, fs5, fs2
  FSUB.S fs4, fs4, fs6
  FCVT.S.W fs6, a0
  FADD.S fs4, fs4, fs6
  FCVT.W.S s4, fs4, rtz
  FMUL.S fs2, fs3, fs2
  FMUL.S fs0, fs5, fs0
  FADD.S fs0, fs2, fs0
  FCVT.S.W fs2, s5
  FADD.S fs0, fs0, fs2
  FCVT.W.S s5, fs0, rtz
  BLT s4, zero, bb67
  # implict jump to bb55
bb55:
  SLT a0, s4, s3
  XORI a0, a0, 1
  # implict jump to bb56
bb56:
  BNE a0, zero, bb66
  # implict jump to bb57
bb57:
  SLT a0, s5, zero
  # implict jump to bb58
bb58:
  BNE a0, zero, bb65
  # implict jump to bb59
bb59:
  SLT a0, s5, s6
  XORI a0, a0, 1
  # implict jump to bb60
bb60:
  BNE a0, zero, bb64
  # implict jump to bb61
bb61:
  MULW a0, s5, s3
  ADDW a0, a0, s4
  SLLIW a0, a0, 2
  LA s3, image
  ADD a0, s3, a0
  LW a0, 0(a0)
  # implict jump to bb62
bb62:
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDIW s2, s2, 1
  LA s3, width
  LW s3, 0(s3)
  BLT s2, s3, bb63
  JAL zero, bb35
bb63:
  JAL zero, bb38
bb64:
  ADD a0, zero, zero
  JAL zero, bb62
bb65:
  ADDI a0, zero, 1
  JAL zero, bb60
bb66:
  ADDI a0, zero, 1
  JAL zero, bb58
bb67:
  ADDI a0, zero, 1
  JAL zero, bb56
bb68:
  LA s3, .CONSTANT.7.2
  FLW fs0, 0(s3)
  FADD.S fa0, fa0, fs0
  JAL zero, bb54
bb69:
  LA s3, .CONSTANT.7.2
  FLW fs3, 0(s3)
  FSUB.S fa0, fa0, fs3
  JAL zero, bb52
bb70:
  LA s3, .CONSTANT.7.2
  FLW fs3, 0(s3)
  FDIV.S fs3, fa0, fs3
  FCVT.W.S s3, fs3, rtz
  FCVT.S.W fs3, s3
  LA s3, .CONSTANT.7.2
  FLW fs4, 0(s3)
  FMUL.S fs3, fs3, fs4
  FSUB.S fa0, fa0, fs3
  JAL zero, bb50
bb71:
  ADDI s3, zero, 1
  JAL zero, bb48
bb72:
  LA s3, .CONSTANT.7.2
  FLW fs2, 0(s3)
  FADD.S fa0, fa0, fs2
  JAL zero, bb46
bb73:
  LA s3, .CONSTANT.7.2
  FLW fs0, 0(s3)
  FSUB.S fa0, fa0, fs0
  JAL zero, bb44
bb74:
  LA s3, .CONSTANT.7.2
  FLW fa0, 0(s3)
  FDIV.S fa0, fs1, fa0
  FCVT.W.S s3, fa0, rtz
  FCVT.S.W fa0, s3
  LA s3, .CONSTANT.7.2
  FLW fs0, 0(s3)
  FMUL.S fa0, fa0, fs0
  FSUB.S fa0, fs1, fa0
  JAL zero, bb42
bb75:
  ADDI s3, zero, 1
  JAL zero, bb40
