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
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s1, 8(sp)
  SD s0, 16(sp)
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
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
  LD s1, 8(sp)
  LD s0, 16(sp)
  ADDI sp, sp, 32
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
  ADDI sp, sp, -64
  SD ra, 0(sp)
  FSD fs3, 8(sp)
  FSD fs1, 16(sp)
  SD s1, 24(sp)
  FSD fs0, 32(sp)
  FSD fs2, 40(sp)
  SD s0, 48(sp)
  ADD s0, a0, zero
  FCVT.S.W fs0, s0
  LA s1, .CONSTANT.7.0
  FLW fs1, 0(s1)
  FMUL.S fs2, fs1, fs0
  FMUL.S fs1, fs2, fs0
  MULW s1, s0, s0
  FCVT.S.W fs0, s1
  LA s0, .CONSTANT.7.0
  FLW fs2, 0(s0)
  FMUL.S fs3, fs0, fs2
  FADD.S fs0, fs1, fs3
  ADDI s0, zero, 2
  FCVT.S.W fs1, s0
  FDIV.S fs2, fs0, fs1
  FSGNJ.S fa0, fs2, fs2
  LD ra, 0(sp)
  FLD fs3, 8(sp)
  FLD fs1, 16(sp)
  LD s1, 24(sp)
  FLD fs0, 32(sp)
  FLD fs2, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
float_eq:
  ADDI sp, sp, -64
  FSD fs4, 0(sp)
  SD ra, 8(sp)
  FSD fs3, 16(sp)
  SD s0, 24(sp)
  FSD fs2, 32(sp)
  FSD fs1, 40(sp)
  FSD fs0, 48(sp)
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.D fs1, fa1, fa1
  FSUB.S fs2, fs0, fs1
  FCVT.S.L fs0, zero
  FLT.S s0, fs2, fs0
  BNE s0, zero, bb12
  # implict jump to bb8
bb8:
  FSGNJ.S fs1, fs2, fs2
  # implict jump to bb9
bb9:
  FSGNJ.S fs0, fs1, fs1
  LA s0, .CONSTANT.7.1
  FLW fs3, 0(s0)
  FLT.S s0, fs0, fs3
  BNE s0, zero, bb11
  # implict jump to bb10
bb10:
  ADD a0, zero, zero
  FLD fs4, 0(sp)
  LD ra, 8(sp)
  FLD fs3, 16(sp)
  LD s0, 24(sp)
  FLD fs2, 32(sp)
  FLD fs1, 40(sp)
  FLD fs0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb11:
  ADDI s0, zero, 1
  FCVT.S.W fs0, s0
  LA s0, .CONSTANT.7.2
  FLW fs3, 0(s0)
  FMUL.S fs4, fs0, fs3
  ADDI s0, zero, 2
  FCVT.S.W fs0, s0
  FDIV.S fs3, fs4, fs0
  FCVT.W.S s0, fs3, rtz
  ADD a0, s0, zero
  FLD fs4, 0(sp)
  LD ra, 8(sp)
  FLD fs3, 16(sp)
  LD s0, 24(sp)
  FLD fs2, 32(sp)
  FLD fs1, 40(sp)
  FLD fs0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb12:
  FSGNJN.S fs0, fs2, fs2
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb9
main:
  ADDI sp, sp, -272
  FSD fs11, 72(sp)
  FSD fs3, 80(sp)
  SD s8, 88(sp)
  SD s7, 96(sp)
  FSD fs2, 104(sp)
  SD s6, 112(sp)
  SD s4, 120(sp)
  SD s3, 128(sp)
  SD s2, 136(sp)
  SD s1, 144(sp)
  FSD fs8, 152(sp)
  FSD fs1, 160(sp)
  SD s5, 168(sp)
  SD s0, 176(sp)
  FSD fs0, 184(sp)
  SD s9, 192(sp)
  FSD fs4, 200(sp)
  SD s10, 208(sp)
  FSD fs5, 216(sp)
  SD s11, 224(sp)
  FSD fs6, 232(sp)
  FSD fs7, 240(sp)
  FSD fs10, 248(sp)
  SD ra, 256(sp)
  FSD fs9, 264(sp)
  LA s0, .CONSTANT.7.3
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FSUB.S ft4, fs1, fs2
  FSW ft4, 48(sp)
  FCVT.S.L ft4, zero
  FSW ft4, 40(sp)
  FLW ft4, 48(sp)
  FLW ft3, 40(sp)
  FLT.S s0, ft4, ft3
  BNE s0, zero, bb72
  # implict jump to bb14
bb14:
  FLW ft3, 48(sp)
  FLW ft4, 48(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 44(sp)
  # implict jump to bb15
bb15:
  FLW ft4, 44(sp)
  FLW ft3, 44(sp)
  FSGNJ.S fs2, ft4, ft3
  LA s0, .CONSTANT.7.1
  FLW fs5, 0(s0)
  FLT.S s0, fs2, fs5
  BNE s0, zero, bb71
  # implict jump to bb16
bb16:
  ADD t4, zero, zero
  SW t4, 52(sp)
  # implict jump to bb17
bb17:
  LW t4, 52(sp)
  ADD s0, t4, zero
  XOR s2, s0, zero
  SLTU s0, zero, s2
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
  FLW fs2, 0(s0)
  LA s0, .CONSTANT.7.11
  FLW fs5, 0(s0)
  FSUB.S ft4, fs2, fs5
  FSW ft4, 60(sp)
  FLW ft4, 60(sp)
  FLW ft3, 40(sp)
  FLT.S s0, ft4, ft3
  BNE s0, zero, bb69
  # implict jump to bb20
bb20:
  FLW ft3, 60(sp)
  FLW ft4, 60(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 56(sp)
  # implict jump to bb21
bb21:
  FLW ft4, 56(sp)
  FLW ft3, 56(sp)
  FSGNJ.S fs2, ft4, ft3
  LA s0, .CONSTANT.7.1
  FLW fs7, 0(s0)
  FLT.S s0, fs2, fs7
  BNE s0, zero, bb68
  # implict jump to bb22
bb22:
  ADD s2, zero, zero
  # implict jump to bb23
bb23:
  ADD s0, s2, zero
  XOR s3, s0, zero
  SLTU s0, zero, s3
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
  FLW fs2, 0(s0)
  LA s0, .CONSTANT.7.11
  FLW fs7, 0(s0)
  FSUB.S fs8, fs2, fs7
  FLW ft4, 40(sp)
  FLT.S s0, fs8, ft4
  BNE s0, zero, bb66
  # implict jump to bb26
bb26:
  FSGNJ.S ft4, fs8, fs8
  FSW ft4, 64(sp)
  # implict jump to bb27
bb27:
  FLW ft4, 64(sp)
  FLW ft3, 64(sp)
  FSGNJ.S fs2, ft4, ft3
  LA s0, .CONSTANT.7.1
  FLW fs9, 0(s0)
  FLT.S s0, fs2, fs9
  BNE s0, zero, bb65
  # implict jump to bb28
bb28:
  ADD s3, zero, zero
  # implict jump to bb29
bb29:
  ADD s0, s3, zero
  XOR s4, s0, zero
  SLTU s0, zero, s4
  XORI s4, s0, 1
  XOR s0, s4, zero
  SLTU s4, zero, s0
  BNE s4, zero, bb64
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
  FLW fs2, 0(s0)
  FCVT.W.S s0, fs2, rtz
  FCVT.S.W fs2, s0
  LA s4, .CONSTANT.7.0
  FLW fs9, 0(s4)
  FMUL.S fs10, fs9, fs2
  FMUL.S fs9, fs10, fs2
  MULW s4, s0, s0
  FCVT.S.W fs2, s4
  LA s0, .CONSTANT.7.0
  FLW fs10, 0(s0)
  FMUL.S fs11, fs2, fs10
  FADD.S fs2, fs9, fs11
  ADDI s0, zero, 2
  FCVT.S.W fs0, s0
  FDIV.S fs9, fs2, fs0
  ADDI s0, zero, 5
  FCVT.S.W fs2, s0
  LA s0, .CONSTANT.7.0
  FLW fs10, 0(s0)
  FMUL.S fs11, fs10, fs2
  FMUL.S fs10, fs11, fs2
  ADDI s0, zero, 25
  FCVT.S.W fs2, s0
  LA s0, .CONSTANT.7.0
  FLW fs11, 0(s0)
  FMUL.S fs1, fs2, fs11
  FADD.S fs2, fs10, fs1
  FDIV.S fs1, fs2, fs0
  FSUB.S fs2, fs9, fs1
  FLW ft4, 40(sp)
  FLT.S s0, fs2, ft4
  BNE s0, zero, bb63
  # implict jump to bb32
bb32:
  FSGNJ.S fs9, fs2, fs2
  # implict jump to bb33
bb33:
  FSGNJ.S fs1, fs9, fs9
  LA s0, .CONSTANT.7.1
  FLW fs10, 0(s0)
  FLT.S s0, fs1, fs10
  BNE s0, zero, bb62
  # implict jump to bb34
bb34:
  ADD s4, zero, zero
  # implict jump to bb35
bb35:
  ADD s0, s4, zero
  XOR s5, s0, zero
  SLTU s0, zero, s5
  XORI s5, s0, 1
  XOR s0, s5, zero
  SLTU s5, zero, s0
  BNE s5, zero, bb61
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
  FLW fs10, 0(s0)
  FSUB.S fs11, fs1, fs10
  FLW ft4, 40(sp)
  FLT.S s0, fs11, ft4
  BNE s0, zero, bb60
  # implict jump to bb38
bb38:
  FSGNJ.S fs10, fs11, fs11
  # implict jump to bb39
bb39:
  FSGNJ.S fs1, fs10, fs10
  LA s0, .CONSTANT.7.1
  FLW fs4, 0(s0)
  FLT.S s0, fs1, fs4
  BNE s0, zero, bb59
  # implict jump to bb40
bb40:
  ADD s5, zero, zero
  # implict jump to bb41
bb41:
  ADD s0, s5, zero
  XOR s6, s0, zero
  SLTU s0, zero, s6
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
  FLW fs3, 0(s0)
  FEQ.S s0, fs1, fs3
  XORI s6, s0, 1
  BNE s6, zero, bb57
  # implict jump to bb44
bb44:
  LA s0, .CONSTANT.7.5
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.6
  FLW fs3, 0(s0)
  FEQ.S s0, fs1, fs3
  XORI s6, s0, 1
  XORI s0, s6, 1
  XOR s6, s0, zero
  SLTU s0, zero, s6
  XORI s6, s0, 1
  XOR s0, s6, zero
  SLTU s6, zero, s0
  BNE s6, zero, bb56
  # implict jump to bb45
bb45:
  LA s0, .CONSTANT.7.6
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.6
  FLW fs3, 0(s0)
  FEQ.S s0, fs1, fs3
  XORI s6, s0, 1
  BNE s6, zero, bb55
  # implict jump to bb46
bb46:
  ADD s0, zero, zero
  # implict jump to bb47
bb47:
  ADD s6, s0, zero
  BNE s6, zero, bb54
  # implict jump to bb48
bb48:
  LA s6, .CONSTANT.7.7
  FLW fs1, 0(s6)
  LA s6, .CONSTANT.7.6
  FLW fs3, 0(s6)
  FEQ.S s6, fs1, fs3
  XORI s7, s6, 1
  BNE s7, zero, bb53
  # implict jump to bb49
bb49:
  LA s6, .CONSTANT.7.8
  FLW fs1, 0(s6)
  FSW fs1, 0(sp)
  ADDI s6, sp, 4
  FSW fs0, 0(s6)
  ADDI s6, sp, 8
  LA s7, .CONSTANT.7.6
  FLW fs1, 0(s7)
  FSW fs1, 0(s6)
  ADDI s6, sp, 12
  LA s7, .CONSTANT.7.6
  FLW fs1, 0(s7)
  FSW fs1, 0(s6)
  ADDI s6, sp, 16
  LA s7, .CONSTANT.7.6
  FLW fs1, 0(s7)
  FSW fs1, 0(s6)
  ADDI s6, sp, 20
  LA s7, .CONSTANT.7.6
  FLW fs1, 0(s7)
  FSW fs1, 0(s6)
  ADDI s6, sp, 24
  LA s7, .CONSTANT.7.6
  FLW fs1, 0(s7)
  FSW fs1, 0(s6)
  ADDI s6, sp, 28
  LA s7, .CONSTANT.7.6
  FLW fs1, 0(s7)
  FSW fs1, 0(s6)
  ADDI s6, sp, 32
  LA s7, .CONSTANT.7.6
  FLW fs1, 0(s7)
  FSW fs1, 0(s6)
  ADDI s6, sp, 36
  LA s7, .CONSTANT.7.6
  FLW fs1, 0(s7)
  FSW fs1, 0(s6)
  ADDI a0, sp, 0
  ADD a0, a0, zero
  CALL getfarray
  ADD s6, a0, zero
  ADD s7, zero, zero
  ADDI s8, zero, 1
  # implict jump to bb50
bb50:
  ADD s9, s8, zero
  ADD s10, s7, zero
  LUI s11, 244141
  ADDIW s11, s11, -1536
  SLT s1, s9, s11
  BNE s1, zero, bb52
  # implict jump to bb51
bb51:
  ADD a0, s6, zero
  ADDI a1, sp, 0
  ADD a1, a1, zero
  CALL putfarray
  ADD a0, zero, zero
  FLD fs11, 72(sp)
  FLD fs3, 80(sp)
  LD s8, 88(sp)
  LD s7, 96(sp)
  FLD fs2, 104(sp)
  LD s6, 112(sp)
  LD s4, 120(sp)
  LD s3, 128(sp)
  LD s2, 136(sp)
  LD s1, 144(sp)
  FLD fs8, 152(sp)
  FLD fs1, 160(sp)
  LD s5, 168(sp)
  LD s0, 176(sp)
  FLD fs0, 184(sp)
  LD s9, 192(sp)
  FLD fs4, 200(sp)
  LD s10, 208(sp)
  FLD fs5, 216(sp)
  LD s11, 224(sp)
  FLD fs6, 232(sp)
  FLD fs7, 240(sp)
  FLD fs10, 248(sp)
  LD ra, 256(sp)
  FLD fs9, 264(sp)
  ADDI sp, sp, 272
  JALR zero, 0(ra)
bb52:
  CALL getfloat
  FSGNJ.D fs1, fa0, fa0
  LA s1, .CONSTANT.7.0
  FLW fs3, 0(s1)
  FMUL.S fs4, fs3, fs1
  FMUL.S fs3, fs4, fs1
  FCVT.W.S s1, fs1, rtz
  FCVT.S.W fs4, s1
  LA s11, .CONSTANT.7.0
  FLW fs5, 0(s11)
  FMUL.S fs6, fs5, fs4
  FMUL.S fs5, fs6, fs4
  MULW s11, s1, s1
  FCVT.S.W fs4, s11
  LA s1, .CONSTANT.7.0
  FLW fs6, 0(s1)
  FMUL.S fs7, fs4, fs6
  FADD.S fs4, fs5, fs7
  FDIV.S fs5, fs4, fs0
  SLLIW s1, s10, 2
  ADDI t5, sp, 0
  ADD s11, t5, s1
  FLW fs4, 0(s11)
  FADD.S fs6, fs4, fs1
  FSW fs6, 0(s11)
  FSGNJ.S fa0, fs3, fs3
  CALL putfloat
  ADDI a0, zero, 32
  CALL putch
  FCVT.W.S s1, fs5, rtz
  ADD a0, s1, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LA s1, .CONSTANT.7.9
  FLW fs1, 0(s1)
  LA s1, .CONSTANT.7.9
  FLW fs3, 0(s1)
  FSGNJN.S fs4, fs1, fs3
  FSGNJN.S fs1, fs4, fs4
  FCVT.S.W fs3, s9
  FMUL.S fs4, fs3, fs1
  FCVT.W.S s1, fs4, rtz
  ADDIW s9, s10, 1
  ADD s7, s9, zero
  ADD s8, s1, zero
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
  ADDI s0, zero, 1
  FCVT.S.W fs1, s0
  LA s0, .CONSTANT.7.2
  FLW fs4, 0(s0)
  FMUL.S fs3, fs1, fs4
  FDIV.S fs1, fs3, fs0
  FCVT.W.S s0, fs1, rtz
  ADD s5, s0, zero
  JAL zero, bb41
bb60:
  FSGNJN.S fs1, fs11, fs11
  FSGNJ.S fs10, fs1, fs1
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
  ADDI s0, zero, 1
  FCVT.S.W fs1, s0
  LA s0, .CONSTANT.7.2
  FLW fs10, 0(s0)
  FMUL.S fs11, fs1, fs10
  FDIV.S fs1, fs11, fs0
  FCVT.W.S s0, fs1, rtz
  ADD s4, s0, zero
  JAL zero, bb35
bb63:
  FSGNJN.S fs1, fs2, fs2
  FSGNJ.S fs9, fs1, fs1
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
  ADDI s0, zero, 1
  FCVT.S.W fs2, s0
  LA s0, .CONSTANT.7.2
  FLW fs9, 0(s0)
  FMUL.S fs10, fs2, fs9
  ADDI s0, zero, 2
  FCVT.S.W fs2, s0
  FDIV.S fs9, fs10, fs2
  FCVT.W.S s0, fs9, rtz
  ADD s3, s0, zero
  JAL zero, bb29
bb66:
  FSGNJN.S fs2, fs8, fs8
  FSGNJ.S ft4, fs2, fs2
  FSW ft4, 64(sp)
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
  ADDI s0, zero, 1
  FCVT.S.W fs2, s0
  LA s0, .CONSTANT.7.2
  FLW fs7, 0(s0)
  FMUL.S fs8, fs2, fs7
  ADDI s0, zero, 2
  FCVT.S.W fs2, s0
  FDIV.S fs7, fs8, fs2
  FCVT.W.S s0, fs7, rtz
  ADD s2, s0, zero
  JAL zero, bb23
bb69:
  FLW ft4, 60(sp)
  FLW ft3, 60(sp)
  FSGNJN.S fs2, ft4, ft3
  FSGNJ.S ft4, fs2, fs2
  FSW ft4, 56(sp)
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
  ADDI s0, zero, 1
  FCVT.S.W fs2, s0
  LA s0, .CONSTANT.7.2
  FLW fs5, 0(s0)
  FMUL.S fs6, fs2, fs5
  ADDI s0, zero, 2
  FCVT.S.W fs2, s0
  FDIV.S fs5, fs6, fs2
  FCVT.W.S s0, fs5, rtz
  ADD t4, s0, zero
  SW t4, 52(sp)
  JAL zero, bb17
bb72:
  FLW ft4, 48(sp)
  FLW ft3, 48(sp)
  FSGNJN.S fs2, ft4, ft3
  FSGNJ.S ft4, fs2, fs2
  FSW ft4, 44(sp)
  JAL zero, bb15
assert:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s1, 8(sp)
  SD s0, 16(sp)
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XORI s1, s0, 1
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb76
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
  LD s1, 8(sp)
  LD s0, 16(sp)
  ADDI sp, sp, 32
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
  FSD fs1, 16(sp)
  FSD fs0, 24(sp)
  FSGNJ.D fs0, fa0, fa0
  FCVT.S.L fs1, zero
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb79
  # implict jump to bb78
bb78:
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs1, 16(sp)
  FLD fs0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb79:
  FSGNJN.S fs1, fs0, fs0
  FSGNJ.S fa0, fs1, fs1
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs1, 16(sp)
  FLD fs0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
