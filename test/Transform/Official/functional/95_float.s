.global assert_not
.global ok
.global error
.global circle_area
.global float_eq
.global main
.global assert
.global float_abs
.section .bss































.section .data
FIVE:
.word 0x00000005
THREE:
.word 0x00000003
RADIUS:
.word 0x40b00000
PI:
.word 0x40490fdb
EPS:
.word 0x358637bd
EVAL3:
.word 0x420a3ae7
PI_HEX:
.word 0x40490fdb
HEX2:
.word 0x3da00000
EVAL2:
.word 0x420a3ae7
MAX:
.word 0x3b9aca00
EVAL1:
.word 0x42be10fe
CONV1:
.word 0x43690000
FACT:
.word 0xc700e800
CONV2:
.word 0x457ff000
TWO:
.word 0x00000002
.CONSTANT.7.0:
.word 0x40490fdb
.CONSTANT.7.1:
.word 0x358637bd
.CONSTANT.7.2:
.word 0x40000000
.CONSTANT.7.3:
.word 0x3da00000
.CONSTANT.7.4:
.word 0xc700e800
.CONSTANT.7.5:
.word 0x40533333
.CONSTANT.7.6:
.word 0x00000000
.CONSTANT.7.7:
.word 0x3e99999a
.CONSTANT.7.8:
.word 0x3f800000
.CONSTANT.7.9:
.word 0x41200000
.CONSTANT.7.10:
.word 0x42be10fe
.CONSTANT.7.11:
.word 0x420a3ae7
.CONSTANT.7.12:
.word 0x3fc00000
.CONSTANT.7.13:
.word 0x40b00000
.CONSTANT.7.14:
.word 0x43690000
.CONSTANT.7.15:
.word 0x457ff000
.section .text
assert_not:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SD s0, 8(sp)
  ADD s0, a0, zero
  XOR s0, s0, zero
  SLTU s0, zero, s0
  BNE s0, zero, bb3
  # implict jump to bb1
bb1:
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 107
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  # implict jump to bb2
bb2:
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb3:
  ADDI a0, zero, 101
  CALL putch
  ADDI a0, zero, 114
  CALL putch
  ADDI a0, zero, 114
  CALL putch
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 114
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb2
ok:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 107
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
error:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  ADDI a0, zero, 101
  CALL putch
  ADDI a0, zero, 114
  CALL putch
  ADDI a0, zero, 114
  CALL putch
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 114
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
circle_area:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs0, 16(sp)
  FSD fs1, 24(sp)
  FSD fs2, 32(sp)
  FCVT.S.W fs0, a0
  LA s0, .CONSTANT.7.0
  FLW fs1, 0(s0)
  FMUL.S fs1, fs1, fs0
  FMUL.S fs0, fs1, fs0
  MULW s0, a0, a0
  FCVT.S.W fs1, s0
  LA s0, .CONSTANT.7.0
  FLW fs2, 0(s0)
  FMUL.S fs1, fs1, fs2
  FADD.S fs0, fs0, fs1
  ADDI s0, zero, 2
  FCVT.S.W fs1, s0
  FDIV.S fs0, fs0, fs1
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  FLD fs2, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
float_eq:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs0, 16(sp)
  FSD fs1, 24(sp)
  FSUB.S fs0, fa0, fa1
  FCVT.S.L fs1, zero
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb12
  # implict jump to bb8
bb8:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb9
bb9:
  LA s0, .CONSTANT.7.1
  FLW fs0, 0(s0)
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb11
  # implict jump to bb10
bb10:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb11:
  ADDI s0, zero, 1
  FCVT.S.W fs0, s0
  LA s0, .CONSTANT.7.2
  FLW fs1, 0(s0)
  FMUL.S fs0, fs0, fs1
  ADDI s0, zero, 2
  FCVT.S.W fs1, s0
  FDIV.S fs0, fs0, fs1
  FCVT.W.S s0, fs0, rtz
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb12:
  FSGNJN.S fs0, fs0, fs0
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb9
main:
  ADDI sp, sp, -160
  FSD fs3, 0(sp)
  SD ra, 8(sp)
  SD s0, 16(sp)
  SD s1, 24(sp)
  SD s2, 32(sp)
  SD s3, 40(sp)
  SD s4, 48(sp)
  SD s5, 56(sp)
  SD s6, 64(sp)
  FSD fs0, 72(sp)
  FSD fs1, 80(sp)
  FSD fs2, 88(sp)
  FSD fs4, 96(sp)
  FSD fs5, 104(sp)
  LA s0, .CONSTANT.7.3
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FSUB.S fs1, fs1, fs2
  FCVT.S.L fs2, zero
  FLT.S s0, fs1, fs2
  BNE s0, zero, bb72
  # implict jump to bb14
bb14:
  FSGNJ.S fs3, fs1, fs1
  # implict jump to bb15
bb15:
  LA s0, .CONSTANT.7.1
  FLW fs1, 0(s0)
  FLT.S s0, fs3, fs1
  BNE s0, zero, bb71
  # implict jump to bb16
bb16:
  ADD s0, zero, zero
  # implict jump to bb17
bb17:
  XOR s0, s0, zero
  SLTU s0, zero, s0
  BNE s0, zero, bb70
  # implict jump to bb18
bb18:
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 107
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  # implict jump to bb19
bb19:
  LA s0, .CONSTANT.7.10
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.11
  FLW fs3, 0(s0)
  FSUB.S fs1, fs1, fs3
  FLT.S s0, fs1, fs2
  BNE s0, zero, bb69
  # implict jump to bb20
bb20:
  FSGNJ.S fs3, fs1, fs1
  # implict jump to bb21
bb21:
  LA s0, .CONSTANT.7.1
  FLW fs1, 0(s0)
  FLT.S s0, fs3, fs1
  BNE s0, zero, bb68
  # implict jump to bb22
bb22:
  ADD s0, zero, zero
  # implict jump to bb23
bb23:
  XOR s0, s0, zero
  SLTU s0, zero, s0
  BNE s0, zero, bb67
  # implict jump to bb24
bb24:
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 107
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  # implict jump to bb25
bb25:
  LA s0, .CONSTANT.7.11
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.11
  FLW fs3, 0(s0)
  FSUB.S fs1, fs1, fs3
  FLT.S s0, fs1, fs2
  BNE s0, zero, bb66
  # implict jump to bb26
bb26:
  FSGNJ.S fs3, fs1, fs1
  # implict jump to bb27
bb27:
  LA s0, .CONSTANT.7.1
  FLW fs1, 0(s0)
  FLT.S s0, fs3, fs1
  BNE s0, zero, bb65
  # implict jump to bb28
bb28:
  ADD s0, zero, zero
  # implict jump to bb29
bb29:
  XOR s0, s0, zero
  SLTU s0, zero, s0
  XORI s0, s0, 1
  XOR s0, s0, zero
  SLTU s0, zero, s0
  BNE s0, zero, bb64
  # implict jump to bb30
bb30:
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 107
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  # implict jump to bb31
bb31:
  LA s0, .CONSTANT.7.13
  FLW fs1, 0(s0)
  FCVT.W.S s0, fs1, rtz
  FCVT.S.W fs1, s0
  LA s1, .CONSTANT.7.0
  FLW fs3, 0(s1)
  FMUL.S fs3, fs3, fs1
  FMUL.S fs1, fs3, fs1
  MULW s0, s0, s0
  FCVT.S.W fs3, s0
  LA s0, .CONSTANT.7.0
  FLW fs4, 0(s0)
  FMUL.S fs3, fs3, fs4
  FADD.S fs1, fs1, fs3
  ADDI s0, zero, 2
  FCVT.S.W fs0, s0
  FDIV.S fs1, fs1, fs0
  ADDI s0, zero, 5
  FCVT.S.W fs3, s0
  LA s0, .CONSTANT.7.0
  FLW fs4, 0(s0)
  FMUL.S fs4, fs4, fs3
  FMUL.S fs3, fs4, fs3
  ADDI s0, zero, 25
  FCVT.S.W fs4, s0
  LA s0, .CONSTANT.7.0
  FLW fs5, 0(s0)
  FMUL.S fs4, fs4, fs5
  FADD.S fs3, fs3, fs4
  FDIV.S fs3, fs3, fs0
  FSUB.S fs1, fs1, fs3
  FLT.S s0, fs1, fs2
  BNE s0, zero, bb63
  # implict jump to bb32
bb32:
  FSGNJ.S fs3, fs1, fs1
  # implict jump to bb33
bb33:
  LA s0, .CONSTANT.7.1
  FLW fs1, 0(s0)
  FLT.S s0, fs3, fs1
  BNE s0, zero, bb62
  # implict jump to bb34
bb34:
  ADD s0, zero, zero
  # implict jump to bb35
bb35:
  XOR s0, s0, zero
  SLTU s0, zero, s0
  XORI s0, s0, 1
  XOR s0, s0, zero
  SLTU s0, zero, s0
  BNE s0, zero, bb61
  # implict jump to bb36
bb36:
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 107
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  # implict jump to bb37
bb37:
  LA s0, .CONSTANT.7.14
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.15
  FLW fs3, 0(s0)
  FSUB.S fs1, fs1, fs3
  FLT.S s0, fs1, fs2
  BNE s0, zero, bb60
  # implict jump to bb38
bb38:
  FSGNJ.S fs2, fs1, fs1
  # implict jump to bb39
bb39:
  LA s0, .CONSTANT.7.1
  FLW fs1, 0(s0)
  FLT.S s0, fs2, fs1
  BNE s0, zero, bb59
  # implict jump to bb40
bb40:
  ADD s0, zero, zero
  # implict jump to bb41
bb41:
  XOR s0, s0, zero
  SLTU s0, zero, s0
  BNE s0, zero, bb58
  # implict jump to bb42
bb42:
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 107
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  # implict jump to bb43
bb43:
  LA s0, .CONSTANT.7.12
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.6
  FLW fs2, 0(s0)
  FEQ.S s0, fs1, fs2
  XORI s0, s0, 1
  BNE s0, zero, bb57
  # implict jump to bb44
bb44:
  LA s0, .CONSTANT.7.5
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.6
  FLW fs2, 0(s0)
  FEQ.S s0, fs1, fs2
  XORI s0, s0, 1
  XORI s0, s0, 1
  XOR s0, s0, zero
  SLTU s0, zero, s0
  XORI s0, s0, 1
  XOR s0, s0, zero
  SLTU s0, zero, s0
  BNE s0, zero, bb56
  # implict jump to bb45
bb45:
  LA s0, .CONSTANT.7.6
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.6
  FLW fs2, 0(s0)
  FEQ.S s0, fs1, fs2
  XORI s0, s0, 1
  BNE s0, zero, bb55
  # implict jump to bb46
bb46:
  ADD s0, zero, zero
  # implict jump to bb47
bb47:
  BNE s0, zero, bb54
  # implict jump to bb48
bb48:
  LA s0, .CONSTANT.7.7
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.6
  FLW fs2, 0(s0)
  FEQ.S s0, fs1, fs2
  XORI s0, s0, 1
  BNE s0, zero, bb53
  # implict jump to bb49
bb49:
  LA s0, .CONSTANT.7.8
  FLW fs1, 0(s0)
  FSW fs1, 112(sp)
  ADDI s0, sp, 116
  FSW fs0, 0(s0)
  ADDI s0, sp, 120
  LA s1, .CONSTANT.7.6
  FLW fs1, 0(s1)
  FSW fs1, 0(s0)
  ADDI s0, sp, 124
  LA s1, .CONSTANT.7.6
  FLW fs1, 0(s1)
  FSW fs1, 0(s0)
  ADDI s0, sp, 128
  LA s1, .CONSTANT.7.6
  FLW fs1, 0(s1)
  FSW fs1, 0(s0)
  ADDI s0, sp, 132
  LA s1, .CONSTANT.7.6
  FLW fs1, 0(s1)
  FSW fs1, 0(s0)
  ADDI s0, sp, 136
  LA s1, .CONSTANT.7.6
  FLW fs1, 0(s1)
  FSW fs1, 0(s0)
  ADDI s0, sp, 140
  LA s1, .CONSTANT.7.6
  FLW fs1, 0(s1)
  FSW fs1, 0(s0)
  ADDI s0, sp, 144
  LA s1, .CONSTANT.7.6
  FLW fs1, 0(s1)
  FSW fs1, 0(s0)
  ADDI s0, sp, 148
  LA s1, .CONSTANT.7.6
  FLW fs1, 0(s1)
  FSW fs1, 0(s0)
  ADDI a0, sp, 112
  ADD a0, a0, zero
  CALL getfarray
  ADD s0, a0, zero
  ADD s1, zero, zero
  ADDI s2, zero, 1
  # implict jump to bb50
bb50:
  ADD s3, s2, zero
  ADD s4, s1, zero
  LUI s5, 244141
  ADDIW s5, s5, -1536
  SLT s5, s3, s5
  BNE s5, zero, bb52
  # implict jump to bb51
bb51:
  ADD a0, s0, zero
  ADDI a1, sp, 112
  ADD a1, a1, zero
  CALL putfarray
  ADD a0, zero, zero
  FLD fs3, 0(sp)
  LD ra, 8(sp)
  LD s0, 16(sp)
  LD s1, 24(sp)
  LD s2, 32(sp)
  LD s3, 40(sp)
  LD s4, 48(sp)
  LD s5, 56(sp)
  LD s6, 64(sp)
  FLD fs0, 72(sp)
  FLD fs1, 80(sp)
  FLD fs2, 88(sp)
  FLD fs4, 96(sp)
  FLD fs5, 104(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb52:
  CALL getfloat
  FSGNJ.D fs1, fa0, fa0
  LA s5, .CONSTANT.7.0
  FLW fs2, 0(s5)
  FMUL.S fs2, fs2, fs1
  FMUL.S fs2, fs2, fs1
  FCVT.W.S s5, fs1, rtz
  FCVT.S.W fs3, s5
  LA s6, .CONSTANT.7.0
  FLW fs4, 0(s6)
  FMUL.S fs4, fs4, fs3
  FMUL.S fs3, fs4, fs3
  MULW s5, s5, s5
  FCVT.S.W fs4, s5
  LA s5, .CONSTANT.7.0
  FLW fs5, 0(s5)
  FMUL.S fs4, fs4, fs5
  FADD.S fs3, fs3, fs4
  FDIV.S fs3, fs3, fs0
  SLLIW s5, s4, 2
  ADDI t5, sp, 112
  ADD s5, t5, s5
  FLW fs4, 0(s5)
  FADD.S fs1, fs4, fs1
  FSW fs1, 0(s5)
  FSGNJ.S fa0, fs2, fs2
  CALL putfloat
  ADDI a0, zero, 32
  CALL putch
  FCVT.W.S s5, fs3, rtz
  ADD a0, s5, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LA s5, .CONSTANT.7.9
  FLW fs1, 0(s5)
  LA s5, .CONSTANT.7.9
  FLW fs2, 0(s5)
  FSGNJN.S fs1, fs1, fs2
  FSGNJN.S fs1, fs1, fs1
  FCVT.S.W fs2, s3
  FMUL.S fs1, fs2, fs1
  FCVT.W.S s3, fs1, rtz
  ADDIW s4, s4, 1
  ADD s1, s4, zero
  ADD s2, s3, zero
  JAL zero, bb50
bb53:
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 107
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb49
bb54:
  ADDI a0, zero, 101
  CALL putch
  ADDI a0, zero, 114
  CALL putch
  ADDI a0, zero, 114
  CALL putch
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 114
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb48
bb55:
  ADDI s0, zero, 1
  JAL zero, bb47
bb56:
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 107
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb45
bb57:
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 107
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb44
bb58:
  ADDI a0, zero, 101
  CALL putch
  ADDI a0, zero, 114
  CALL putch
  ADDI a0, zero, 114
  CALL putch
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 114
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb43
bb59:
  ADDI s1, zero, 1
  FCVT.S.W fs1, s1
  LA s1, .CONSTANT.7.2
  FLW fs2, 0(s1)
  FMUL.S fs1, fs1, fs2
  FDIV.S fs1, fs1, fs0
  FCVT.W.S s1, fs1, rtz
  ADD s0, s1, zero
  JAL zero, bb41
bb60:
  FSGNJN.S fs1, fs1, fs1
  FSGNJ.S fs2, fs1, fs1
  JAL zero, bb39
bb61:
  ADDI a0, zero, 101
  CALL putch
  ADDI a0, zero, 114
  CALL putch
  ADDI a0, zero, 114
  CALL putch
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 114
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb37
bb62:
  ADDI s1, zero, 1
  FCVT.S.W fs1, s1
  LA s1, .CONSTANT.7.2
  FLW fs3, 0(s1)
  FMUL.S fs1, fs1, fs3
  FDIV.S fs1, fs1, fs0
  FCVT.W.S s1, fs1, rtz
  ADD s0, s1, zero
  JAL zero, bb35
bb63:
  FSGNJN.S fs1, fs1, fs1
  FSGNJ.S fs3, fs1, fs1
  JAL zero, bb33
bb64:
  ADDI a0, zero, 101
  CALL putch
  ADDI a0, zero, 114
  CALL putch
  ADDI a0, zero, 114
  CALL putch
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 114
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb31
bb65:
  ADDI s1, zero, 1
  FCVT.S.W fs1, s1
  LA s1, .CONSTANT.7.2
  FLW fs3, 0(s1)
  FMUL.S fs1, fs1, fs3
  ADDI s1, zero, 2
  FCVT.S.W fs3, s1
  FDIV.S fs1, fs1, fs3
  FCVT.W.S s1, fs1, rtz
  ADD s0, s1, zero
  JAL zero, bb29
bb66:
  FSGNJN.S fs1, fs1, fs1
  FSGNJ.S fs3, fs1, fs1
  JAL zero, bb27
bb67:
  ADDI a0, zero, 101
  CALL putch
  ADDI a0, zero, 114
  CALL putch
  ADDI a0, zero, 114
  CALL putch
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 114
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb25
bb68:
  ADDI s1, zero, 1
  FCVT.S.W fs1, s1
  LA s1, .CONSTANT.7.2
  FLW fs3, 0(s1)
  FMUL.S fs1, fs1, fs3
  ADDI s1, zero, 2
  FCVT.S.W fs3, s1
  FDIV.S fs1, fs1, fs3
  FCVT.W.S s1, fs1, rtz
  ADD s0, s1, zero
  JAL zero, bb23
bb69:
  FSGNJN.S fs1, fs1, fs1
  FSGNJ.S fs3, fs1, fs1
  JAL zero, bb21
bb70:
  ADDI a0, zero, 101
  CALL putch
  ADDI a0, zero, 114
  CALL putch
  ADDI a0, zero, 114
  CALL putch
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 114
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb19
bb71:
  ADDI s1, zero, 1
  FCVT.S.W fs1, s1
  LA s1, .CONSTANT.7.2
  FLW fs3, 0(s1)
  FMUL.S fs1, fs1, fs3
  ADDI s1, zero, 2
  FCVT.S.W fs3, s1
  FDIV.S fs1, fs1, fs3
  FCVT.W.S s1, fs1, rtz
  ADD s0, s1, zero
  JAL zero, bb17
bb72:
  FSGNJN.S fs1, fs1, fs1
  FSGNJ.S fs3, fs1, fs1
  JAL zero, bb15
assert:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SD s0, 8(sp)
  ADD s0, a0, zero
  XOR s0, s0, zero
  SLTU s0, zero, s0
  XORI s0, s0, 1
  XOR s0, s0, zero
  SLTU s0, zero, s0
  BNE s0, zero, bb76
  # implict jump to bb74
bb74:
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 107
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  # implict jump to bb75
bb75:
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb76:
  ADDI a0, zero, 101
  CALL putch
  ADDI a0, zero, 114
  CALL putch
  ADDI a0, zero, 114
  CALL putch
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 114
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb75
float_abs:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs0, 16(sp)
  FSD fs1, 24(sp)
  FSGNJ.D fs0, fa0, fa0
  FCVT.S.L fs1, zero
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb79
  # implict jump to bb78
bb78:
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb79:
  FSGNJN.S fs0, fs0, fs0
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
