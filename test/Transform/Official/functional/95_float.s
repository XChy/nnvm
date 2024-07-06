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
  JAL zero, bb9
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
  SD s8, 64(sp)
  FSD fs2, 72(sp)
  SD s7, 80(sp)
  SD s0, 88(sp)
  SD s5, 96(sp)
  FSD fs0, 104(sp)
  FSD fs1, 112(sp)
  SD s2, 120(sp)
  SD s3, 128(sp)
  SD s1, 136(sp)
  SD s6, 144(sp)
  SD s4, 152(sp)
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
  BNE s1, zero, bb11
  JAL zero, bb12
bb11:
  CALL ok
  JAL zero, bb12
bb12:
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
  BNE s1, zero, bb13
  JAL zero, bb14
bb13:
  CALL ok
  JAL zero, bb14
bb14:
  LA s0, .CONSTANT.7.2
  FLW fs0, 0(s0)
  LA s0, .CONSTANT.7.2
  FLW fs1, 0(s0)
  FEQ.S s0, fs0, fs1
  XORI s1, s0, 1
  BNE s1, zero, bb15
  JAL zero, bb16
bb15:
  ADDI s0, zero, 1
  JAL zero, bb17
bb16:
  ADD s0, zero, zero
  JAL zero, bb17
bb17:
  ADD s1, s0, zero
  BNE s1, zero, bb18
  JAL zero, bb19
bb18:
  CALL error
  JAL zero, bb19
bb19:
  JAL zero, bb20
bb20:
  LA s1, .CONSTANT.7.4
  FLW fs0, 0(s1)
  LA s1, .CONSTANT.7.2
  FLW fs1, 0(s1)
  FEQ.S s1, fs0, fs1
  XORI s2, s1, 1
  XOR s1, s2, zero
  SLTU s2, zero, s1
  ADD s1, s2, zero
  JAL zero, bb21
bb21:
  ADD s2, s1, zero
  BNE s2, zero, bb22
  JAL zero, bb23
bb22:
  CALL ok
  JAL zero, bb23
bb23:
  ADDI s1, zero, 2
  FCVT.S.W fs0, s1
  ADDI t5, sp, 0
  ADD s1, t5, zero
  LA s2, .CONSTANT.7.5
  FLW fs1, 0(s2)
  FSW fs1, 0(s1)
  ADDI s1, sp, 4
  FSW fs0, 0(s1)
  ADDI s1, sp, 8
  LA s2, .CONSTANT.7.2
  FLW fs0, 0(s2)
  FSW fs0, 0(s1)
  ADDI s1, sp, 12
  LA s2, .CONSTANT.7.2
  FLW fs0, 0(s2)
  FSW fs0, 0(s1)
  ADDI s1, sp, 16
  LA s2, .CONSTANT.7.2
  FLW fs0, 0(s2)
  FSW fs0, 0(s1)
  ADDI s1, sp, 20
  LA s2, .CONSTANT.7.2
  FLW fs0, 0(s2)
  FSW fs0, 0(s1)
  ADDI s1, sp, 24
  LA s2, .CONSTANT.7.2
  FLW fs0, 0(s2)
  FSW fs0, 0(s1)
  ADDI s1, sp, 28
  LA s2, .CONSTANT.7.2
  FLW fs0, 0(s2)
  FSW fs0, 0(s1)
  ADDI s1, sp, 32
  LA s2, .CONSTANT.7.2
  FLW fs0, 0(s2)
  FSW fs0, 0(s1)
  ADDI s1, sp, 36
  LA s2, .CONSTANT.7.2
  FLW fs0, 0(s2)
  FSW fs0, 0(s1)
  ADDI a0, sp, 0
  ADD a0, a0, zero
  CALL getfarray
  ADD s1, a0, zero
  ADD s2, zero, zero
  ADDI s3, zero, 1
  JAL zero, bb24
bb24:
  ADD s4, s3, zero
  ADD s5, s2, zero
  LA s6, MAX
  LW s7, 0(s6)
  SLT s6, s4, s7
  XOR s7, s6, zero
  SLTU s6, zero, s7
  BNE s6, zero, bb25
  JAL zero, bb26
bb25:
  CALL getfloat
  FSGNJ.D fs0, fa0, fa0
  LA s6, PI
  FLW fs1, 0(s6)
  FMUL.S fs2, fs1, fs0
  FMUL.S fs1, fs2, fs0
  FCVT.W.S s6, fs0, rtz
  ADD a0, s6, zero
  CALL circle_area
  FSGNJ.D fs2, fa0, fa0
  ADDI s6, zero, 4
  MULW s7, s5, s6
  ADDI t6, sp, 0
  ADD s6, t6, s7
  ADDI s7, zero, 4
  MULW s8, s5, s7
  ADDI t5, sp, 0
  ADD s7, t5, s8
  FLW fs3, 0(s7)
  FADD.S fs4, fs3, fs0
  FSW fs4, 0(s6)
  FSGNJ.S fa0, fs1, fs1
  CALL putfloat
  ADDI a0, zero, 32
  CALL putch
  FCVT.W.S s6, fs2, rtz
  ADD a0, s6, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LA s6, .CONSTANT.7.6
  FLW fs0, 0(s6)
  LA s6, .CONSTANT.7.6
  FLW fs1, 0(s6)
  FSGNJN.S fs2, fs0, fs1
  FSGNJN.S fs0, fs2, fs2
  FCVT.S.W fs1, s4
  FMUL.S fs2, fs1, fs0
  FCVT.W.S s4, fs2, rtz
  ADDIW s6, s5, 1
  ADD s2, s6, zero
  ADD s3, s4, zero
  JAL zero, bb24
bb26:
  ADD a0, s1, zero
  ADDI a1, sp, 0
  ADD a1, a1, zero
  CALL putfarray
  ADD a0, zero, zero
  LD ra, 40(sp)
  FLD fs4, 48(sp)
  FLD fs3, 56(sp)
  LD s8, 64(sp)
  FLD fs2, 72(sp)
  LD s7, 80(sp)
  LD s0, 88(sp)
  LD s5, 96(sp)
  FLD fs0, 104(sp)
  FLD fs1, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s1, 136(sp)
  LD s6, 144(sp)
  LD s4, 152(sp)
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
  BNE s0, zero, bb28
  JAL zero, bb30
bb28:
  CALL error
  JAL zero, bb29
bb29:
  LD ra, 0(sp)
  LD s1, 8(sp)
  LD s0, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb30:
  CALL ok
  JAL zero, bb29
float_abs:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs1, 16(sp)
  FSD fs0, 24(sp)
  FSGNJ.D fs0, fa0, fa0
  FCVT.S.L fs1, zero
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb32
  JAL zero, bb33
bb32:
  FSGNJN.S fs1, fs0, fs0
  FSGNJ.S fa0, fs1, fs1
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs1, 16(sp)
  FLD fs0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb33:
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs1, 16(sp)
  FLD fs0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
