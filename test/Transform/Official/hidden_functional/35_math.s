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
my_exp:   # loop depth 0
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
bb1:   # loop depth 0
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
bb2:   # loop depth 0
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
eee:   # loop depth 0
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
bb4:   # loop depth 0
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
bb5:   # loop depth 0
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
asr5:   # loop depth 0
  ADDI sp, sp, -160
  SD ra, 24(sp)
  SD s0, 32(sp)
  SD s1, 40(sp)
  SD s2, 48(sp)
  SD s3, 56(sp)
  FSD fs0, 64(sp)
  FSD fs1, 72(sp)
  FSD fs2, 80(sp)
  FSD fs3, 88(sp)
  FSD fs4, 96(sp)
  FSD fs5, 104(sp)
  FSD fs6, 112(sp)
  FSD fs7, 120(sp)
  FSD fs8, 128(sp)
  FSD fs9, 136(sp)
  FSD fs10, 144(sp)
  FSD fs11, 152(sp)
  FSGNJ.D fs6, fa0, fa0
  FSGNJ.D fs7, fa1, fa1
  FSGNJ.D fa0, fa2, fa2
  FSW fa0, 16(sp)
  FSGNJ.D fa0, fa3, fa3
  FSW fa0, 20(sp)
  ADD s0, a0, zero
  FSUB.S fa0, fs7, fs6
  ADDI s1, zero, 2
  FCVT.S.W fs8, s1
  FDIV.S fa0, fa0, fs8
  FADD.S fs4, fs6, fa0
  FSUB.S fs2, fs4, fs6
  FDIV.S fa0, fs2, fs8
  FADD.S fs3, fs6, fa0
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
  FMUL.S fa0, fs4, fs4
  FSW fa0, 0(sp)
  ADDI s3, zero, 0
  FCVT.S.W fs5, s3
  BNE s1, zero, bb21
  # implict jump to bb7
bb7:   # loop depth 0
  BNE s2, zero, bb20
  # implict jump to bb8
bb8:   # loop depth 0
  FSGNJ.S fs3, fs5, fs5
  # implict jump to bb9
bb9:   # loop depth 0
  FSUB.S fs2, fs7, fs4
  FDIV.S fa0, fs2, fs8
  FADD.S fa0, fs4, fa0
  FSW fa0, 4(sp)
  BNE s1, zero, bb19
  # implict jump to bb10
bb10:   # loop depth 0
  BNE s2, zero, bb18
  # implict jump to bb11
bb11:   # loop depth 0
  FSGNJ.S fs2, fs5, fs5
  # implict jump to bb12
bb12:   # loop depth 0
  FADD.S fa2, fs3, fs2
  FLW fa0, 20(sp)
  FSUB.S fa1, fa2, fa0
  FLT.S a0, fs5, fa1
  BNE a0, zero, bb17
  # implict jump to bb13
bb13:   # loop depth 0
  FSGNJN.S fa0, fa1, fa1
  # implict jump to bb14
bb14:   # loop depth 0
  ADDI a0, zero, 15
  FCVT.S.W fa3, a0
  FLW fs0, 16(sp)
  FMUL.S fa3, fa3, fs0
  FLE.S a0, fa0, fa3
  BNE a0, zero, bb16
  # implict jump to bb15
bb15:   # loop depth 0
  FLW fa0, 16(sp)
  FDIV.S fs0, fa0, fs8
  FSGNJ.S fa0, fs6, fs6
  FSGNJ.S fa1, fs4, fs4
  FSGNJ.S fa2, fs0, fs0
  FSGNJ.S fa3, fs3, fs3
  ADD a0, s0, zero
  CALL asr5
  FSGNJ.D fs1, fa0, fa0
  FSGNJ.S fa0, fs4, fs4
  FSGNJ.S fa1, fs7, fs7
  FSGNJ.S fa2, fs0, fs0
  FSGNJ.S fa3, fs2, fs2
  ADD a0, s0, zero
  CALL asr5
  FADD.S fa0, fs1, fa0
  LD ra, 24(sp)
  LD s0, 32(sp)
  LD s1, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  FLD fs0, 64(sp)
  FLD fs1, 72(sp)
  FLD fs2, 80(sp)
  FLD fs3, 88(sp)
  FLD fs4, 96(sp)
  FLD fs5, 104(sp)
  FLD fs6, 112(sp)
  FLD fs7, 120(sp)
  FLD fs8, 128(sp)
  FLD fs9, 136(sp)
  FLD fs10, 144(sp)
  FLD fs11, 152(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb16:   # loop depth 0
  LA t0, .CONSTANT.7.2
  FLW ft0, 0(t0)
  FDIV.S ft0, fa1, ft0
  FADD.S fa0, fa2, ft0
  LD ra, 24(sp)
  LD s0, 32(sp)
  LD s1, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  FLD fs0, 64(sp)
  FLD fs1, 72(sp)
  FLD fs2, 80(sp)
  FLD fs3, 88(sp)
  FLD fs4, 96(sp)
  FLD fs5, 104(sp)
  FLD fs6, 112(sp)
  FLD fs7, 120(sp)
  FLD fs8, 128(sp)
  FLD fs9, 136(sp)
  FLD fs10, 144(sp)
  FLD fs11, 152(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb17:   # loop depth 0
  FSGNJ.S fa0, fa1, fa1
  JAL zero, bb14
bb18:   # loop depth 0
  FLW fa0, 0(sp)
  FSUB.S fa0, fs9, fa0
  CALL my_sqrt
  FDIV.S fa0, fs9, fa0
  FSW fa0, 12(sp)
  FLW fa0, 4(sp)
  FLW fs0, 4(sp)
  FMUL.S fa0, fa0, fs0
  FSUB.S fa0, fs9, fa0
  CALL my_sqrt
  FDIV.S fa0, fs9, fa0
  FMUL.S fa0, fs10, fa0
  FLW fs0, 12(sp)
  FADD.S fs10, fs0, fa0
  FMUL.S fa0, fs7, fs7
  FSUB.S fa0, fs9, fa0
  CALL my_sqrt
  FDIV.S fa0, fs9, fa0
  FADD.S fa0, fs10, fa0
  FMUL.S fa0, fa0, fs2
  FDIV.S fs2, fa0, fs11
  JAL zero, bb12
bb19:   # loop depth 0
  FDIV.S fa0, fs9, fs4
  FLW fa1, 4(sp)
  FDIV.S fa1, fs9, fa1
  FMUL.S fa1, fs10, fa1
  FADD.S fa0, fa0, fa1
  FDIV.S fa1, fs9, fs7
  FADD.S fa0, fa0, fa1
  FMUL.S fa0, fa0, fs2
  FDIV.S fs2, fa0, fs11
  JAL zero, bb12
bb20:   # loop depth 0
  FMUL.S fa0, fs6, fs6
  FSUB.S fa0, fs9, fa0
  CALL my_sqrt
  FDIV.S fa0, fs9, fa0
  FSW fa0, 8(sp)
  FMUL.S fa0, fs3, fs3
  FSUB.S fa0, fs9, fa0
  CALL my_sqrt
  FDIV.S fa0, fs9, fa0
  FMUL.S fa0, fs10, fa0
  FLW fs0, 8(sp)
  FADD.S fs3, fs0, fa0
  FLW fa0, 0(sp)
  FSUB.S fa0, fs9, fa0
  CALL my_sqrt
  FDIV.S fa0, fs9, fa0
  FADD.S fa0, fs3, fa0
  FMUL.S fa0, fa0, fs2
  FDIV.S fs3, fa0, fs11
  JAL zero, bb9
bb21:   # loop depth 0
  FDIV.S fa0, fs9, fs6
  FDIV.S fs3, fs9, fs3
  FMUL.S fs3, fs10, fs3
  FADD.S fa0, fa0, fs3
  FDIV.S fs3, fs9, fs4
  FADD.S fa0, fa0, fs3
  FMUL.S fa0, fa0, fs2
  FDIV.S fs3, fa0, fs11
  JAL zero, bb9
my_sqrt:   # loop depth 0
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
bb23:   # loop depth 0
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
bb24:   # loop depth 1
  FDIV.S ft0, fs0, fa0
  FADD.S ft0, fa0, ft0
  FDIV.S fa0, ft0, ft1
  ADDI t1, zero, 1
  SUBW t0, t0, t1
  BNE t0, zero, bb26
  # implict jump to bb25
bb25:   # loop depth 0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb26:   # loop depth 1433859200
  JAL zero, bb24
bb27:   # loop depth 0
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
my_pow:   # loop depth 0
  ADDI sp, sp, -16
  SD ra, 0(sp)
  BLT a0, zero, bb39
  # implict jump to bb29
bb29:   # loop depth 0
  BNE a0, zero, bb32
  # implict jump to bb30
bb30:   # loop depth 0
  LA t0, .CONSTANT.7.5
  FLW ft0, 0(t0)
  LA t0, .CONSTANT.7.5
  FLW ft1, 0(t0)
  FSGNJ.S fa0, ft0, ft1
  # implict jump to bb31
bb31:   # loop depth 0
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb32:   # loop depth 0
  LA t0, .CONSTANT.7.5
  FLW ft0, 0(t0)
  LA t0, .CONSTANT.7.5
  FLW ft1, 0(t0)
  FSGNJ.S ft0, ft0, ft1
  # implict jump to bb33
bb33:   # loop depth 1
  ANDI t0, a0, 1
  BNE t0, zero, bb38
  # implict jump to bb34
bb34:   # loop depth 0
  # implict jump to bb35
bb35:   # loop depth 1
  FMUL.S fa0, fa0, fa0
  SRAIW t0, a0, 31
  SRLIW t0, t0, 31
  ADD t0, a0, t0
  SRAIW a0, t0, 1
  BNE a0, zero, bb37
  # implict jump to bb36
bb36:   # loop depth 0
  FSGNJ.S fa0, ft0, ft0
  JAL zero, bb31
bb37:   # loop depth 0
  JAL zero, bb33
bb38:   # loop depth 1
  FMUL.S ft0, ft0, fa0
  JAL zero, bb35
bb39:   # loop depth 0
  SUB a0, zero, a0
  CALL my_pow
  ADDI t0, zero, 1
  FCVT.S.W ft0, t0
  FDIV.S fa0, ft0, fa0
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
main:   # loop depth 0
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
bb41:   # loop depth 0
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
bb42:   # loop depth 0
  FCVT.S.L fs2, zero
  # implict jump to bb43
bb43:   # loop depth 1
  CALL getfloat
  FSGNJ.D fs1, fa0, fa0
  CALL getfloat
  FSGNJ.D fs3, fa0, fa0
  FLT.S s1, fs2, fs1
  BNE s1, zero, bb59
  # implict jump to bb44
bb44:   # loop depth 1
  FSGNJN.S fa0, fs1, fs1
  # implict jump to bb45
bb45:   # loop depth 1
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
bb46:   # loop depth 1
  ADDI a0, zero, 45
  CALL putch
  # implict jump to bb47
bb47:   # loop depth 1
  ADDI a0, zero, 32
  CALL putch
  BNE s1, zero, bb57
  # implict jump to bb48
bb48:   # loop depth 1
  ADD a0, zero, zero
  # implict jump to bb49
bb49:   # loop depth 1
  BNE a0, zero, bb56
  # implict jump to bb50
bb50:   # loop depth 1
  ADDI a0, zero, 45
  CALL putch
  # implict jump to bb51
bb51:   # loop depth 1
  ADDI a0, zero, 32
  CALL putch
  BNE s1, zero, bb55
  # implict jump to bb52
bb52:   # loop depth 1
  ADDI a0, zero, 45
  CALL putch
  # implict jump to bb53
bb53:   # loop depth 1
  ADDI a0, zero, 10
  CALL putch
  ADDI s1, zero, 1
  SUBW s0, s0, s1
  BNE s0, zero, bb54
  JAL zero, bb41
bb54:   # loop depth 1433987032
  JAL zero, bb43
bb55:   # loop depth 1
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
bb56:   # loop depth 1
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
bb57:   # loop depth 1
  FLT.S a0, fs2, fs3
  JAL zero, bb49
bb58:   # loop depth 1
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
bb59:   # loop depth 1
  FSGNJ.S fa0, fs1, fs1
  JAL zero, bb45
