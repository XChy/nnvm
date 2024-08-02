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
  FSGNJ.D fs0, fa0, fa0
  ADDI s0, zero, 0
  FCVT.S.W fa0, s0
  FLT.S s0, fs0, fa0
  BNE s0, zero, bb2
  # implict jump to bb1
bb1:
  FCVT.W.S s0, fs0, rtz
  FCVT.S.W fa0, s0
  FSUB.S fs0, fs0, fa0
  LA a0, .CONSTANT.7.0
  FLW fa0, 0(a0)
  LA a0, .CONSTANT.7.0
  FLW fs1, 0(a0)
  FSGNJ.S fa0, fa0, fs1
  ADD a0, s0, zero
  CALL my_pow
  FSGNJ.D fs1, fa0, fa0
  FSGNJ.S fa0, fs0, fs0
  CALL eee
  FSGNJ.D ft0, fa0, fa0
  FMUL.S ft0, fs1, ft0
  FSGNJ.S fa0, ft0, ft0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb2:
  FSGNJN.S fa0, fs0, fs0
  CALL my_exp
  FSGNJ.D ft0, fa0, fa0
  ADDI t0, zero, 1
  FCVT.S.W ft1, t0
  FDIV.S ft0, ft1, ft0
  FSGNJ.S fa0, ft0, ft0
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
  FSD fs0, 16(sp)
  FSD fs1, 24(sp)
  FSD fs2, 32(sp)
  FSGNJ.D fs2, fa0, fa0
  LA s0, .CONSTANT.7.1
  FLW fa0, 0(s0)
  FLT.S s0, fa0, fs2
  BNE s0, zero, bb5
  # implict jump to bb4
bb4:
  ADDI a0, zero, 1
  FCVT.S.W fa0, a0
  FADD.S fs1, fa0, fs2
  FMUL.S fs0, fs2, fs2
  ADDI a0, zero, 2
  FCVT.S.W fa0, a0
  FDIV.S fa0, fs0, fa0
  FADD.S fs1, fs1, fa0
  FSGNJ.S fa0, fs2, fs2
  ADDI a0, zero, 3
  CALL my_pow
  FSGNJ.D fs0, fa0, fa0
  ADDI a0, zero, 6
  FCVT.S.W fa0, a0
  FDIV.S fa0, fs0, fa0
  FADD.S fs1, fs1, fa0
  FSGNJ.S fa0, fs2, fs2
  ADDI a0, zero, 4
  CALL my_pow
  FSGNJ.D fs0, fa0, fa0
  ADDI a0, zero, 24
  FCVT.S.W fa0, a0
  FDIV.S fa0, fs0, fa0
  FADD.S fs0, fs1, fa0
  FSGNJ.S fa0, fs2, fs2
  ADDI a0, zero, 5
  CALL my_pow
  FSGNJ.D ft1, fa0, fa0
  ADDI t0, zero, 120
  FCVT.S.W ft0, t0
  FDIV.S ft0, ft1, ft0
  FADD.S ft0, fs0, ft0
  FSGNJ.S fa0, ft0, ft0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  FLD fs2, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb5:
  ADDI s0, zero, 2
  FCVT.S.W fa0, s0
  FDIV.S fa0, fs2, fa0
  CALL eee
  FSGNJ.D ft0, fa0, fa0
  FMUL.S ft0, ft0, ft0
  FSGNJ.S fa0, ft0, ft0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  FLD fs2, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
asr5:
  ADDI sp, sp, -128
  SD ra, 0(sp)
  FSD fs3, 8(sp)
  FSD fs4, 16(sp)
  FSD fs5, 24(sp)
  FSD fs6, 32(sp)
  FSD fs7, 40(sp)
  FSD fs8, 48(sp)
  FSD fs9, 56(sp)
  FSD fs10, 64(sp)
  SD s0, 72(sp)
  SD s1, 80(sp)
  SD s2, 88(sp)
  FSD fs0, 96(sp)
  FSD fs1, 104(sp)
  FSD fs2, 112(sp)
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.D fs2, fa1, fa1
  FSGNJ.D fs1, fa2, fa2
  FSGNJ.D fs6, fa3, fa3
  ADD s1, a0, zero
  FSUB.S fa0, fs2, fs0
  ADDI s0, zero, 2
  FCVT.S.W fs4, s0
  FDIV.S fa0, fa0, fs4
  FADD.S fs3, fs0, fa0
  FSUB.S fs8, fs3, fs0
  FDIV.S fa0, fs8, fs4
  FADD.S fs5, fs0, fa0
  XORI s0, s1, 1
  SLTIU s2, s0, 1
  BNE s2, zero, bb21
  # implict jump to bb7
bb7:
  XORI s0, s1, 2
  SLTIU s0, s0, 1
  BNE s0, zero, bb20
  # implict jump to bb8
bb8:
  ADDI s0, zero, 0
  FCVT.S.W fa0, s0
  # implict jump to bb9
bb9:
  FSGNJ.S fs5, fa0, fa0
  FSUB.S fs9, fs2, fs3
  FDIV.S fa0, fs9, fs4
  FADD.S fs10, fs3, fa0
  BNE s2, zero, bb19
  # implict jump to bb10
bb10:
  XORI s0, s1, 2
  SLTIU s0, s0, 1
  BNE s0, zero, bb18
  # implict jump to bb11
bb11:
  ADDI a0, zero, 0
  FCVT.S.W fa0, a0
  # implict jump to bb12
bb12:
  FSGNJ.S fs7, fa0, fa0
  FADD.S fa3, fs5, fs7
  FSUB.S fa2, fa3, fs6
  ADDI a0, zero, 0
  FCVT.S.W fa0, a0
  FLT.S a0, fa0, fa2
  BNE a0, zero, bb17
  # implict jump to bb13
bb13:
  FSGNJN.S fa0, fa2, fa2
  # implict jump to bb14
bb14:
  FSGNJ.S fa1, fa0, fa0
  ADDI a0, zero, 15
  FCVT.S.W fa0, a0
  FMUL.S fa0, fa0, fs1
  FLE.S a0, fa1, fa0
  BNE a0, zero, bb16
  # implict jump to bb15
bb15:
  FDIV.S fs1, fs1, fs4
  FSGNJ.S fa0, fs0, fs0
  FSGNJ.S fa1, fs3, fs3
  FSGNJ.S fa2, fs1, fs1
  FSGNJ.S fa3, fs5, fs5
  ADD a0, s1, zero
  CALL asr5
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.S fa0, fs3, fs3
  FSGNJ.S fa1, fs2, fs2
  FSGNJ.S fa2, fs1, fs1
  FSGNJ.S fa3, fs7, fs7
  ADD a0, s1, zero
  CALL asr5
  FSGNJ.D ft0, fa0, fa0
  FADD.S ft0, fs0, ft0
  FSGNJ.S fa0, ft0, ft0
  LD ra, 0(sp)
  FLD fs3, 8(sp)
  FLD fs4, 16(sp)
  FLD fs5, 24(sp)
  FLD fs6, 32(sp)
  FLD fs7, 40(sp)
  FLD fs8, 48(sp)
  FLD fs9, 56(sp)
  FLD fs10, 64(sp)
  LD s0, 72(sp)
  LD s1, 80(sp)
  LD s2, 88(sp)
  FLD fs0, 96(sp)
  FLD fs1, 104(sp)
  FLD fs2, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb16:
  LA t0, .CONSTANT.7.2
  FLW ft0, 0(t0)
  FDIV.S ft0, fa2, ft0
  FADD.S ft0, fa3, ft0
  FSGNJ.S fa0, ft0, ft0
  LD ra, 0(sp)
  FLD fs3, 8(sp)
  FLD fs4, 16(sp)
  FLD fs5, 24(sp)
  FLD fs6, 32(sp)
  FLD fs7, 40(sp)
  FLD fs8, 48(sp)
  FLD fs9, 56(sp)
  FLD fs10, 64(sp)
  LD s0, 72(sp)
  LD s1, 80(sp)
  LD s2, 88(sp)
  FLD fs0, 96(sp)
  FLD fs1, 104(sp)
  FLD fs2, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb17:
  FSGNJ.S fa0, fa2, fa2
  JAL zero, bb14
bb18:
  FMUL.S fa0, fs3, fs3
  ADDI s0, zero, 1
  FCVT.S.W fs8, s0
  FSUB.S fa0, fs8, fa0
  CALL my_sqrt
  FDIV.S fs7, fs8, fa0
  FMUL.S fa0, fs10, fs10
  FSUB.S fa0, fs8, fa0
  CALL my_sqrt
  FDIV.S fs10, fs8, fa0
  ADDI s0, zero, 4
  FCVT.S.W fa0, s0
  FMUL.S fa0, fa0, fs10
  FADD.S fs7, fs7, fa0
  FMUL.S fa0, fs2, fs2
  FSUB.S fa0, fs8, fa0
  CALL my_sqrt
  FDIV.S fa0, fs8, fa0
  FADD.S fa0, fs7, fa0
  FMUL.S fa1, fa0, fs9
  ADDI a0, zero, 6
  FCVT.S.W fa0, a0
  FDIV.S fa0, fa1, fa0
  JAL zero, bb12
bb19:
  ADDI a0, zero, 1
  FCVT.S.W fa2, a0
  FDIV.S fa0, fa2, fs3
  FDIV.S fa1, fa2, fs10
  ADDI a0, zero, 4
  FCVT.S.W fa3, a0
  FMUL.S fa1, fa3, fa1
  FADD.S fa1, fa0, fa1
  FDIV.S fa0, fa2, fs2
  FADD.S fa0, fa1, fa0
  FMUL.S fa1, fa0, fs9
  ADDI a0, zero, 6
  FCVT.S.W fa0, a0
  FDIV.S fa0, fa1, fa0
  JAL zero, bb12
bb20:
  FMUL.S fa0, fs0, fs0
  ADDI s0, zero, 1
  FCVT.S.W fs9, s0
  FSUB.S fa0, fs9, fa0
  CALL my_sqrt
  FDIV.S fs7, fs9, fa0
  FMUL.S fa0, fs5, fs5
  FSUB.S fa0, fs9, fa0
  CALL my_sqrt
  FDIV.S fa0, fs9, fa0
  ADDI s0, zero, 4
  FCVT.S.W fs5, s0
  FMUL.S fa0, fs5, fa0
  FADD.S fs5, fs7, fa0
  FMUL.S fa0, fs3, fs3
  FSUB.S fa0, fs9, fa0
  CALL my_sqrt
  FDIV.S fa0, fs9, fa0
  FADD.S fa0, fs5, fa0
  FMUL.S fs5, fa0, fs8
  ADDI s0, zero, 6
  FCVT.S.W fa0, s0
  FDIV.S fa0, fs5, fa0
  JAL zero, bb9
bb21:
  ADDI s0, zero, 1
  FCVT.S.W fs7, s0
  FDIV.S fs9, fs7, fs0
  FDIV.S fa0, fs7, fs5
  ADDI s0, zero, 4
  FCVT.S.W fs5, s0
  FMUL.S fa0, fs5, fa0
  FADD.S fs5, fs9, fa0
  FDIV.S fa0, fs7, fs3
  FADD.S fa0, fs5, fa0
  FMUL.S fa0, fa0, fs8
  ADDI s0, zero, 6
  FCVT.S.W fs5, s0
  FDIV.S fa0, fa0, fs5
  JAL zero, bb9
my_sqrt:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs0, 16(sp)
  ADDI s0, zero, 100
  FCVT.S.W fs0, s0
  FLT.S s0, fs0, fa0
  BNE s0, zero, bb28
  # implict jump to bb23
bb23:
  ADDI t0, zero, 8
  FCVT.S.W ft0, t0
  FDIV.S ft0, fa0, ft0
  LA t0, .CONSTANT.7.4
  FLW ft1, 0(t0)
  FADD.S ft3, ft0, ft1
  ADDI t0, zero, 2
  FCVT.S.W ft2, t0
  FMUL.S ft1, ft2, fa0
  ADDI t0, zero, 4
  FCVT.S.W ft0, t0
  FADD.S ft0, ft0, fa0
  FDIV.S ft0, ft1, ft0
  FADD.S ft0, ft3, ft0
  ADDI t0, zero, 10
  # implict jump to bb24
bb24:
  FSGNJ.S ft1, ft0, ft0
  FDIV.S ft0, fa0, ft1
  FADD.S ft0, ft1, ft0
  FDIV.S ft0, ft0, ft2
  ADDI t1, zero, 1
  SUBW t0, t0, t1
  BNE t0, zero, bb27
  # implict jump to bb25
bb25:
  # implict jump to bb26
bb26:
  FSGNJ.S fa0, ft0, ft0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb27:
  JAL zero, bb24
bb28:
  FDIV.S fa0, fa0, fs0
  CALL my_sqrt
  FSGNJ.D ft1, fa0, fa0
  LA t0, .CONSTANT.7.3
  FLW ft0, 0(t0)
  FMUL.S ft0, ft0, ft1
  FSGNJ.S fa0, ft0, ft0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
my_pow:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  BLT a0, zero, bb40
  # implict jump to bb30
bb30:
  BNE a0, zero, bb33
  # implict jump to bb31
bb31:
  LA t0, .CONSTANT.7.5
  FLW ft0, 0(t0)
  LA t0, .CONSTANT.7.5
  FLW ft1, 0(t0)
  FSGNJ.S ft0, ft0, ft1
  # implict jump to bb32
bb32:
  FSGNJ.S fa0, ft0, ft0
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb33:
  FSGNJ.S ft1, fa0, fa0
  ADD t0, a0, zero
  LA t1, .CONSTANT.7.5
  FLW ft2, 0(t1)
  LA t1, .CONSTANT.7.5
  FLW ft0, 0(t1)
  FSGNJ.S ft0, ft2, ft0
  # implict jump to bb34
bb34:
  ADD t1, t0, zero
  ADDI t0, zero, 2
  REMW t0, t1, t0
  BNE t0, zero, bb39
  # implict jump to bb35
bb35:
  # implict jump to bb36
bb36:
  FSGNJ.S ft2, ft0, ft0
  FMUL.S ft0, ft1, ft1
  SRAIW t0, t1, 31
  SRLIW t0, t0, 31
  ADD t0, t1, t0
  SRAIW t0, t0, 1
  BNE t0, zero, bb38
  # implict jump to bb37
bb37:
  FSGNJ.S ft0, ft2, ft2
  JAL zero, bb32
bb38:
  FSGNJ.S ft1, ft0, ft0
  FSGNJ.S ft0, ft2, ft2
  JAL zero, bb34
bb39:
  FMUL.S ft0, ft0, ft1
  JAL zero, bb36
bb40:
  SUB a0, zero, a0
  CALL my_pow
  FSGNJ.D ft0, fa0, fa0
  ADDI t0, zero, 1
  FCVT.S.W ft1, t0
  FDIV.S ft0, ft1, ft0
  FSGNJ.S fa0, ft0, ft0
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
  BNE s0, zero, bb43
  # implict jump to bb42
bb42:
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
bb43:
  FCVT.S.L fs2, zero
  # implict jump to bb44
bb44:
  ADD s1, s0, zero
  CALL getfloat
  FSGNJ.D fs4, fa0, fa0
  CALL getfloat
  FSGNJ.D fs3, fa0, fa0
  FLT.S s0, fs2, fs4
  BNE s0, zero, bb60
  # implict jump to bb45
bb45:
  FSGNJN.S fa0, fs4, fs4
  # implict jump to bb46
bb46:
  CALL putfloat
  ADDI a0, zero, 32
  CALL putch
  FSGNJ.S fa0, fs4, fs4
  ADDI a0, zero, 2
  CALL my_pow
  CALL putfloat
  ADDI a0, zero, 32
  CALL putch
  FSGNJ.S fa0, fs4, fs4
  CALL my_sqrt
  CALL putfloat
  ADDI a0, zero, 32
  CALL putch
  FSGNJ.S fa0, fs4, fs4
  CALL my_exp
  CALL putfloat
  ADDI a0, zero, 32
  CALL putch
  BNE s0, zero, bb59
  # implict jump to bb47
bb47:
  ADDI a0, zero, 45
  CALL putch
  # implict jump to bb48
bb48:
  ADDI a0, zero, 32
  CALL putch
  BNE s0, zero, bb58
  # implict jump to bb49
bb49:
  ADD a0, zero, zero
  # implict jump to bb50
bb50:
  BNE a0, zero, bb57
  # implict jump to bb51
bb51:
  ADDI a0, zero, 45
  CALL putch
  # implict jump to bb52
bb52:
  ADDI a0, zero, 32
  CALL putch
  BNE s0, zero, bb56
  # implict jump to bb53
bb53:
  ADDI a0, zero, 45
  CALL putch
  # implict jump to bb54
bb54:
  ADDI a0, zero, 10
  CALL putch
  ADDI s0, zero, 1
  SUBW s0, s1, s0
  BNE s0, zero, bb55
  JAL zero, bb42
bb55:
  JAL zero, bb44
bb56:
  ADDI a0, zero, 1
  FCVT.S.W fa0, a0
  FSUB.S fa2, fs4, fa0
  ADDI a0, zero, 2
  FCVT.S.W fa1, a0
  FDIV.S fa1, fa2, fa1
  FADD.S fa3, fa0, fa1
  FDIV.S fa1, fa0, fa0
  FDIV.S fa3, fa0, fa3
  ADDI a0, zero, 4
  FCVT.S.W fs0, a0
  FMUL.S fa3, fs0, fa3
  FADD.S fa1, fa1, fa3
  FDIV.S fa3, fa0, fs4
  FADD.S fa1, fa1, fa3
  FMUL.S fa1, fa1, fa2
  ADDI a0, zero, 6
  FCVT.S.W fa2, a0
  FDIV.S fa3, fa1, fa2
  FSGNJ.S fa1, fs4, fs4
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
  JAL zero, bb54
bb57:
  ADDI a0, zero, 1
  FCVT.S.W fs5, a0
  FSUB.S fa2, fs3, fs5
  ADDI a0, zero, 2
  FCVT.S.W fs8, a0
  FDIV.S fa0, fa2, fs8
  FADD.S fa0, fs5, fa0
  FDIV.S fs7, fs5, fs5
  FDIV.S fa0, fs5, fa0
  ADDI a0, zero, 4
  FCVT.S.W fs6, a0
  FMUL.S fa0, fs6, fa0
  FADD.S fa0, fs7, fa0
  FDIV.S fa1, fs5, fs3
  FADD.S fa0, fa0, fa1
  FMUL.S fa0, fa0, fa2
  ADDI a0, zero, 6
  FCVT.S.W fs1, a0
  FDIV.S fs0, fa0, fs1
  FSGNJ.S fa0, fs5, fs5
  FSGNJ.S fa1, fs3, fs3
  LA a0, .CONSTANT.7.6
  FLW fa3, 0(a0)
  LA a0, .CONSTANT.7.6
  FLW fa2, 0(a0)
  FSGNJ.S fa2, fa3, fa2
  FSGNJ.S fa3, fs0, fs0
  ADDI a0, zero, 1
  CALL asr5
  FSGNJ.D fs0, fa0, fa0
  FSUB.S fa1, fs4, fs5
  FDIV.S fa0, fa1, fs8
  FADD.S fa0, fs5, fa0
  FDIV.S fa0, fs5, fa0
  FMUL.S fa0, fs6, fa0
  FADD.S fa0, fs7, fa0
  FDIV.S fa2, fs5, fs4
  FADD.S fa0, fa0, fa2
  FMUL.S fa0, fa0, fa1
  FDIV.S fa3, fa0, fs1
  FSGNJ.S fa0, fs5, fs5
  FSGNJ.S fa1, fs4, fs4
  LA a0, .CONSTANT.7.6
  FLW fa2, 0(a0)
  LA a0, .CONSTANT.7.6
  FLW fs1, 0(a0)
  FSGNJ.S fa2, fa2, fs1
  ADDI a0, zero, 1
  CALL asr5
  FDIV.S fa0, fs0, fa0
  CALL putfloat
  JAL zero, bb52
bb58:
  FLT.S a0, fs2, fs3
  JAL zero, bb50
bb59:
  ADDI a0, zero, 1
  FCVT.S.W fs0, a0
  FSUB.S fa2, fs4, fs0
  ADDI a0, zero, 2
  FCVT.S.W fa0, a0
  FDIV.S fa0, fa2, fa0
  FADD.S fa0, fs0, fa0
  FDIV.S fa1, fs0, fs0
  FDIV.S fa3, fs0, fa0
  ADDI a0, zero, 4
  FCVT.S.W fa0, a0
  FMUL.S fa0, fa0, fa3
  FADD.S fa1, fa1, fa0
  FDIV.S fa0, fs0, fs4
  FADD.S fa0, fa1, fa0
  FMUL.S fa1, fa0, fa2
  ADDI a0, zero, 6
  FCVT.S.W fa0, a0
  FDIV.S fs1, fa1, fa0
  FSGNJ.S fa0, fs0, fs0
  FSGNJ.S fa1, fs4, fs4
  LA a0, .CONSTANT.7.6
  FLW fa2, 0(a0)
  LA a0, .CONSTANT.7.6
  FLW fa3, 0(a0)
  FSGNJ.S fa2, fa2, fa3
  FSGNJ.S fa3, fs1, fs1
  ADDI a0, zero, 1
  CALL asr5
  CALL putfloat
  JAL zero, bb48
bb60:
  FSGNJ.S fa0, fs4, fs4
  JAL zero, bb46
