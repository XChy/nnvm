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
  SD ra, 0(sp)
  SD s1, 8(sp)
  SD s0, 16(sp)
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb1
  JAL zero, bb3
bb1:
  CALL error
  JAL zero, bb2
bb2:
  LD ra, 0(sp)
  LD s1, 8(sp)
  LD s0, 16(sp)
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
  SD ra, 0(sp)
  FSD fs3, 8(sp)
  FSD fs1, 16(sp)
  FSD fs0, 24(sp)
  SD s1, 32(sp)
  FSD fs2, 40(sp)
  SD s0, 48(sp)
  ADD s0, a0, zero
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
  LD ra, 0(sp)
  FLD fs3, 8(sp)
  FLD fs1, 16(sp)
  FLD fs0, 24(sp)
  LD s1, 32(sp)
  FLD fs2, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
float_eq:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs2, 16(sp)
  FSD fs1, 24(sp)
  FSD fs0, 32(sp)
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.D fs1, fa1, fa1
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
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs2, 16(sp)
  FLD fs1, 24(sp)
  FLD fs0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb9:
bb10:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs2, 16(sp)
  FLD fs1, 24(sp)
  FLD fs0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -160
  SD ra, 40(sp)
  FSD fs4, 48(sp)
  FSD fs3, 56(sp)
  SD s7, 64(sp)
  FSD fs2, 72(sp)
  SD s0, 80(sp)
  SD s5, 88(sp)
  FSD fs0, 96(sp)
  FSD fs1, 104(sp)
  SD s2, 112(sp)
  SD s3, 120(sp)
  SD s1, 128(sp)
  SD s6, 136(sp)
  SD s4, 144(sp)
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
  ADD s0, s1, zero
  JAL zero, bb18
bb17:
  ADD s0, zero, zero
  JAL zero, bb18
bb18:
  BNE s0, zero, bb19
  JAL zero, bb20
bb19:
  CALL error
  JAL zero, bb20
bb20:
  XOR s1, zero, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb21
  JAL zero, bb22
bb21:
  ADDI s1, zero, 1
  JAL zero, bb23
bb22:
  LA s2, .CONSTANT.7.4
  FLW fs0, 0(s2)
  LA s2, .CONSTANT.7.2
  FLW fs1, 0(s2)
  FEQ.S s2, fs0, fs1
  XORI s3, s2, 1
  XOR s2, s3, zero
  SLTU s3, zero, s2
  ADD s1, s3, zero
  JAL zero, bb23
bb23:
  BNE s1, zero, bb24
  JAL zero, bb25
bb24:
  CALL ok
  JAL zero, bb25
bb25:
  ADDI s2, zero, 2
  FCVT.S.W fs0, s2
  ADDI t5, sp, 0
  ADD s2, t5, zero
  LA s3, .CONSTANT.7.5
  FLW fs1, 0(s3)
  FSW fs1, 0(s2)
  ADDI s2, sp, 4
  FSW fs0, 0(s2)
  ADDI s2, sp, 8
  LA s3, .CONSTANT.7.2
  FLW fs0, 0(s3)
  FSW fs0, 0(s2)
  ADDI s2, sp, 12
  LA s3, .CONSTANT.7.2
  FLW fs0, 0(s3)
  FSW fs0, 0(s2)
  ADDI s2, sp, 16
  LA s3, .CONSTANT.7.2
  FLW fs0, 0(s3)
  FSW fs0, 0(s2)
  ADDI s2, sp, 20
  LA s3, .CONSTANT.7.2
  FLW fs0, 0(s3)
  FSW fs0, 0(s2)
  ADDI s2, sp, 24
  LA s3, .CONSTANT.7.2
  FLW fs0, 0(s3)
  FSW fs0, 0(s2)
  ADDI s2, sp, 28
  LA s3, .CONSTANT.7.2
  FLW fs0, 0(s3)
  FSW fs0, 0(s2)
  ADDI s2, sp, 32
  LA s3, .CONSTANT.7.2
  FLW fs0, 0(s3)
  FSW fs0, 0(s2)
  ADDI s2, sp, 36
  LA s3, .CONSTANT.7.2
  FLW fs0, 0(s3)
  FSW fs0, 0(s2)
  ADDI a0, sp, 0
  ADD a0, a0, zero
  CALL getfarray
  ADD s2, a0, zero
  ADD s3, zero, zero
  ADDI s4, zero, 1
  JAL zero, bb26
bb26:
  LA s5, MAX
  LW s6, 0(s5)
  SLT s5, s4, s6
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb27
  JAL zero, bb28
bb27:
  CALL getfloat
  FSGNJ.D fs0, fa0, fa0
  LA s5, PI
  FLW fs1, 0(s5)
  FMUL.S fs2, fs1, fs0
  FMUL.S fs1, fs2, fs0
  FCVT.W.S s5, fs0, rtz
  ADD a0, s5, zero
  CALL circle_area
  FSGNJ.D fs2, fa0, fa0
  ADDI s5, zero, 4
  MULW s6, s3, s5
  ADDI t6, sp, 0
  ADD s5, t6, s6
  ADDI s6, zero, 4
  MULW s7, s3, s6
  ADDI t5, sp, 0
  ADD s6, t5, s7
  FLW fs3, 0(s6)
  FADD.S fs4, fs3, fs0
  FSW fs4, 0(s5)
  FSGNJ.S fa0, fs1, fs1
  CALL putfloat
  ADDI a0, zero, 32
  CALL putch
  FCVT.W.S s5, fs2, rtz
  ADD a0, s5, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LA s5, .CONSTANT.7.6
  FLW fs0, 0(s5)
  LA s5, .CONSTANT.7.6
  FLW fs1, 0(s5)
  FSGNJN.S fs2, fs0, fs1
  FSGNJN.S fs0, fs2, fs2
  FCVT.S.W fs1, s4
  FMUL.S fs2, fs1, fs0
  FCVT.W.S s5, fs2, rtz
  ADDIW s6, s3, 1
  ADD s3, s6, zero
  ADD s4, s5, zero
  JAL zero, bb26
bb28:
  ADD a0, s2, zero
  ADDI a1, sp, 0
  ADD a1, a1, zero
  CALL putfarray
  ADD a0, zero, zero
  LD ra, 40(sp)
  FLD fs4, 48(sp)
  FLD fs3, 56(sp)
  LD s7, 64(sp)
  FLD fs2, 72(sp)
  LD s0, 80(sp)
  LD s5, 88(sp)
  FLD fs0, 96(sp)
  FLD fs1, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s1, 128(sp)
  LD s6, 136(sp)
  LD s4, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
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
  BNE s0, zero, bb30
  JAL zero, bb32
bb30:
  CALL error
  JAL zero, bb31
bb31:
  LD ra, 0(sp)
  LD s1, 8(sp)
  LD s0, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb32:
  CALL ok
  JAL zero, bb31
float_abs:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs1, 16(sp)
  FSD fs0, 24(sp)
  FSGNJ.D fs0, fa0, fa0
  FCVT.S.L fs1, zero
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb34
  JAL zero, bb35
bb34:
  FSGNJN.S fs1, fs0, fs0
  FSGNJ.S fa0, fs1, fs1
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs1, 16(sp)
  FLD fs0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb35:
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs1, 16(sp)
  FLD fs0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
