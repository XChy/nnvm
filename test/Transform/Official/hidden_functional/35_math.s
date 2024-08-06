.global my_exp
.global eee
.global asr5
.global my_sqrt
.global my_pow
.global main
.section .bss







.section .data
.CONSTANT.7.0:
.word 0x402df854
.CONSTANT.7.1:
.word 0x3a83126f
.CONSTANT.7.2:
.word 0x41700000
.CONSTANT.7.3:
.word 0x41200000
.CONSTANT.7.4:
.word 0x3f000000
.CONSTANT.7.5:
.word 0x3f800000
.CONSTANT.7.6:
.word 0x322bcc77
.section .text
my_exp:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs0, 16(sp)
  FSD fs1, 24(sp)
  ADDI s0, zero, 0
  FCVT.S.W fs0, s0
  FLT.S s0, fa0, fs0
  BNE s0, zero, bb2
  # implict jump to bb1
bb1:
  FCVT.W.S a0, fa0, rtz
  FCVT.S.W fs0, a0
  FSUB.S fs1, fa0, fs0
  LA s0, .CONSTANT.7.0
  FLW fa0, 0(s0)
  LA s0, .CONSTANT.7.0
  FLW fs0, 0(s0)
  FSGNJ.S fa0, fa0, fs0
  CALL my_pow
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.S fa0, fs1, fs1
  CALL eee
  FMUL.S fa0, fs0, fa0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb2:
  FSGNJN.S fa0, fa0, fa0
  CALL my_exp
  ADDI t0, zero, 1
  FCVT.S.W ft0, t0
  FDIV.S fa0, ft0, fa0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
eee:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  FSD fs0, 24(sp)
  FSD fs1, 32(sp)
  FSD fs2, 40(sp)
  FSGNJ.D fs0, fa0, fa0
  LA s0, .CONSTANT.7.1
  FLW fa0, 0(s0)
  FLT.S s0, fa0, fs0
  ADDI s1, zero, 2
  FCVT.S.W fa0, s1
  BNE s0, zero, bb5
  # implict jump to bb4
bb4:
  ADDI a0, zero, 1
  FCVT.S.W fs1, a0
  FADD.S fs1, fs1, fs0
  FMUL.S fs2, fs0, fs0
  FDIV.S fa0, fs2, fa0
  FADD.S fs1, fs1, fa0
  FSGNJ.S fa0, fs0, fs0
  ADDI a0, zero, 3
  CALL my_pow
  ADDI a0, zero, 6
  FCVT.S.W fs2, a0
  FDIV.S fa0, fa0, fs2
  FADD.S fs1, fs1, fa0
  FSGNJ.S fa0, fs0, fs0
  ADDI a0, zero, 4
  CALL my_pow
  ADDI a0, zero, 24
  FCVT.S.W fs2, a0
  FDIV.S fa0, fa0, fs2
  FADD.S fs1, fs1, fa0
  FSGNJ.S fa0, fs0, fs0
  ADDI a0, zero, 5
  CALL my_pow
  ADDI t0, zero, 120
  FCVT.S.W ft0, t0
  FDIV.S ft0, fa0, ft0
  FADD.S fa0, fs1, ft0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  FLD fs0, 24(sp)
  FLD fs1, 32(sp)
  FLD fs2, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb5:
  FDIV.S fa0, fs0, fa0
  CALL eee
  FMUL.S fa0, fa0, fa0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  FLD fs0, 24(sp)
  FLD fs1, 32(sp)
  FLD fs2, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
asr5:
  ADDI sp, sp, -176
  SD ra, 32(sp)
  SD s0, 40(sp)
  SD s1, 48(sp)
  SD s2, 56(sp)
  SD s3, 64(sp)
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
  FSGNJ.D fs5, fa0, fa0
  FSGNJ.D fs6, fa1, fa1
  FSGNJ.D fs7, fa2, fa2
  FSGNJ.D fa0, fa3, fa3
  FSW fa0, 20(sp)
  ADD s0, a0, zero
  FSUB.S fa0, fs6, fs5
  ADDI s1, zero, 2
  FCVT.S.W fs8, s1
  FDIV.S fa0, fa0, fs8
  FADD.S fs3, fs5, fa0
  FSUB.S fs1, fs3, fs5
  FDIV.S fa0, fs1, fs8
  FADD.S fs2, fs5, fa0
  XORI s1, s0, 1
  SLTIU s1, s1, 1
  ADDI s2, zero, 1
  FCVT.S.W fs9, s2
  ADDI s2, zero, 4
  FCVT.S.W fs10, s2
  ADDI s2, zero, 6
  FCVT.S.W fs11, s2
  XORI s2, s0, 2
  SLTIU s2, s2, 1
  FMUL.S fa0, fs3, fs3
  FSW fa0, 16(sp)
  ADDI s3, zero, 0
  FCVT.S.W fs4, s3
  BNE s1, zero, bb21
  # implict jump to bb7
bb7:
  BNE s2, zero, bb20
  # implict jump to bb8
bb8:
  FSGNJ.S fs2, fs4, fs4
  # implict jump to bb9
bb9:
  FSUB.S fs1, fs6, fs3
  FDIV.S fa0, fs1, fs8
  FADD.S fa0, fs3, fa0
  FSW fa0, 4(sp)
  BNE s1, zero, bb19
  # implict jump to bb10
bb10:
  BNE s2, zero, bb18
  # implict jump to bb11
bb11:
  FSGNJ.S fs1, fs4, fs4
  # implict jump to bb12
bb12:
  FADD.S fa2, fs2, fs1
  FLW fa0, 20(sp)
  FSUB.S fa1, fa2, fa0
  FLT.S a0, fs4, fa1
  BNE a0, zero, bb17
  # implict jump to bb13
bb13:
  FSGNJN.S fa0, fa1, fa1
  # implict jump to bb14
bb14:
  ADDI a0, zero, 15
  FCVT.S.W fa3, a0
  FMUL.S fa3, fa3, fs7
  FLE.S a0, fa0, fa3
  BNE a0, zero, bb16
  # implict jump to bb15
bb15:
  FDIV.S fs0, fs7, fs8
  FSGNJ.S fa0, fs5, fs5
  FSGNJ.S fa1, fs3, fs3
  FSGNJ.S fa2, fs0, fs0
  FSGNJ.S fa3, fs2, fs2
  ADD a0, s0, zero
  CALL asr5
  FSGNJ.D fs2, fa0, fa0
  FSGNJ.S fa0, fs3, fs3
  FSGNJ.S fa1, fs6, fs6
  FSGNJ.S fa2, fs0, fs0
  FSGNJ.S fa3, fs1, fs1
  ADD a0, s0, zero
  CALL asr5
  FADD.S fa0, fs2, fa0
  LD ra, 32(sp)
  LD s0, 40(sp)
  LD s1, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
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
bb16:
  LA t0, .CONSTANT.7.2
  FLW ft0, 0(t0)
  FDIV.S ft0, fa1, ft0
  FADD.S fa0, fa2, ft0
  LD ra, 32(sp)
  LD s0, 40(sp)
  LD s1, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
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
bb17:
  FSGNJ.S fa0, fa1, fa1
  JAL zero, bb14
bb18:
  FLW fa0, 16(sp)
  FSUB.S fa0, fs9, fa0
  CALL my_sqrt
  FDIV.S fa0, fs9, fa0
  FSW fa0, 24(sp)
  FLW fa0, 4(sp)
  FLW fs0, 4(sp)
  FMUL.S fa0, fa0, fs0
  FSUB.S fa0, fs9, fa0
  CALL my_sqrt
  FDIV.S fa0, fs9, fa0
  FMUL.S fa0, fs10, fa0
  FLW fs0, 24(sp)
  FADD.S fs10, fs0, fa0
  FMUL.S fa0, fs6, fs6
  FSUB.S fa0, fs9, fa0
  CALL my_sqrt
  FDIV.S fa0, fs9, fa0
  FADD.S fa0, fs10, fa0
  FMUL.S fa0, fa0, fs1
  FDIV.S fs1, fa0, fs11
  JAL zero, bb12
bb19:
  FDIV.S fa0, fs9, fs3
  FLW fa1, 4(sp)
  FDIV.S fa1, fs9, fa1
  FMUL.S fa1, fs10, fa1
  FADD.S fa0, fa0, fa1
  FDIV.S fa1, fs9, fs6
  FADD.S fa0, fa0, fa1
  FMUL.S fa0, fa0, fs1
  FDIV.S fs1, fa0, fs11
  JAL zero, bb12
bb20:
  FMUL.S fa0, fs5, fs5
  FSUB.S fa0, fs9, fa0
  CALL my_sqrt
  FDIV.S fa0, fs9, fa0
  FSW fa0, 8(sp)
  FMUL.S fa0, fs2, fs2
  FSUB.S fa0, fs9, fa0
  CALL my_sqrt
  FDIV.S fa0, fs9, fa0
  FMUL.S fa0, fs10, fa0
  FLW fs0, 8(sp)
  FADD.S fs2, fs0, fa0
  FLW fa0, 16(sp)
  FSUB.S fa0, fs9, fa0
  CALL my_sqrt
  FDIV.S fa0, fs9, fa0
  FADD.S fa0, fs2, fa0
  FMUL.S fa0, fa0, fs1
  FDIV.S fs2, fa0, fs11
  JAL zero, bb9
bb21:
  FDIV.S fa0, fs9, fs5
  FDIV.S fs2, fs9, fs2
  FMUL.S fs2, fs10, fs2
  FADD.S fa0, fa0, fs2
  FDIV.S fs2, fs9, fs3
  FADD.S fa0, fa0, fs2
  FMUL.S fa0, fa0, fs1
  FDIV.S fs2, fa0, fs11
  JAL zero, bb9
my_sqrt:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs0, 16(sp)
  FSGNJ.D fs0, fa0, fa0
  ADDI s0, zero, 100
  FCVT.S.W fa0, s0
  FLT.S s0, fa0, fs0
  BNE s0, zero, bb27
  # implict jump to bb23
bb23:
  ADDI t0, zero, 8
  FCVT.S.W ft0, t0
  FDIV.S ft0, fs0, ft0
  LA t0, .CONSTANT.7.4
  FLW ft1, 0(t0)
  FADD.S ft0, ft0, ft1
  ADDI t0, zero, 2
  FCVT.S.W ft1, t0
  FMUL.S ft2, ft1, fs0
  ADDI t0, zero, 4
  FCVT.S.W ft3, t0
  FADD.S ft3, ft3, fs0
  FDIV.S ft2, ft2, ft3
  FADD.S fa0, ft0, ft2
  ADDI t0, zero, 10
  # implict jump to bb24
bb24:
  FDIV.S ft0, fs0, fa0
  FADD.S ft0, fa0, ft0
  FDIV.S fa0, ft0, ft1
  ADDI t1, zero, 1
  SUBW t0, t0, t1
  BNE t0, zero, bb26
  # implict jump to bb25
bb25:
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb26:
  JAL zero, bb24
bb27:
  FDIV.S fa0, fs0, fa0
  CALL my_sqrt
  LA t0, .CONSTANT.7.3
  FLW ft0, 0(t0)
  FMUL.S fa0, ft0, fa0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
my_pow:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  BLT a0, zero, bb39
  # implict jump to bb29
bb29:
  BNE a0, zero, bb32
  # implict jump to bb30
bb30:
  LA t0, .CONSTANT.7.5
  FLW ft0, 0(t0)
  LA t0, .CONSTANT.7.5
  FLW ft1, 0(t0)
  FSGNJ.S fa0, ft0, ft1
  # implict jump to bb31
bb31:
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb32:
  LA t0, .CONSTANT.7.5
  FLW ft0, 0(t0)
  LA t0, .CONSTANT.7.5
  FLW ft1, 0(t0)
  FSGNJ.S ft0, ft0, ft1
  # implict jump to bb33
bb33:
  ANDI t0, a0, 1
  BNE t0, zero, bb38
  # implict jump to bb34
bb34:
  # implict jump to bb35
bb35:
  FMUL.S fa0, fa0, fa0
  SRAIW t0, a0, 31
  SRLIW t0, t0, 31
  ADD t0, a0, t0
  SRAIW a0, t0, 1
  BNE a0, zero, bb37
  # implict jump to bb36
bb36:
  FSGNJ.S fa0, ft0, ft0
  JAL zero, bb31
bb37:
  JAL zero, bb33
bb38:
  FMUL.S ft0, ft0, fa0
  JAL zero, bb35
bb39:
  SUB a0, zero, a0
  CALL my_pow
  ADDI t0, zero, 1
  FCVT.S.W ft0, t0
  FDIV.S fa0, ft0, fa0
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -96
  SD ra, 0(sp)
  SD s1, 8(sp)
  SD s0, 16(sp)
  FSD fs0, 24(sp)
  FSD fs1, 32(sp)
  FSD fs2, 40(sp)
  FSD fs3, 48(sp)
  FSD fs4, 56(sp)
  FSD fs5, 64(sp)
  FSD fs6, 72(sp)
  FSD fs7, 80(sp)
  FSD fs8, 88(sp)
  CALL getint
  ADD s0, a0, zero
  BNE s0, zero, bb42
  # implict jump to bb41
bb41:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s1, 8(sp)
  LD s0, 16(sp)
  FLD fs0, 24(sp)
  FLD fs1, 32(sp)
  FLD fs2, 40(sp)
  FLD fs3, 48(sp)
  FLD fs4, 56(sp)
  FLD fs5, 64(sp)
  FLD fs6, 72(sp)
  FLD fs7, 80(sp)
  FLD fs8, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb42:
  FCVT.S.L fs2, zero
  # implict jump to bb43
bb43:
  CALL getfloat
  FSGNJ.D fs1, fa0, fa0
  CALL getfloat
  FSGNJ.D fs3, fa0, fa0
  FLT.S s1, fs2, fs1
  BNE s1, zero, bb59
  # implict jump to bb44
bb44:
  FSGNJN.S fa0, fs1, fs1
  # implict jump to bb45
bb45:
  CALL putfloat
  ADDI a0, zero, 32
  CALL putch
  FSGNJ.S fa0, fs1, fs1
  ADDI a0, zero, 2
  CALL my_pow
  CALL putfloat
  ADDI a0, zero, 32
  CALL putch
  FSGNJ.S fa0, fs1, fs1
  CALL my_sqrt
  CALL putfloat
  ADDI a0, zero, 32
  CALL putch
  FSGNJ.S fa0, fs1, fs1
  CALL my_exp
  CALL putfloat
  ADDI a0, zero, 32
  CALL putch
  ADDI a0, zero, 1
  FCVT.S.W fs0, a0
  ADDI a0, zero, 2
  FCVT.S.W fs4, a0
  ADDI a0, zero, 4
  FCVT.S.W fs5, a0
  ADDI a0, zero, 6
  FCVT.S.W fs6, a0
  BNE s1, zero, bb58
  # implict jump to bb46
bb46:
  ADDI a0, zero, 45
  CALL putch
  # implict jump to bb47
bb47:
  ADDI a0, zero, 32
  CALL putch
  BNE s1, zero, bb57
  # implict jump to bb48
bb48:
  ADD a0, zero, zero
  # implict jump to bb49
bb49:
  BNE a0, zero, bb56
  # implict jump to bb50
bb50:
  ADDI a0, zero, 45
  CALL putch
  # implict jump to bb51
bb51:
  ADDI a0, zero, 32
  CALL putch
  BNE s1, zero, bb55
  # implict jump to bb52
bb52:
  ADDI a0, zero, 45
  CALL putch
  # implict jump to bb53
bb53:
  ADDI a0, zero, 10
  CALL putch
  ADDI s1, zero, 1
  SUBW s0, s0, s1
  BNE s0, zero, bb54
  JAL zero, bb41
bb54:
  JAL zero, bb43
bb55:
  FSUB.S fa0, fs1, fs0
  FDIV.S fa1, fa0, fs4
  FADD.S fa1, fs0, fa1
  FDIV.S fa2, fs0, fs0
  FDIV.S fa1, fs0, fa1
  FMUL.S fa1, fs5, fa1
  FADD.S fa1, fa2, fa1
  FDIV.S fa2, fs0, fs1
  FADD.S fa1, fa1, fa2
  FMUL.S fa0, fa1, fa0
  FDIV.S fa3, fa0, fs6
  FSGNJ.S fa0, fs0, fs0
  FSGNJ.S fa1, fs1, fs1
  LA a0, .CONSTANT.7.6
  FLW fa2, 0(a0)
  LA a0, .CONSTANT.7.6
  FLW fs0, 0(a0)
  FSGNJ.S fa2, fa2, fs0
  ADDI a0, zero, 1
  CALL asr5
  FMUL.S fa0, fs3, fa0
  CALL my_exp
  CALL putfloat
  JAL zero, bb53
bb56:
  FSUB.S fa0, fs3, fs0
  FDIV.S fa1, fa0, fs4
  FADD.S fa1, fs0, fa1
  FDIV.S fs8, fs0, fs0
  FDIV.S fa1, fs0, fa1
  FMUL.S fa1, fs5, fa1
  FADD.S fa1, fs8, fa1
  FDIV.S fa2, fs0, fs3
  FADD.S fa1, fa1, fa2
  FMUL.S fa0, fa1, fa0
  FDIV.S fa3, fa0, fs6
  FSGNJ.S fa0, fs0, fs0
  FSGNJ.S fa1, fs3, fs3
  LA a0, .CONSTANT.7.6
  FLW fa2, 0(a0)
  LA a0, .CONSTANT.7.6
  FLW fs7, 0(a0)
  FSGNJ.S fa2, fa2, fs7
  ADDI a0, zero, 1
  CALL asr5
  FSGNJ.D fs7, fa0, fa0
  FSUB.S fa0, fs1, fs0
  FDIV.S fa1, fa0, fs4
  FADD.S fa1, fs0, fa1
  FDIV.S fa1, fs0, fa1
  FMUL.S fa1, fs5, fa1
  FADD.S fa1, fs8, fa1
  FDIV.S fa2, fs0, fs1
  FADD.S fa1, fa1, fa2
  FMUL.S fa0, fa1, fa0
  FDIV.S fa3, fa0, fs6
  FSGNJ.S fa0, fs0, fs0
  FSGNJ.S fa1, fs1, fs1
  LA a0, .CONSTANT.7.6
  FLW fa2, 0(a0)
  LA a0, .CONSTANT.7.6
  FLW fs8, 0(a0)
  FSGNJ.S fa2, fa2, fs8
  ADDI a0, zero, 1
  CALL asr5
  FDIV.S fa0, fs7, fa0
  CALL putfloat
  JAL zero, bb51
bb57:
  FLT.S a0, fs2, fs3
  JAL zero, bb49
bb58:
  FSUB.S fa0, fs1, fs0
  FDIV.S fa1, fa0, fs4
  FADD.S fa1, fs0, fa1
  FDIV.S fa2, fs0, fs0
  FDIV.S fa1, fs0, fa1
  FMUL.S fa1, fs5, fa1
  FADD.S fa1, fa2, fa1
  FDIV.S fa2, fs0, fs1
  FADD.S fa1, fa1, fa2
  FMUL.S fa0, fa1, fa0
  FDIV.S fa3, fa0, fs6
  FSGNJ.S fa0, fs0, fs0
  FSGNJ.S fa1, fs1, fs1
  LA a0, .CONSTANT.7.6
  FLW fa2, 0(a0)
  LA a0, .CONSTANT.7.6
  FLW fs7, 0(a0)
  FSGNJ.S fa2, fa2, fs7
  ADDI a0, zero, 1
  CALL asr5
  CALL putfloat
  JAL zero, bb47
bb59:
  FSGNJ.S fa0, fs1, fs1
  JAL zero, bb45
