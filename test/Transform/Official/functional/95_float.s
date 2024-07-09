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
  BNE s0, zero, bb1
  JAL zero, bb3
bb1:
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
bb2:
  LD ra, 0(sp)
  LD s1, 8(sp)
  LD s0, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb3:
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 107
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
  BNE s0, zero, bb11
  JAL zero, bb12
bb8:
  FSGNJ.S fs0, fs1, fs1
  LA s0, .CONSTANT.7.1
  FLW fs3, 0(s0)
  FLT.S s0, fs0, fs3
  BNE s0, zero, bb9
  JAL zero, bb10
bb9:
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
  FSGNJN.S fs0, fs2, fs2
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb8
bb12:
  FSGNJ.S fs1, fs2, fs2
  JAL zero, bb8
main:
  ADDI sp, sp, -304
  FSD fs8, 96(sp)
  FSD fs0, 104(sp)
  FSD fs11, 112(sp)
  SD s4, 120(sp)
  SD s3, 128(sp)
  SD s2, 136(sp)
  SD s1, 144(sp)
  FSD fs9, 152(sp)
  FSD fs2, 160(sp)
  SD s7, 168(sp)
  FSD fs1, 176(sp)
  SD s5, 184(sp)
  SD ra, 192(sp)
  FSD fs10, 200(sp)
  SD s0, 208(sp)
  SD s6, 216(sp)
  FSD fs3, 224(sp)
  SD s8, 232(sp)
  SD s9, 240(sp)
  FSD fs4, 248(sp)
  SD s10, 256(sp)
  FSD fs5, 264(sp)
  SD s11, 272(sp)
  FSD fs6, 280(sp)
  FSD fs7, 288(sp)
  LA s0, .CONSTANT.7.3
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FSUB.S ft4, fs1, fs2
  FSW ft4, 56(sp)
  FCVT.S.L ft4, zero
  FSW ft4, 40(sp)
  FLW ft4, 56(sp)
  FLW ft3, 40(sp)
  FLT.S s0, ft4, ft3
  BNE s0, zero, bb76
  JAL zero, bb77
bb14:
  LW t4, 64(sp)
  ADD s0, t4, zero
  XOR s2, s0, zero
  SLTU s0, zero, s2
  BNE s0, zero, bb41
  JAL zero, bb43
bb15:
  ADD s0, s2, zero
  XOR s3, s0, zero
  SLTU s0, zero, s3
  BNE s0, zero, bb45
  JAL zero, bb47
bb16:
  ADD s0, s3, zero
  XOR s4, s0, zero
  SLTU s0, zero, s4
  XORI s4, s0, 1
  ADD s0, s4, zero
  XOR s4, s0, zero
  SLTU s0, zero, s4
  BNE s0, zero, bb68
  JAL zero, bb70
bb17:
  FSGNJ.S fs9, fs2, fs2
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
  FSGNJ.S fs2, fs1, fs1
  JAL zero, bb18
bb18:
  FSGNJ.S fs1, fs2, fs2
  FSUB.S fs2, fs9, fs1
  FLW ft4, 40(sp)
  FLT.S s0, fs2, ft4
  BNE s0, zero, bb82
  JAL zero, bb83
bb19:
  ADD s0, s4, zero
  XOR s5, s0, zero
  SLTU s0, zero, s5
  XORI s5, s0, 1
  ADD s0, s5, zero
  XOR s5, s0, zero
  SLTU s0, zero, s5
  BNE s0, zero, bb72
  JAL zero, bb74
bb20:
  ADD s0, s5, zero
  XOR s6, s0, zero
  SLTU s0, zero, s6
  BNE s0, zero, bb49
  JAL zero, bb51
bb21:
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 107
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb22
bb22:
  JAL zero, bb23
bb23:
  LA s0, .CONSTANT.7.5
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.6
  FLW fs3, 0(s0)
  FEQ.S s0, fs1, fs3
  XORI s6, s0, 1
  XORI s0, s6, 1
  ADD s6, s0, zero
  XOR s0, s6, zero
  SLTU s6, zero, s0
  XORI s0, s6, 1
  ADD s6, s0, zero
  XOR s0, s6, zero
  SLTU s6, zero, s0
  BNE s6, zero, bb24
  JAL zero, bb26
bb24:
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 107
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb25
bb25:
  JAL zero, bb26
bb26:
  LA s0, .CONSTANT.7.6
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.6
  FLW fs3, 0(s0)
  FEQ.S s0, fs1, fs3
  XORI s6, s0, 1
  BNE s6, zero, bb27
  JAL zero, bb28
bb27:
  ADDI s0, zero, 1
  JAL zero, bb29
bb28:
  ADD s0, zero, zero
  JAL zero, bb29
bb29:
  ADD s6, s0, zero
  BNE s6, zero, bb30
  JAL zero, bb32
bb30:
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
bb31:
  JAL zero, bb32
bb32:
  LA s6, .CONSTANT.7.7
  FLW fs1, 0(s6)
  LA s6, .CONSTANT.7.6
  FLW fs3, 0(s6)
  FEQ.S s6, fs1, fs3
  XORI s7, s6, 1
  ADD s6, s7, zero
  JAL zero, bb33
bb33:
  ADD s7, s6, zero
  BNE s7, zero, bb34
  JAL zero, bb36
bb34:
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 107
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb35
bb35:
  JAL zero, bb36
bb36:
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
  JAL zero, bb37
bb37:
  ADD s9, s8, zero
  ADD s10, s7, zero
  LUI s11, 244141
  ADDIW s11, s11, -1536
  SLT s1, s9, s11
  BNE s1, zero, bb38
  JAL zero, bb40
bb38:
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
  FSGNJ.S fs4, fs5, fs5
  JAL zero, bb39
bb39:
  FSGNJ.S fs5, fs4, fs4
  ADDI s1, zero, 4
  MULW s11, s10, s1
  ADDI t5, sp, 0
  ADD s1, t5, s11
  FLW fs4, 0(s1)
  FADD.S fs6, fs4, fs1
  FSW fs6, 0(s1)
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
  JAL zero, bb37
bb40:
  ADD a0, s6, zero
  ADDI a1, sp, 0
  ADD a1, a1, zero
  CALL putfarray
  ADD a0, zero, zero
  FLD fs8, 96(sp)
  FLD fs0, 104(sp)
  FLD fs11, 112(sp)
  LD s4, 120(sp)
  LD s3, 128(sp)
  LD s2, 136(sp)
  LD s1, 144(sp)
  FLD fs9, 152(sp)
  FLD fs2, 160(sp)
  LD s7, 168(sp)
  FLD fs1, 176(sp)
  LD s5, 184(sp)
  LD ra, 192(sp)
  FLD fs10, 200(sp)
  LD s0, 208(sp)
  LD s6, 216(sp)
  FLD fs3, 224(sp)
  LD s8, 232(sp)
  LD s9, 240(sp)
  FLD fs4, 248(sp)
  LD s10, 256(sp)
  FLD fs5, 264(sp)
  LD s11, 272(sp)
  FLD fs6, 280(sp)
  FLD fs7, 288(sp)
  ADDI sp, sp, 304
  JALR zero, 0(ra)
bb41:
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
  JAL zero, bb42
bb42:
  LA s0, .CONSTANT.7.10
  FLW fs2, 0(s0)
  LA s0, .CONSTANT.7.11
  FLW fs5, 0(s0)
  FSUB.S ft4, fs2, fs5
  FSW ft4, 80(sp)
  FLW ft4, 80(sp)
  FLW ft3, 40(sp)
  FLT.S s0, ft4, ft3
  BNE s0, zero, bb78
  JAL zero, bb79
bb43:
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 107
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb44
bb44:
  JAL zero, bb42
bb45:
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
  JAL zero, bb46
bb46:
  LA s0, .CONSTANT.7.11
  FLW fs2, 0(s0)
  LA s0, .CONSTANT.7.11
  FLW fs7, 0(s0)
  FSUB.S fs8, fs2, fs7
  FLW ft4, 40(sp)
  FLT.S s0, fs8, ft4
  BNE s0, zero, bb80
  JAL zero, bb81
bb47:
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 107
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb48
bb48:
  JAL zero, bb46
bb49:
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
  JAL zero, bb50
bb50:
  LA s0, .CONSTANT.7.12
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.6
  FLW fs3, 0(s0)
  FEQ.S s0, fs1, fs3
  XORI s6, s0, 1
  BNE s6, zero, bb21
  JAL zero, bb23
bb51:
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 107
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb52
bb52:
  JAL zero, bb50
bb53:
  FLW ft4, 48(sp)
  FLW ft3, 48(sp)
  FSGNJ.S fs2, ft4, ft3
  LA s0, .CONSTANT.7.1
  FLW fs5, 0(s0)
  FLT.S s0, fs2, fs5
  BNE s0, zero, bb54
  JAL zero, bb55
bb54:
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
  SW t4, 64(sp)
  JAL zero, bb14
bb55:
  ADD t4, zero, zero
  SW t4, 64(sp)
  JAL zero, bb14
bb56:
  FLW ft4, 72(sp)
  FLW ft3, 72(sp)
  FSGNJ.S fs2, ft4, ft3
  LA s0, .CONSTANT.7.1
  FLW fs7, 0(s0)
  FLT.S s0, fs2, fs7
  BNE s0, zero, bb57
  JAL zero, bb58
bb57:
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
  JAL zero, bb15
bb58:
  ADD s2, zero, zero
  JAL zero, bb15
bb59:
  FLW ft4, 88(sp)
  FLW ft3, 88(sp)
  FSGNJ.S fs2, ft4, ft3
  LA s0, .CONSTANT.7.1
  FLW fs9, 0(s0)
  FLT.S s0, fs2, fs9
  BNE s0, zero, bb60
  JAL zero, bb61
bb60:
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
  JAL zero, bb16
bb61:
  ADD s3, zero, zero
  JAL zero, bb16
bb62:
  FSGNJ.S fs1, fs9, fs9
  LA s0, .CONSTANT.7.1
  FLW fs10, 0(s0)
  FLT.S s0, fs1, fs10
  BNE s0, zero, bb63
  JAL zero, bb64
bb63:
  ADDI s0, zero, 1
  FCVT.S.W fs1, s0
  LA s0, .CONSTANT.7.2
  FLW fs10, 0(s0)
  FMUL.S fs11, fs1, fs10
  FDIV.S fs1, fs11, fs0
  FCVT.W.S s0, fs1, rtz
  ADD s4, s0, zero
  JAL zero, bb19
bb64:
  ADD s4, zero, zero
  JAL zero, bb19
bb65:
  FSGNJ.S fs1, fs10, fs10
  LA s0, .CONSTANT.7.1
  FLW fs4, 0(s0)
  FLT.S s0, fs1, fs4
  BNE s0, zero, bb66
  JAL zero, bb67
bb66:
  ADDI s0, zero, 1
  FCVT.S.W fs1, s0
  LA s0, .CONSTANT.7.2
  FLW fs4, 0(s0)
  FMUL.S fs3, fs1, fs4
  FDIV.S fs1, fs3, fs0
  FCVT.W.S s0, fs1, rtz
  ADD s5, s0, zero
  JAL zero, bb20
bb67:
  ADD s5, zero, zero
  JAL zero, bb20
bb68:
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
  JAL zero, bb69
bb69:
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
  FSGNJ.S fs2, fs9, fs9
  JAL zero, bb17
bb70:
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 107
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb71
bb71:
  JAL zero, bb69
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
  JAL zero, bb73
bb73:
  LA s0, .CONSTANT.7.14
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.15
  FLW fs10, 0(s0)
  FSUB.S fs11, fs1, fs10
  FLW ft4, 40(sp)
  FLT.S s0, fs11, ft4
  BNE s0, zero, bb84
  JAL zero, bb85
bb74:
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 107
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb75
bb75:
  JAL zero, bb73
bb76:
  FLW ft4, 56(sp)
  FLW ft3, 56(sp)
  FSGNJN.S fs2, ft4, ft3
  FSGNJ.S ft4, fs2, fs2
  FSW ft4, 48(sp)
  JAL zero, bb53
bb77:
  FLW ft3, 56(sp)
  FLW ft4, 56(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 48(sp)
  JAL zero, bb53
bb78:
  FLW ft4, 80(sp)
  FLW ft3, 80(sp)
  FSGNJN.S fs2, ft4, ft3
  FSGNJ.S ft4, fs2, fs2
  FSW ft4, 72(sp)
  JAL zero, bb56
bb79:
  FLW ft3, 80(sp)
  FLW ft4, 80(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 72(sp)
  JAL zero, bb56
bb80:
  FSGNJN.S fs2, fs8, fs8
  FSGNJ.S ft4, fs2, fs2
  FSW ft4, 88(sp)
  JAL zero, bb59
bb81:
  FSGNJ.S ft4, fs8, fs8
  FSW ft4, 88(sp)
  JAL zero, bb59
bb82:
  FSGNJN.S fs1, fs2, fs2
  FSGNJ.S fs9, fs1, fs1
  JAL zero, bb62
bb83:
  FSGNJ.S fs9, fs2, fs2
  JAL zero, bb62
bb84:
  FSGNJN.S fs1, fs11, fs11
  FSGNJ.S fs10, fs1, fs1
  JAL zero, bb65
bb85:
  FSGNJ.S fs10, fs11, fs11
  JAL zero, bb65
assert:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s1, 8(sp)
  SD s0, 16(sp)
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XORI s1, s0, 1
  ADD s0, s1, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb87
  JAL zero, bb89
bb87:
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
  JAL zero, bb88
bb88:
  LD ra, 0(sp)
  LD s1, 8(sp)
  LD s0, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb89:
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 107
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb88
float_abs:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs1, 16(sp)
  FSD fs0, 24(sp)
  FSGNJ.D fs0, fa0, fa0
  FCVT.S.L fs1, zero
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb91
  JAL zero, bb92
bb91:
  FSGNJN.S fs1, fs0, fs0
  FSGNJ.S fa0, fs1, fs1
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs1, 16(sp)
  FLD fs0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb92:
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs1, 16(sp)
  FLD fs0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
