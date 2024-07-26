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
.word 0x4700e814
.CONSTANT.7.4:
.word 0x40533333
.CONSTANT.7.5:
.word 0x00000000
.CONSTANT.7.6:
.word 0x3e99999a
.CONSTANT.7.7:
.word 0x3f800000
.CONSTANT.7.8:
.word 0x41200000
.CONSTANT.7.9:
.word 0x4271e715
.CONSTANT.7.10:
.word 0x3fc00000
.CONSTANT.7.11:
.word 0x40b00000
.CONSTANT.7.12:
.word 0xc5716000
.section .text
assert_not:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SD s0, 8(sp)
  ADD s0, a0, zero
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
  SD s8, 72(sp)
  FSD fs0, 80(sp)
  FSD fs1, 88(sp)
  FSD fs2, 96(sp)
  FSD fs3, 104(sp)
  FSD fs4, 112(sp)
  FSD fs5, 120(sp)
  FCVT.S.L fs1, zero
  LA s2, .CONSTANT.7.3
  FLW fs2, 0(s2)
  FLT.S s2, fs2, fs1
  BNE s2, zero, bb74
  # implict jump to bb14
bb14:
  LA s2, .CONSTANT.7.3
  FLW fs2, 0(s2)
  LA s2, .CONSTANT.7.3
  FLW fs3, 0(s2)
  FSGNJ.S fs2, fs2, fs3
  # implict jump to bb15
bb15:
  LA s2, .CONSTANT.7.1
  FLW fs3, 0(s2)
  FLT.S s2, fs2, fs3
  BNE s2, zero, bb73
  # implict jump to bb16
bb16:
  ADD s2, zero, zero
  # implict jump to bb17
bb17:
  BNE s2, zero, bb72
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
  LA s2, .CONSTANT.7.9
  FLW fs2, 0(s2)
  FLT.S s2, fs2, fs1
  BNE s2, zero, bb71
  # implict jump to bb20
bb20:
  LA s2, .CONSTANT.7.9
  FLW fs2, 0(s2)
  LA s2, .CONSTANT.7.9
  FLW fs3, 0(s2)
  FSGNJ.S fs2, fs2, fs3
  # implict jump to bb21
bb21:
  LA s2, .CONSTANT.7.1
  FLW fs3, 0(s2)
  FLT.S s2, fs2, fs3
  BNE s2, zero, bb70
  # implict jump to bb22
bb22:
  ADD s2, zero, zero
  # implict jump to bb23
bb23:
  BNE s2, zero, bb69
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
  LA s2, .CONSTANT.7.5
  FLW fs2, 0(s2)
  FLT.S s2, fs2, fs1
  BNE s2, zero, bb68
  # implict jump to bb26
bb26:
  LA s2, .CONSTANT.7.5
  FLW fs2, 0(s2)
  LA s2, .CONSTANT.7.5
  FLW fs3, 0(s2)
  FSGNJ.S fs2, fs2, fs3
  # implict jump to bb27
bb27:
  LA s2, .CONSTANT.7.1
  FLW fs3, 0(s2)
  FLT.S s2, fs2, fs3
  BNE s2, zero, bb67
  # implict jump to bb28
bb28:
  ADD s2, zero, zero
  # implict jump to bb29
bb29:
  SLTU s2, zero, s2
  XORI s2, s2, 1
  BNE s2, zero, bb66
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
  LA s2, .CONSTANT.7.11
  FLW fs2, 0(s2)
  FCVT.W.S s2, fs2, rtz
  FCVT.S.W fs2, s2
  LA s3, .CONSTANT.7.0
  FLW fs3, 0(s3)
  FMUL.S fs3, fs3, fs2
  FMUL.S fs2, fs3, fs2
  MULW s2, s2, s2
  FCVT.S.W fs3, s2
  LA s2, .CONSTANT.7.0
  FLW fs4, 0(s2)
  FMUL.S fs3, fs3, fs4
  FADD.S fs2, fs2, fs3
  ADDI s2, zero, 2
  FCVT.S.W fs0, s2
  FDIV.S fs2, fs2, fs0
  ADDI s2, zero, 5
  FCVT.S.W fs3, s2
  LA s2, .CONSTANT.7.0
  FLW fs4, 0(s2)
  FMUL.S fs4, fs4, fs3
  FMUL.S fs3, fs4, fs3
  ADDI s2, zero, 25
  FCVT.S.W fs4, s2
  LA s2, .CONSTANT.7.0
  FLW fs5, 0(s2)
  FMUL.S fs4, fs4, fs5
  FADD.S fs3, fs3, fs4
  FDIV.S fs3, fs3, fs0
  FSUB.S fs2, fs2, fs3
  FLT.S s2, fs2, fs1
  BNE s2, zero, bb65
  # implict jump to bb32
bb32:
  FSGNJ.S fs3, fs2, fs2
  # implict jump to bb33
bb33:
  LA s2, .CONSTANT.7.1
  FLW fs2, 0(s2)
  FLT.S s2, fs3, fs2
  BNE s2, zero, bb64
  # implict jump to bb34
bb34:
  ADD s2, zero, zero
  # implict jump to bb35
bb35:
  SLTU s2, zero, s2
  XORI s2, s2, 1
  BNE s2, zero, bb63
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
  LA s2, .CONSTANT.7.12
  FLW fs2, 0(s2)
  FLT.S s2, fs2, fs1
  BNE s2, zero, bb62
  # implict jump to bb38
bb38:
  LA s2, .CONSTANT.7.12
  FLW fs1, 0(s2)
  LA s2, .CONSTANT.7.12
  FLW fs2, 0(s2)
  FSGNJ.S fs1, fs1, fs2
  # implict jump to bb39
bb39:
  LA s2, .CONSTANT.7.1
  FLW fs2, 0(s2)
  FLT.S s2, fs1, fs2
  BNE s2, zero, bb61
  # implict jump to bb40
bb40:
  ADD s2, zero, zero
  # implict jump to bb41
bb41:
  BNE s2, zero, bb60
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
  LA s2, .CONSTANT.7.10
  FLW fs1, 0(s2)
  LA s2, .CONSTANT.7.5
  FLW fs2, 0(s2)
  FEQ.S s2, fs1, fs2
  XORI s2, s2, 1
  BNE s2, zero, bb59
  # implict jump to bb44
bb44:
  LA s2, .CONSTANT.7.4
  FLW fs1, 0(s2)
  LA s2, .CONSTANT.7.5
  FLW fs2, 0(s2)
  FEQ.S s2, fs1, fs2
  XORI s2, s2, 1
  XORI s2, s2, 1
  SLTU s2, zero, s2
  XORI s2, s2, 1
  BNE s2, zero, bb58
  # implict jump to bb45
bb45:
  LA s2, .CONSTANT.7.5
  FLW fs1, 0(s2)
  LA s2, .CONSTANT.7.5
  FLW fs2, 0(s2)
  FEQ.S s2, fs1, fs2
  XORI s2, s2, 1
  BNE s2, zero, bb57
  # implict jump to bb46
bb46:
  ADD s2, zero, zero
  # implict jump to bb47
bb47:
  BNE s2, zero, bb56
  # implict jump to bb48
bb48:
  LA s2, .CONSTANT.7.6
  FLW fs1, 0(s2)
  LA s2, .CONSTANT.7.5
  FLW fs2, 0(s2)
  FEQ.S s2, fs1, fs2
  XORI s2, s2, 1
  BNE s2, zero, bb55
  # implict jump to bb49
bb49:
  LA s2, .CONSTANT.7.7
  FLW fs1, 0(s2)
  FSW fs1, 128(sp)
  ADDI s2, sp, 132
  FSW fs0, 0(s2)
  ADDI s2, sp, 136
  LA s3, .CONSTANT.7.5
  FLW fs1, 0(s3)
  FSW fs1, 0(s2)
  ADDI s2, sp, 140
  LA s3, .CONSTANT.7.5
  FLW fs1, 0(s3)
  FSW fs1, 0(s2)
  ADDI s2, sp, 144
  LA s3, .CONSTANT.7.5
  FLW fs1, 0(s3)
  FSW fs1, 0(s2)
  ADDI s2, sp, 148
  LA s3, .CONSTANT.7.5
  FLW fs1, 0(s3)
  FSW fs1, 0(s2)
  ADDI s2, sp, 152
  LA s3, .CONSTANT.7.5
  FLW fs1, 0(s3)
  FSW fs1, 0(s2)
  ADDI s2, sp, 156
  LA s3, .CONSTANT.7.5
  FLW fs1, 0(s3)
  FSW fs1, 0(s2)
  ADDI s2, sp, 160
  LA s3, .CONSTANT.7.5
  FLW fs1, 0(s3)
  FSW fs1, 0(s2)
  ADDI s2, sp, 164
  LA s3, .CONSTANT.7.5
  FLW fs1, 0(s3)
  FSW fs1, 0(s2)
  ADDI a0, sp, 128
  ADD a0, a0, zero
  CALL getfarray
  ADD s2, a0, zero
  ADDI s3, zero, 1
  LUI s4, 244141
  ADDIW s4, s4, -1536
  SLT s3, s3, s4
  BNE s3, zero, bb51
  # implict jump to bb50
bb50:
  ADD a0, s2, zero
  ADDI a1, sp, 128
  ADD a1, a1, zero
  CALL putfarray
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  FLD fs0, 80(sp)
  FLD fs1, 88(sp)
  FLD fs2, 96(sp)
  FLD fs3, 104(sp)
  FLD fs4, 112(sp)
  FLD fs5, 120(sp)
  ADDI sp, sp, 176
  JALR zero, 0(ra)
bb51:
  ADDI s3, zero, 1
  ADD s4, zero, zero
  # implict jump to bb52
bb52:
  ADD s5, s4, zero
  ADD s6, s3, zero
  CALL getfloat
  FSGNJ.D fs1, fa0, fa0
  LA s7, .CONSTANT.7.0
  FLW fs2, 0(s7)
  FMUL.S fs2, fs2, fs1
  FMUL.S fs2, fs2, fs1
  FCVT.W.S s7, fs1, rtz
  FCVT.S.W fs3, s7
  LA s8, .CONSTANT.7.0
  FLW fs4, 0(s8)
  FMUL.S fs4, fs4, fs3
  FMUL.S fs3, fs4, fs3
  MULW s7, s7, s7
  FCVT.S.W fs4, s7
  LA s7, .CONSTANT.7.0
  FLW fs5, 0(s7)
  FMUL.S fs4, fs4, fs5
  FADD.S fs3, fs3, fs4
  FDIV.S fs3, fs3, fs0
  SLLIW s7, s5, 2
  ADDI t5, sp, 128
  ADD s7, t5, s7
  FLW fs4, 0(s7)
  FADD.S fs1, fs4, fs1
  FSW fs1, 0(s7)
  FSGNJ.S fa0, fs2, fs2
  CALL putfloat
  ADDI a0, zero, 32
  CALL putch
  FCVT.W.S s7, fs3, rtz
  ADD a0, s7, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LA s7, .CONSTANT.7.8
  FLW fs1, 0(s7)
  LA s7, .CONSTANT.7.8
  FLW fs2, 0(s7)
  FSGNJN.S fs1, fs1, fs2
  FSGNJN.S fs1, fs1, fs1
  FCVT.S.W fs2, s6
  FMUL.S fs1, fs2, fs1
  FCVT.W.S s1, fs1, rtz
  ADDIW s0, s5, 1
  # implict jump to bb53
bb53:
  LUI s5, 244141
  ADDIW s5, s5, -1536
  SLT s5, s1, s5
  BNE s5, zero, bb54
  JAL zero, bb50
bb54:
  ADD s3, s1, zero
  ADD s4, s0, zero
  JAL zero, bb52
bb55:
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 107
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb49
bb56:
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
bb57:
  ADDI s2, zero, 1
  JAL zero, bb47
bb58:
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 107
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb45
bb59:
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 107
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb44
bb60:
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
bb61:
  ADDI s3, zero, 1
  FCVT.S.W fs1, s3
  LA s3, .CONSTANT.7.2
  FLW fs2, 0(s3)
  FMUL.S fs1, fs1, fs2
  FDIV.S fs1, fs1, fs0
  FCVT.W.S s3, fs1, rtz
  ADD s2, s3, zero
  JAL zero, bb41
bb62:
  LA s2, .CONSTANT.7.12
  FLW fs2, 0(s2)
  LA s2, .CONSTANT.7.12
  FLW fs3, 0(s2)
  FSGNJN.S fs2, fs2, fs3
  FSGNJ.S fs1, fs2, fs2
  JAL zero, bb39
bb63:
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
bb64:
  ADDI s3, zero, 1
  FCVT.S.W fs2, s3
  LA s3, .CONSTANT.7.2
  FLW fs3, 0(s3)
  FMUL.S fs2, fs2, fs3
  FDIV.S fs2, fs2, fs0
  FCVT.W.S s3, fs2, rtz
  ADD s2, s3, zero
  JAL zero, bb35
bb65:
  FSGNJN.S fs2, fs2, fs2
  FSGNJ.S fs3, fs2, fs2
  JAL zero, bb33
bb66:
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
bb67:
  ADDI s3, zero, 1
  FCVT.S.W fs2, s3
  LA s3, .CONSTANT.7.2
  FLW fs3, 0(s3)
  FMUL.S fs2, fs2, fs3
  ADDI s3, zero, 2
  FCVT.S.W fs3, s3
  FDIV.S fs2, fs2, fs3
  FCVT.W.S s3, fs2, rtz
  ADD s2, s3, zero
  JAL zero, bb29
bb68:
  LA s2, .CONSTANT.7.5
  FLW fs3, 0(s2)
  LA s2, .CONSTANT.7.5
  FLW fs4, 0(s2)
  FSGNJN.S fs3, fs3, fs4
  FSGNJ.S fs2, fs3, fs3
  JAL zero, bb27
bb69:
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
bb70:
  ADDI s3, zero, 1
  FCVT.S.W fs2, s3
  LA s3, .CONSTANT.7.2
  FLW fs3, 0(s3)
  FMUL.S fs2, fs2, fs3
  ADDI s3, zero, 2
  FCVT.S.W fs3, s3
  FDIV.S fs2, fs2, fs3
  FCVT.W.S s3, fs2, rtz
  ADD s2, s3, zero
  JAL zero, bb23
bb71:
  LA s2, .CONSTANT.7.9
  FLW fs3, 0(s2)
  LA s2, .CONSTANT.7.9
  FLW fs4, 0(s2)
  FSGNJN.S fs3, fs3, fs4
  FSGNJ.S fs2, fs3, fs3
  JAL zero, bb21
bb72:
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
bb73:
  ADDI s3, zero, 1
  FCVT.S.W fs2, s3
  LA s3, .CONSTANT.7.2
  FLW fs3, 0(s3)
  FMUL.S fs2, fs2, fs3
  ADDI s3, zero, 2
  FCVT.S.W fs3, s3
  FDIV.S fs2, fs2, fs3
  FCVT.W.S s3, fs2, rtz
  ADD s2, s3, zero
  JAL zero, bb17
bb74:
  LA s2, .CONSTANT.7.3
  FLW fs3, 0(s2)
  LA s2, .CONSTANT.7.3
  FLW fs4, 0(s2)
  FSGNJN.S fs3, fs3, fs4
  FSGNJ.S fs2, fs3, fs3
  JAL zero, bb15
assert:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SD s0, 8(sp)
  ADD s0, a0, zero
  SLTU s0, zero, s0
  XORI s0, s0, 1
  BNE s0, zero, bb78
  # implict jump to bb76
bb76:
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 107
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  # implict jump to bb77
bb77:
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb78:
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
  JAL zero, bb77
float_abs:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs0, 16(sp)
  FSD fs1, 24(sp)
  FSGNJ.D fs0, fa0, fa0
  FCVT.S.L fs1, zero
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb81
  # implict jump to bb80
bb80:
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb81:
  FSGNJN.S fs0, fs0, fs0
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
