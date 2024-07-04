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
.word 0x40000000
.CONSTANT.7.1:
.word 0x3fc00000
.CONSTANT.7.2:
.word 0x00000000
.CONSTANT.7.3:
.word 0x40533333
.CONSTANT.7.4:
.word 0x3e99999a
.CONSTANT.7.5:
.word 0x3f800000
.CONSTANT.7.6:
.word 0x41200000
.section .text
assert_not:
  ADDI sp, sp, -32
  SD ra, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  ADD s0, a0, zero
  SW s0, 0(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb1
  JAL zero, bb3
bb1:
  CALL error
  JAL zero, bb2
bb2:
  LD ra, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb3:
  CALL ok
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
  SD ra, 8(sp)
  FSD fs3, 16(sp)
  FSD fs1, 24(sp)
  FSD fs0, 32(sp)
  SD s1, 40(sp)
  FSD fs2, 48(sp)
  SD s0, 56(sp)
  ADD s0, a0, zero
  SW s0, 0(sp)
  LA s1, PI
  FLW fs0, 0(s1)
  FCVT.S.W fs1, s0
  FMUL.S fs2, fs0, fs1
  FCVT.S.W fs0, s0
  FMUL.S fs1, fs2, fs0
  MULW s1, s0, s0
  LA s0, PI
  FLW fs0, 0(s0)
  FCVT.S.W fs2, s1
  FMUL.S fs3, fs2, fs0
  FADD.S fs0, fs1, fs3
  ADDI s0, zero, 2
  FCVT.S.W fs1, s0
  FDIV.S fs2, fs0, fs1
  FSGNJ.S fa0, fs2, fs2
  LD ra, 8(sp)
  FLD fs3, 16(sp)
  FLD fs1, 24(sp)
  FLD fs0, 32(sp)
  LD s1, 40(sp)
  FLD fs2, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
float_eq:
  ADDI sp, sp, -64
  SD ra, 16(sp)
  SD s0, 24(sp)
  FSD fs2, 32(sp)
  FSD fs1, 40(sp)
  FSD fs0, 48(sp)
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.D fs1, fa1, fa1
  FSW fs0, 8(sp)
  FSW fs1, 0(sp)
  FLW fs0, 8(sp)
  FSUB.S fs2, fs0, fs1
  FSGNJ.S fa0, fs2, fs2
  CALL float_abs
  FSGNJ.D fs0, fa0, fa0
  LA s0, EPS
  FLW fs1, 0(s0)
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb8
  JAL zero, bb10
bb8:
  ADDI s0, zero, 1
  FCVT.S.W fs0, s0
  LA s0, .CONSTANT.7.0
  FLW fs1, 0(s0)
  FMUL.S fs2, fs0, fs1
  ADDI s0, zero, 2
  FCVT.S.W fs0, s0
  FDIV.S fs1, fs2, fs0
  FCVT.W.S s0, fs1, rtz
  ADD a0, s0, zero
  LD ra, 16(sp)
  LD s0, 24(sp)
  FLD fs2, 32(sp)
  FLD fs1, 40(sp)
  FLD fs0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb9:
bb10:
  ADD a0, zero, zero
  LD ra, 16(sp)
  LD s0, 24(sp)
  FLD fs2, 32(sp)
  FLD fs1, 40(sp)
  FLD fs0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -176
  SD ra, 104(sp)
  SD s1, 112(sp)
  FSD fs2, 120(sp)
  SD s3, 128(sp)
  SD s2, 136(sp)
  FSD fs1, 144(sp)
  FSD fs0, 152(sp)
  SD s0, 160(sp)
  LA s0, HEX2
  FLW fs0, 0(s0)
  LA s0, FACT
  FLW fs1, 0(s0)
  FSGNJ.S fa0, fs0, fs0
  FSGNJ.S fa1, fs1, fs1
  CALL float_eq
  ADD s0, a0, zero
  ADD a0, s0, zero
  CALL assert_not
  LA s0, EVAL1
  FLW fs0, 0(s0)
  LA s0, EVAL2
  FLW fs1, 0(s0)
  FSGNJ.S fa0, fs0, fs0
  FSGNJ.S fa1, fs1, fs1
  CALL float_eq
  ADD s0, a0, zero
  ADD a0, s0, zero
  CALL assert_not
  LA s0, EVAL2
  FLW fs0, 0(s0)
  LA s0, EVAL3
  FLW fs1, 0(s0)
  FSGNJ.S fa0, fs0, fs0
  FSGNJ.S fa1, fs1, fs1
  CALL float_eq
  ADD s0, a0, zero
  ADD a0, s0, zero
  CALL assert
  LA s0, RADIUS
  FLW fs0, 0(s0)
  FCVT.W.S s0, fs0, rtz
  ADD a0, s0, zero
  CALL circle_area
  FSGNJ.D fs0, fa0, fa0
  LA s0, FIVE
  LW s1, 0(s0)
  ADD a0, s1, zero
  CALL circle_area
  FSGNJ.D fs1, fa0, fa0
  FSGNJ.S fa0, fs0, fs0
  FSGNJ.S fa1, fs1, fs1
  CALL float_eq
  ADD s0, a0, zero
  ADD a0, s0, zero
  CALL assert
  LA s0, CONV1
  FLW fs0, 0(s0)
  LA s0, CONV2
  FLW fs1, 0(s0)
  FSGNJ.S fa0, fs0, fs0
  FSGNJ.S fa1, fs1, fs1
  CALL float_eq
  ADD s0, a0, zero
  ADD a0, s0, zero
  CALL assert_not
  LA s0, .CONSTANT.7.1
  FLW fs0, 0(s0)
  LA s0, .CONSTANT.7.2
  FLW fs1, 0(s0)
  FEQ.S s0, fs0, fs1
  XORI s1, s0, 1
  BNE s1, zero, bb12
  JAL zero, bb13
bb12:
  CALL ok
  JAL zero, bb13
bb13:
  LA s0, .CONSTANT.7.3
  FLW fs0, 0(s0)
  LA s0, .CONSTANT.7.2
  FLW fs1, 0(s0)
  FEQ.S s0, fs0, fs1
  XORI s1, s0, 1
  XORI s0, s1, 1
  ADD s1, s0, zero
  XOR s0, s1, zero
  SLTU s1, zero, s0
  XORI s0, s1, 1
  ADD s1, s0, zero
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb14
  JAL zero, bb15
bb14:
  CALL ok
  JAL zero, bb15
bb15:
  LA s0, .CONSTANT.7.2
  FLW fs0, 0(s0)
  LA s0, .CONSTANT.7.2
  FLW fs1, 0(s0)
  FEQ.S s0, fs0, fs1
  XORI s1, s0, 1
  BNE s1, zero, bb16
  JAL zero, bb17
bb16:
  XORI s0, zero, 3
  SLTU s1, zero, s0
  SB s1, 96(sp)
  JAL zero, bb18
bb17:
  ADDI s0, zero, 0
  SB s0, 96(sp)
  JAL zero, bb18
bb18:
  LB s0, 96(sp)
  BNE s0, zero, bb19
  JAL zero, bb20
bb19:
  CALL error
  JAL zero, bb20
bb20:
  XOR s0, zero, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb21
  JAL zero, bb22
bb21:
  ADDI s0, zero, 1
  SB s0, 88(sp)
  JAL zero, bb23
bb22:
  LA s0, .CONSTANT.7.4
  FLW fs0, 0(s0)
  LA s0, .CONSTANT.7.2
  FLW fs1, 0(s0)
  FEQ.S s0, fs0, fs1
  XORI s1, s0, 1
  XOR s0, s1, zero
  SLTU s1, zero, s0
  SB s1, 88(sp)
  JAL zero, bb23
bb23:
  LB s0, 88(sp)
  BNE s0, zero, bb24
  JAL zero, bb25
bb24:
  CALL ok
  JAL zero, bb25
bb25:
  ADDI s0, zero, 1
  SW s0, 80(sp)
  SW zero, 72(sp)
  ADDI s0, zero, 2
  FCVT.S.W fs0, s0
  ADDI t5, sp, 32
  ADD s0, t5, zero
  LA s1, .CONSTANT.7.5
  FLW fs1, 0(s1)
  FSW fs1, 0(s0)
  ADDI s0, sp, 36
  FSW fs0, 0(s0)
  ADDI s0, sp, 40
  LA s1, .CONSTANT.7.2
  FLW fs0, 0(s1)
  FSW fs0, 0(s0)
  ADDI s0, sp, 44
  LA s1, .CONSTANT.7.2
  FLW fs0, 0(s1)
  FSW fs0, 0(s0)
  ADDI s0, sp, 48
  LA s1, .CONSTANT.7.2
  FLW fs0, 0(s1)
  FSW fs0, 0(s0)
  ADDI s0, sp, 52
  LA s1, .CONSTANT.7.2
  FLW fs0, 0(s1)
  FSW fs0, 0(s0)
  ADDI s0, sp, 56
  LA s1, .CONSTANT.7.2
  FLW fs0, 0(s1)
  FSW fs0, 0(s0)
  ADDI s0, sp, 60
  LA s1, .CONSTANT.7.2
  FLW fs0, 0(s1)
  FSW fs0, 0(s0)
  ADDI s0, sp, 64
  LA s1, .CONSTANT.7.2
  FLW fs0, 0(s1)
  FSW fs0, 0(s0)
  ADDI s0, sp, 68
  LA s1, .CONSTANT.7.2
  FLW fs0, 0(s1)
  FSW fs0, 0(s0)
  ADDI a0, sp, 32
  ADD a0, a0, zero
  CALL getfarray
  ADD s0, a0, zero
  SW s0, 24(sp)
  JAL zero, bb26
bb26:
  LW s0, 80(sp)
  LA s1, MAX
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb27
  JAL zero, bb28
bb27:
  CALL getfloat
  FSGNJ.D fs0, fa0, fa0
  FSW fs0, 16(sp)
  LA s0, PI
  FLW fs1, 0(s0)
  FMUL.S fs2, fs1, fs0
  FMUL.S fs1, fs2, fs0
  FSW fs1, 8(sp)
  FLW fs0, 16(sp)
  FCVT.W.S s0, fs0, rtz
  ADD a0, s0, zero
  CALL circle_area
  FSGNJ.D fs0, fa0, fa0
  FSW fs0, 0(sp)
  LW s0, 72(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADDI t6, sp, 32
  ADD s0, t6, s2
  LW s1, 72(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t5, sp, 32
  ADD s1, t5, s3
  FLW fs0, 0(s1)
  FLW fs1, 16(sp)
  FADD.S fs2, fs0, fs1
  FSW fs2, 0(s0)
  FLW fs0, 8(sp)
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  ADDI a0, zero, 32
  CALL putch
  FLW fs0, 0(sp)
  FCVT.W.S s0, fs0, rtz
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW s0, 80(sp)
  LA s1, .CONSTANT.7.6
  FLW fs0, 0(s1)
  LA s1, .CONSTANT.7.6
  FLW fs1, 0(s1)
  FSGNJN.S fs2, fs0, fs1
  FSGNJN.S fs0, fs2, fs2
  FCVT.S.W fs1, s0
  FMUL.S fs2, fs1, fs0
  FCVT.W.S s0, fs2, rtz
  SW s0, 80(sp)
  LW s0, 72(sp)
  ADDIW s1, s0, 1
  SW s1, 72(sp)
  JAL zero, bb26
bb28:
  LW s0, 24(sp)
  ADD a0, s0, zero
  ADDI a1, sp, 32
  ADD a1, a1, zero
  CALL putfarray
  ADD a0, zero, zero
  LD ra, 104(sp)
  LD s1, 112(sp)
  FLD fs2, 120(sp)
  LD s3, 128(sp)
  LD s2, 136(sp)
  FLD fs1, 144(sp)
  FLD fs0, 152(sp)
  LD s0, 160(sp)
  ADDI sp, sp, 176
  JALR zero, 0(ra)
assert:
  ADDI sp, sp, -32
  SD ra, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  ADD s0, a0, zero
  SW s0, 0(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XORI s1, s0, 1
  ADD s0, s1, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb30
  JAL zero, bb32
bb30:
  CALL error
  JAL zero, bb31
bb31:
  LD ra, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb32:
  CALL ok
  JAL zero, bb31
float_abs:
  ADDI sp, sp, -48
  SD ra, 8(sp)
  SD s0, 16(sp)
  FSD fs1, 24(sp)
  FSD fs0, 32(sp)
  FSGNJ.D fs0, fa0, fa0
  FSW fs0, 0(sp)
  FCVT.S.L fs1, zero
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb34
  JAL zero, bb35
bb34:
  FLW fs0, 0(sp)
  FSGNJN.S fs1, fs0, fs0
  FSGNJ.S fa0, fs1, fs1
  LD ra, 8(sp)
  LD s0, 16(sp)
  FLD fs1, 24(sp)
  FLD fs0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb35:
  FLW fs0, 0(sp)
  FSGNJ.S fa0, fs0, fs0
  LD ra, 8(sp)
  LD s0, 16(sp)
  FLD fs1, 24(sp)
  FLD fs0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
