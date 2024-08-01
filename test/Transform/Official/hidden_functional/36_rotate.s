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
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  FSD fs0, 56(sp)
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
  ADD s5, zero, zero
  # implict jump to bb16
bb16:
  BLT s5, zero, bb18
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
  LD s4, 40(sp)
  LD s5, 48(sp)
  FLD fs0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb18:
  ADDI a0, zero, -1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  FLD fs0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb19:
  ADD s0, zero, zero
  # implict jump to bb20
bb20:
  ADD s1, s0, zero
  LA s2, width
  LW s2, 0(s2)
  BLT zero, s2, bb23
  # implict jump to bb21
bb21:
  ADDIW s4, s1, 1
  LA s5, height
  LW s5, 0(s5)
  BLT s4, s5, bb22
  JAL zero, bb15
bb22:
  ADD s0, s4, zero
  JAL zero, bb20
bb23:
  ADD s2, zero, zero
  # implict jump to bb24
bb24:
  ADD s3, s2, zero
  LA s4, width
  LW s4, 0(s4)
  MULW s4, s1, s4
  ADDW s4, s4, s3
  SLLIW s4, s4, 2
  LA s5, image
  ADD s4, s5, s4
  CALL getint
  ADD s5, a0, zero
  SW s5, 0(s4)
  ADDIW s3, s3, 1
  LA s4, width
  LW s4, 0(s4)
  BLT s3, s4, bb25
  JAL zero, bb21
bb25:
  ADD s2, s3, zero
  JAL zero, bb24
bb26:
  ADDI s5, zero, -1
  JAL zero, bb16
bb27:
  ADDI s0, zero, 1
  JAL zero, bb13
bb28:
  ADDI s0, zero, 1
  JAL zero, bb11
bb29:
  ADDI s5, zero, -1
  JAL zero, bb16
bb30:
  ADDI s0, zero, 1
  JAL zero, bb8
write_pgm:
  ADDI sp, sp, -176
  SD ra, 8(sp)
  SD s0, 16(sp)
  SD s1, 24(sp)
  SD s2, 32(sp)
  SD s3, 40(sp)
  SD s4, 48(sp)
  SD s5, 56(sp)
  SD s6, 64(sp)
  SD s7, 72(sp)
  SD s8, 80(sp)
  SD s9, 88(sp)
  SD s10, 96(sp)
  FSD fs0, 104(sp)
  SD s11, 112(sp)
  FSD fs2, 120(sp)
  FSD fs4, 128(sp)
  FSD fs5, 136(sp)
  FSD fs1, 144(sp)
  FSD fs3, 152(sp)
  FSD fs6, 160(sp)
  FSGNJ.D fs0, fa0, fa0
  ADDI a0, zero, 80
  CALL putch
  ADDI a0, zero, 50
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  LA s4, width
  LW s4, 0(s4)
  ADD a0, s4, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LA s4, height
  LW s4, 0(s4)
  ADD a0, s4, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDI a0, zero, 255
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LA s4, height
  LW s4, 0(s4)
  BLT zero, s4, bb33
  # implict jump to bb32
bb32:
  LD ra, 8(sp)
  LD s0, 16(sp)
  LD s1, 24(sp)
  LD s2, 32(sp)
  LD s3, 40(sp)
  LD s4, 48(sp)
  LD s5, 56(sp)
  LD s6, 64(sp)
  LD s7, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  LD s10, 96(sp)
  FLD fs0, 104(sp)
  LD s11, 112(sp)
  FLD fs2, 120(sp)
  FLD fs4, 128(sp)
  FLD fs5, 136(sp)
  FLD fs1, 144(sp)
  FLD fs3, 152(sp)
  FLD fs6, 160(sp)
  ADDI sp, sp, 176
  JALR zero, 0(ra)
bb33:
  ADD s4, zero, zero
  # implict jump to bb34
bb34:
  ADD s5, s4, zero
  LA s6, width
  LW s6, 0(s6)
  BLT zero, s6, bb37
  # implict jump to bb35
bb35:
  ADDI a0, zero, 10
  CALL putch
  ADDIW s1, s5, 1
  LA s2, height
  LW s2, 0(s2)
  BLT s1, s2, bb36
  JAL zero, bb32
bb36:
  ADD s4, s1, zero
  JAL zero, bb34
bb37:
  LA s6, .CONSTANT.7.2
  FLW fs1, 0(s6)
  FLT.S t4, fs1, fs0
  SB t4, 0(sp)
  ADD s7, zero, zero
  # implict jump to bb38
bb38:
  ADD s8, s7, zero
  LB t4, 0(sp)
  BNE t4, zero, bb75
  # implict jump to bb39
bb39:
  LA s9, .CONSTANT.7.2
  FLW fs1, 0(s9)
  LA s9, .CONSTANT.7.2
  FLW fs2, 0(s9)
  FSGNJN.S fs1, fs1, fs2
  FLT.S s9, fs0, fs1
  # implict jump to bb40
bb40:
  BNE s9, zero, bb74
  # implict jump to bb41
bb41:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb42
bb42:
  LA s9, .CONSTANT.7.3
  FLW fs2, 0(s9)
  FLT.S s9, fs2, fs1
  BNE s9, zero, bb73
  # implict jump to bb43
bb43:
  FSGNJ.S fs2, fs1, fs1
  # implict jump to bb44
bb44:
  LA s9, .CONSTANT.7.3
  FLW fs1, 0(s9)
  LA s9, .CONSTANT.7.3
  FLW fs3, 0(s9)
  FSGNJN.S fs1, fs1, fs3
  FLT.S s9, fs2, fs1
  BNE s9, zero, bb72
  # implict jump to bb45
bb45:
  FSGNJ.S fs3, fs2, fs2
  # implict jump to bb46
bb46:
  FSGNJ.S fa0, fs3, fs3
  CALL my_sin_impl
  FSGNJ.D fs2, fa0, fa0
  ADDI s9, zero, 2
  FCVT.S.W fs3, s9
  LA s9, .CONSTANT.7.3
  FLW fs4, 0(s9)
  FDIV.S fs3, fs4, fs3
  FADD.S fs3, fs0, fs3
  LA s9, .CONSTANT.7.2
  FLW fs4, 0(s9)
  FLT.S s9, fs4, fs3
  BNE s9, zero, bb71
  # implict jump to bb47
bb47:
  LA s9, .CONSTANT.7.2
  FLW fs4, 0(s9)
  LA s9, .CONSTANT.7.2
  FLW fs5, 0(s9)
  FSGNJN.S fs4, fs4, fs5
  FLT.S s9, fs3, fs4
  # implict jump to bb48
bb48:
  BNE s9, zero, bb70
  # implict jump to bb49
bb49:
  FSGNJ.S fs4, fs3, fs3
  # implict jump to bb50
bb50:
  LA s9, .CONSTANT.7.3
  FLW fs3, 0(s9)
  FLT.S s9, fs3, fs4
  BNE s9, zero, bb69
  # implict jump to bb51
bb51:
  FSGNJ.S fs3, fs4, fs4
  # implict jump to bb52
bb52:
  FLT.S s9, fs3, fs1
  BNE s9, zero, bb68
  # implict jump to bb53
bb53:
  FSGNJ.S fs1, fs3, fs3
  # implict jump to bb54
bb54:
  FSGNJ.S fa0, fs1, fs1
  CALL my_sin_impl
  FSGNJ.D fs1, fa0, fa0
  LA s9, width
  LW s2, 0(s9)
  SRAIW s9, s2, 31
  SRLIW s9, s9, 31
  ADD s9, s2, s9
  SRAIW s9, s9, 1
  LA s10, height
  LW s0, 0(s10)
  SRAIW s10, s0, 31
  SRLIW s10, s10, 31
  ADD s10, s0, s10
  SRAIW s10, s10, 1
  SUBW s11, s8, s9
  SUBW s6, s5, s10
  FCVT.S.W fs3, s11
  FMUL.S fs4, fs3, fs1
  FCVT.S.W fs5, s6
  FMUL.S fs6, fs5, fs2
  FSUB.S fs4, fs4, fs6
  FCVT.S.W fs6, s9
  FADD.S fs4, fs4, fs6
  FCVT.W.S s1, fs4, rtz
  FMUL.S fs2, fs3, fs2
  FMUL.S fs1, fs5, fs1
  FADD.S fs1, fs2, fs1
  FCVT.S.W fs2, s10
  FADD.S fs1, fs1, fs2
  FCVT.W.S s3, fs1, rtz
  BLT s1, zero, bb67
  # implict jump to bb55
bb55:
  SLT s6, s1, s2
  XORI s6, s6, 1
  # implict jump to bb56
bb56:
  BNE s6, zero, bb66
  # implict jump to bb57
bb57:
  SLT s6, s3, zero
  # implict jump to bb58
bb58:
  BNE s6, zero, bb65
  # implict jump to bb59
bb59:
  SLT s0, s3, s0
  XORI s0, s0, 1
  # implict jump to bb60
bb60:
  BNE s0, zero, bb64
  # implict jump to bb61
bb61:
  MULW s0, s3, s2
  ADDW s0, s0, s1
  SLLIW s0, s0, 2
  LA s1, image
  ADD s0, s1, s0
  LW s0, 0(s0)
  # implict jump to bb62
bb62:
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDIW s0, s8, 1
  LA s1, width
  LW s1, 0(s1)
  BLT s0, s1, bb63
  JAL zero, bb35
bb63:
  ADD s7, s0, zero
  JAL zero, bb38
bb64:
  ADD s0, zero, zero
  JAL zero, bb62
bb65:
  ADDI s0, zero, 1
  JAL zero, bb60
bb66:
  ADDI s6, zero, 1
  JAL zero, bb58
bb67:
  ADDI s6, zero, 1
  JAL zero, bb56
bb68:
  LA s9, .CONSTANT.7.2
  FLW fs4, 0(s9)
  FADD.S fs3, fs3, fs4
  FSGNJ.S fs1, fs3, fs3
  JAL zero, bb54
bb69:
  LA s9, .CONSTANT.7.2
  FLW fs5, 0(s9)
  FSUB.S fs4, fs4, fs5
  FSGNJ.S fs3, fs4, fs4
  JAL zero, bb52
bb70:
  LA s9, .CONSTANT.7.2
  FLW fs5, 0(s9)
  FDIV.S fs5, fs3, fs5
  FCVT.W.S s9, fs5, rtz
  FCVT.S.W fs5, s9
  LA s9, .CONSTANT.7.2
  FLW fs6, 0(s9)
  FMUL.S fs5, fs5, fs6
  FSUB.S fs3, fs3, fs5
  FSGNJ.S fs4, fs3, fs3
  JAL zero, bb50
bb71:
  ADDI s9, zero, 1
  JAL zero, bb48
bb72:
  LA s9, .CONSTANT.7.2
  FLW fs4, 0(s9)
  FADD.S fs2, fs2, fs4
  FSGNJ.S fs3, fs2, fs2
  JAL zero, bb46
bb73:
  LA s9, .CONSTANT.7.2
  FLW fs3, 0(s9)
  FSUB.S fs1, fs1, fs3
  FSGNJ.S fs2, fs1, fs1
  JAL zero, bb44
bb74:
  LA s9, .CONSTANT.7.2
  FLW fs2, 0(s9)
  FDIV.S fs2, fs0, fs2
  FCVT.W.S s9, fs2, rtz
  FCVT.S.W fs2, s9
  LA s9, .CONSTANT.7.2
  FLW fs3, 0(s9)
  FMUL.S fs2, fs2, fs3
  FSUB.S fs2, fs0, fs2
  FSGNJ.S fs1, fs2, fs2
  JAL zero, bb42
bb75:
  ADDI s9, zero, 1
  JAL zero, bb40
