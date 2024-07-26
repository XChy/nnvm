.global my_powf
.global my_log
.global my_ln
.global my_exp
.global eee
.global asr4
.global asr5
.global simpson
.global F2
.global my_sqrt
.global F1
.global my_pow
.global main
.global my_fabs
.section .bss








.section .data
e:
.word 0x402df854
.CONSTANT.7.0:
.word 0x322bcc77
.CONSTANT.7.1:
.word 0x402df854
.CONSTANT.7.2:
.word 0x3a83126f
.CONSTANT.7.3:
.word 0x41700000
.CONSTANT.7.4:
.word 0x41200000
.CONSTANT.7.5:
.word 0x3f000000
.CONSTANT.7.6:
.word 0x3f800000
.section .text
my_powf:
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs0, 16(sp)
  FSD fs1, 24(sp)
  FSD fs2, 32(sp)
  FSD fs3, 40(sp)
  FSD fs4, 48(sp)
  FSD fs5, 56(sp)
  FSD fs6, 64(sp)
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.D fs1, fa1, fa1
  ADDI s0, zero, 1
  FCVT.S.W fs2, s0
  FSUB.S fs3, fs0, fs2
  ADDI s0, zero, 2
  FCVT.S.W fs4, s0
  FDIV.S fs4, fs3, fs4
  FADD.S fs4, fs2, fs4
  FDIV.S fs5, fs2, fs2
  FDIV.S fs4, fs2, fs4
  ADDI s0, zero, 4
  FCVT.S.W fs6, s0
  FMUL.S fs4, fs6, fs4
  FADD.S fs4, fs5, fs4
  FDIV.S fs5, fs2, fs0
  FADD.S fs4, fs4, fs5
  FMUL.S fs3, fs4, fs3
  ADDI s0, zero, 6
  FCVT.S.W fs4, s0
  FDIV.S fs3, fs3, fs4
  # implict jump to bb1
bb1:
  FSGNJ.S fa0, fs2, fs2
  FSGNJ.S fa1, fs0, fs0
  LA s0, .CONSTANT.7.0
  FLW fs0, 0(s0)
  LA s0, .CONSTANT.7.0
  FLW fs2, 0(s0)
  FSGNJ.S fa2, fs0, fs2
  FSGNJ.S fa3, fs3, fs3
  ADDI a0, zero, 1
  CALL asr5
  FSGNJ.D fs0, fa0, fa0
  FMUL.S fs0, fs1, fs0
  FSGNJ.S fa0, fs0, fs0
  CALL my_exp
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  FLD fs2, 32(sp)
  FLD fs3, 40(sp)
  FLD fs4, 48(sp)
  FLD fs5, 56(sp)
  FLD fs6, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
my_log:
  ADDI sp, sp, -96
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs0, 16(sp)
  FSD fs1, 24(sp)
  FSD fs2, 32(sp)
  FSD fs3, 40(sp)
  FSD fs4, 48(sp)
  FSD fs5, 56(sp)
  FSD fs6, 64(sp)
  FSD fs7, 72(sp)
  FSD fs8, 80(sp)
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.D fs1, fa1, fa1
  ADDI s0, zero, 1
  FCVT.S.W fs2, s0
  FSUB.S fs3, fs1, fs2
  ADDI s0, zero, 2
  FCVT.S.W fs4, s0
  FDIV.S fs5, fs3, fs4
  FADD.S fs5, fs2, fs5
  FDIV.S fs6, fs2, fs2
  FDIV.S fs5, fs2, fs5
  ADDI s0, zero, 4
  FCVT.S.W fs7, s0
  FMUL.S fs5, fs7, fs5
  FADD.S fs5, fs6, fs5
  FDIV.S fs8, fs2, fs1
  FADD.S fs5, fs5, fs8
  FMUL.S fs3, fs5, fs3
  ADDI s0, zero, 6
  FCVT.S.W fs5, s0
  FDIV.S fs3, fs3, fs5
  # implict jump to bb3
bb3:
  FSGNJ.S fa0, fs2, fs2
  FSGNJ.S fa1, fs1, fs1
  LA s0, .CONSTANT.7.0
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.0
  FLW fs8, 0(s0)
  FSGNJ.S fa2, fs1, fs8
  FSGNJ.S fa3, fs3, fs3
  ADDI a0, zero, 1
  CALL asr5
  FSGNJ.D fs1, fa0, fa0
  FSUB.S fs3, fs0, fs2
  FDIV.S fs4, fs3, fs4
  FADD.S fs4, fs2, fs4
  FDIV.S fs4, fs2, fs4
  FMUL.S fs4, fs7, fs4
  FADD.S fs4, fs6, fs4
  FDIV.S fs6, fs2, fs0
  FADD.S fs4, fs4, fs6
  FMUL.S fs3, fs4, fs3
  FDIV.S fs3, fs3, fs5
  # implict jump to bb4
bb4:
  FSGNJ.S fa0, fs2, fs2
  FSGNJ.S fa1, fs0, fs0
  LA s0, .CONSTANT.7.0
  FLW fs0, 0(s0)
  LA s0, .CONSTANT.7.0
  FLW fs2, 0(s0)
  FSGNJ.S fa2, fs0, fs2
  FSGNJ.S fa3, fs3, fs3
  ADDI a0, zero, 1
  CALL asr5
  FSGNJ.D fs0, fa0, fa0
  FDIV.S fs0, fs1, fs0
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  FLD fs2, 32(sp)
  FLD fs3, 40(sp)
  FLD fs4, 48(sp)
  FLD fs5, 56(sp)
  FLD fs6, 64(sp)
  FLD fs7, 72(sp)
  FLD fs8, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
my_ln:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs0, 16(sp)
  FSD fs1, 24(sp)
  FSD fs2, 32(sp)
  FSD fs3, 40(sp)
  FSD fs4, 48(sp)
  FSD fs5, 56(sp)
  FSGNJ.D fs0, fa0, fa0
  ADDI s0, zero, 1
  FCVT.S.W fs1, s0
  FSUB.S fs2, fs0, fs1
  ADDI s0, zero, 2
  FCVT.S.W fs3, s0
  FDIV.S fs3, fs2, fs3
  FADD.S fs3, fs1, fs3
  FDIV.S fs4, fs1, fs1
  FDIV.S fs3, fs1, fs3
  ADDI s0, zero, 4
  FCVT.S.W fs5, s0
  FMUL.S fs3, fs5, fs3
  FADD.S fs3, fs4, fs3
  FDIV.S fs4, fs1, fs0
  FADD.S fs3, fs3, fs4
  FMUL.S fs2, fs3, fs2
  ADDI s0, zero, 6
  FCVT.S.W fs3, s0
  FDIV.S fs2, fs2, fs3
  # implict jump to bb6
bb6:
  FSGNJ.S fa0, fs1, fs1
  FSGNJ.S fa1, fs0, fs0
  LA s0, .CONSTANT.7.0
  FLW fs0, 0(s0)
  LA s0, .CONSTANT.7.0
  FLW fs1, 0(s0)
  FSGNJ.S fa2, fs0, fs1
  FSGNJ.S fa3, fs2, fs2
  ADDI a0, zero, 1
  CALL asr5
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  FLD fs2, 32(sp)
  FLD fs3, 40(sp)
  FLD fs4, 48(sp)
  FLD fs5, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
my_exp:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  FSD fs0, 24(sp)
  FSD fs1, 32(sp)
  FSD fs2, 40(sp)
  FSD fs3, 48(sp)
  FSGNJ.D fs0, fa0, fa0
  ADDI s0, zero, 0
  FCVT.S.W fs1, s0
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb9
  # implict jump to bb8
bb8:
  FCVT.W.S s0, fs0, rtz
  FCVT.S.W fs1, s0
  FSUB.S fs1, fs0, fs1
  LA s1, .CONSTANT.7.1
  FLW fs2, 0(s1)
  LA s1, .CONSTANT.7.1
  FLW fs3, 0(s1)
  FSGNJ.S fa0, fs2, fs3
  ADD a0, s0, zero
  CALL my_pow
  FSGNJ.D fs2, fa0, fa0
  FSGNJ.S fa0, fs1, fs1
  CALL eee
  FSGNJ.D fs1, fa0, fa0
  FMUL.S fs1, fs2, fs1
  FSGNJ.S fa0, fs1, fs1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  FLD fs0, 24(sp)
  FLD fs1, 32(sp)
  FLD fs2, 40(sp)
  FLD fs3, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb9:
  FSGNJN.S fs0, fs0, fs0
  FSGNJ.S fa0, fs0, fs0
  CALL my_exp
  FSGNJ.D fs0, fa0, fa0
  ADDI s0, zero, 1
  FCVT.S.W fs1, s0
  FDIV.S fs0, fs1, fs0
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  FLD fs0, 24(sp)
  FLD fs1, 32(sp)
  FLD fs2, 40(sp)
  FLD fs3, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
eee:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs0, 16(sp)
  FSD fs1, 24(sp)
  FSD fs2, 32(sp)
  FSD fs3, 40(sp)
  FSGNJ.D fs0, fa0, fa0
  LA s0, .CONSTANT.7.2
  FLW fs1, 0(s0)
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb12
  # implict jump to bb11
bb11:
  ADDI s0, zero, 1
  FCVT.S.W fs1, s0
  FADD.S fs1, fs1, fs0
  FMUL.S fs2, fs0, fs0
  ADDI s0, zero, 2
  FCVT.S.W fs3, s0
  FDIV.S fs2, fs2, fs3
  FADD.S fs1, fs1, fs2
  FSGNJ.S fa0, fs0, fs0
  ADDI a0, zero, 3
  CALL my_pow
  FSGNJ.D fs2, fa0, fa0
  ADDI s0, zero, 6
  FCVT.S.W fs3, s0
  FDIV.S fs2, fs2, fs3
  FADD.S fs1, fs1, fs2
  FSGNJ.S fa0, fs0, fs0
  ADDI a0, zero, 4
  CALL my_pow
  FSGNJ.D fs2, fa0, fa0
  ADDI s0, zero, 24
  FCVT.S.W fs3, s0
  FDIV.S fs2, fs2, fs3
  FADD.S fs1, fs1, fs2
  FSGNJ.S fa0, fs0, fs0
  ADDI a0, zero, 5
  CALL my_pow
  FSGNJ.D fs2, fa0, fa0
  ADDI s0, zero, 120
  FCVT.S.W fs3, s0
  FDIV.S fs2, fs2, fs3
  FADD.S fs1, fs1, fs2
  FSGNJ.S fa0, fs1, fs1
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  FLD fs2, 32(sp)
  FLD fs3, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb12:
  ADDI s0, zero, 2
  FCVT.S.W fs1, s0
  FDIV.S fs0, fs0, fs1
  FSGNJ.S fa0, fs0, fs0
  CALL eee
  FSGNJ.D fs0, fa0, fa0
  FMUL.S fs0, fs0, fs0
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  FLD fs2, 32(sp)
  FLD fs3, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
asr4:
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  FSD fs4, 24(sp)
  FSD fs0, 32(sp)
  FSD fs1, 40(sp)
  FSD fs2, 48(sp)
  FSD fs3, 56(sp)
  FSD fs5, 64(sp)
  FSD fs6, 72(sp)
  FSD fs7, 80(sp)
  FSD fs8, 88(sp)
  FSD fs9, 96(sp)
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.D fs1, fa1, fa1
  FSGNJ.D fs2, fa2, fa2
  ADD s0, a0, zero
  FSUB.S fs3, fs1, fs0
  ADDI s1, zero, 2
  FCVT.S.W fs4, s1
  FDIV.S fs4, fs3, fs4
  FADD.S fs4, fs0, fs4
  XORI s1, s0, 1
  SLTIU s1, s1, 1
  BNE s1, zero, bb18
  # implict jump to bb14
bb14:
  XORI s1, s0, 2
  SLTIU s1, s1, 1
  BNE s1, zero, bb17
  # implict jump to bb15
bb15:
  ADDI s1, zero, 0
  FCVT.S.W fs5, s1
  # implict jump to bb16
bb16:
  FSGNJ.S fa0, fs0, fs0
  FSGNJ.S fa1, fs1, fs1
  FSGNJ.S fa2, fs2, fs2
  FSGNJ.S fa3, fs5, fs5
  ADD a0, s0, zero
  CALL asr5
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  FLD fs4, 24(sp)
  FLD fs0, 32(sp)
  FLD fs1, 40(sp)
  FLD fs2, 48(sp)
  FLD fs3, 56(sp)
  FLD fs5, 64(sp)
  FLD fs6, 72(sp)
  FLD fs7, 80(sp)
  FLD fs8, 88(sp)
  FLD fs9, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb17:
  FMUL.S fs6, fs0, fs0
  ADDI s1, zero, 1
  FCVT.S.W fs7, s1
  FSUB.S fs6, fs7, fs6
  FSGNJ.S fa0, fs6, fs6
  CALL my_sqrt
  FSGNJ.D fs6, fa0, fa0
  FDIV.S fs6, fs7, fs6
  FMUL.S fs8, fs4, fs4
  FSUB.S fs8, fs7, fs8
  FSGNJ.S fa0, fs8, fs8
  CALL my_sqrt
  FSGNJ.D fs8, fa0, fa0
  FDIV.S fs8, fs7, fs8
  ADDI s1, zero, 4
  FCVT.S.W fs9, s1
  FMUL.S fs8, fs9, fs8
  FADD.S fs6, fs6, fs8
  FMUL.S fs8, fs1, fs1
  FSUB.S fs8, fs7, fs8
  FSGNJ.S fa0, fs8, fs8
  CALL my_sqrt
  FSGNJ.D fs8, fa0, fa0
  FDIV.S fs7, fs7, fs8
  FADD.S fs6, fs6, fs7
  FMUL.S fs6, fs6, fs3
  ADDI s1, zero, 6
  FCVT.S.W fs7, s1
  FDIV.S fs6, fs6, fs7
  FSGNJ.S fs5, fs6, fs6
  JAL zero, bb16
bb18:
  ADDI s1, zero, 1
  FCVT.S.W fs6, s1
  FDIV.S fs7, fs6, fs0
  FDIV.S fs4, fs6, fs4
  ADDI s1, zero, 4
  FCVT.S.W fs8, s1
  FMUL.S fs4, fs8, fs4
  FADD.S fs4, fs7, fs4
  FDIV.S fs6, fs6, fs1
  FADD.S fs4, fs4, fs6
  FMUL.S fs3, fs4, fs3
  ADDI s1, zero, 6
  FCVT.S.W fs4, s1
  FDIV.S fs3, fs3, fs4
  FSGNJ.S fs5, fs3, fs3
  JAL zero, bb16
asr5:
  ADDI sp, sp, -144
  SD ra, 8(sp)
  SD s0, 16(sp)
  SD s1, 24(sp)
  SD s2, 32(sp)
  FSD fs0, 40(sp)
  FSD fs1, 48(sp)
  FSD fs2, 56(sp)
  FSD fs3, 64(sp)
  FSD fs4, 72(sp)
  FSD fs5, 80(sp)
  FSD fs6, 88(sp)
  FSD fs7, 96(sp)
  FSD fs8, 104(sp)
  FSD fs9, 112(sp)
  FSD fs10, 120(sp)
  FSD fs11, 128(sp)
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.D ft4, fa1, fa1
  FSW ft4, 0(sp)
  FSGNJ.D fs2, fa2, fa2
  FSGNJ.D fs3, fa3, fa3
  ADD s0, a0, zero
  FLW ft4, 0(sp)
  FSUB.S fs4, ft4, fs0
  ADDI s1, zero, 2
  FCVT.S.W fs5, s1
  FDIV.S fs4, fs4, fs5
  FADD.S ft4, fs0, fs4
  FSW ft4, 4(sp)
  FLW ft4, 4(sp)
  FSUB.S fs6, ft4, fs0
  FDIV.S fs7, fs6, fs5
  FADD.S fs7, fs0, fs7
  XORI s1, s0, 1
  SLTIU s1, s1, 1
  BNE s1, zero, bb34
  # implict jump to bb20
bb20:
  XORI s2, s0, 2
  SLTIU s2, s2, 1
  BNE s2, zero, bb33
  # implict jump to bb21
bb21:
  ADDI s2, zero, 0
  FCVT.S.W fs8, s2
  # implict jump to bb22
bb22:
  FLW ft4, 0(sp)
  FLW ft3, 4(sp)
  FSUB.S fs1, ft4, ft3
  FDIV.S fs6, fs1, fs5
  FLW ft4, 4(sp)
  FADD.S fs6, ft4, fs6
  BNE s1, zero, bb32
  # implict jump to bb23
bb23:
  XORI s1, s0, 2
  SLTIU s1, s1, 1
  BNE s1, zero, bb31
  # implict jump to bb24
bb24:
  ADDI s1, zero, 0
  FCVT.S.W fs7, s1
  # implict jump to bb25
bb25:
  FADD.S fs1, fs8, fs7
  FSUB.S fs3, fs1, fs3
  ADDI s1, zero, 0
  FCVT.S.W fs4, s1
  FLT.S s1, fs4, fs3
  BNE s1, zero, bb30
  # implict jump to bb26
bb26:
  FSGNJN.S fs4, fs3, fs3
  # implict jump to bb27
bb27:
  ADDI s1, zero, 15
  FCVT.S.W fs6, s1
  FMUL.S fs6, fs6, fs2
  FLE.S s1, fs4, fs6
  BNE s1, zero, bb29
  # implict jump to bb28
bb28:
  FDIV.S fs2, fs2, fs5
  FSGNJ.S fa0, fs0, fs0
  FLW ft4, 4(sp)
  FLW ft3, 4(sp)
  FSGNJ.S fa1, ft4, ft3
  FSGNJ.S fa2, fs2, fs2
  FSGNJ.S fa3, fs8, fs8
  ADD a0, s0, zero
  CALL asr5
  FSGNJ.D fs0, fa0, fa0
  FLW ft4, 4(sp)
  FLW ft3, 4(sp)
  FSGNJ.S fa0, ft4, ft3
  FLW ft4, 0(sp)
  FLW ft3, 0(sp)
  FSGNJ.S fa1, ft4, ft3
  FSGNJ.S fa2, fs2, fs2
  FSGNJ.S fa3, fs7, fs7
  ADD a0, s0, zero
  CALL asr5
  FSGNJ.D fs2, fa0, fa0
  FADD.S fs0, fs0, fs2
  FSGNJ.S fa0, fs0, fs0
  LD ra, 8(sp)
  LD s0, 16(sp)
  LD s1, 24(sp)
  LD s2, 32(sp)
  FLD fs0, 40(sp)
  FLD fs1, 48(sp)
  FLD fs2, 56(sp)
  FLD fs3, 64(sp)
  FLD fs4, 72(sp)
  FLD fs5, 80(sp)
  FLD fs6, 88(sp)
  FLD fs7, 96(sp)
  FLD fs8, 104(sp)
  FLD fs9, 112(sp)
  FLD fs10, 120(sp)
  FLD fs11, 128(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb29:
  LA s0, .CONSTANT.7.3
  FLW fs0, 0(s0)
  FDIV.S fs0, fs3, fs0
  FADD.S fs0, fs1, fs0
  FSGNJ.S fa0, fs0, fs0
  LD ra, 8(sp)
  LD s0, 16(sp)
  LD s1, 24(sp)
  LD s2, 32(sp)
  FLD fs0, 40(sp)
  FLD fs1, 48(sp)
  FLD fs2, 56(sp)
  FLD fs3, 64(sp)
  FLD fs4, 72(sp)
  FLD fs5, 80(sp)
  FLD fs6, 88(sp)
  FLD fs7, 96(sp)
  FLD fs8, 104(sp)
  FLD fs9, 112(sp)
  FLD fs10, 120(sp)
  FLD fs11, 128(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb30:
  FSGNJ.S fs4, fs3, fs3
  JAL zero, bb27
bb31:
  FLW ft4, 4(sp)
  FLW ft3, 4(sp)
  FMUL.S fs9, ft4, ft3
  ADDI s1, zero, 1
  FCVT.S.W fs10, s1
  FSUB.S fs9, fs10, fs9
  FSGNJ.S fa0, fs9, fs9
  CALL my_sqrt
  FSGNJ.D fs9, fa0, fa0
  FDIV.S fs9, fs10, fs9
  FMUL.S fs11, fs6, fs6
  FSUB.S fs11, fs10, fs11
  FSGNJ.S fa0, fs11, fs11
  CALL my_sqrt
  FSGNJ.D fs11, fa0, fa0
  FDIV.S fs11, fs10, fs11
  ADDI s1, zero, 4
  FCVT.S.W fs4, s1
  FMUL.S fs4, fs4, fs11
  FADD.S fs4, fs9, fs4
  FLW ft4, 0(sp)
  FLW ft3, 0(sp)
  FMUL.S fs9, ft4, ft3
  FSUB.S fs9, fs10, fs9
  FSGNJ.S fa0, fs9, fs9
  CALL my_sqrt
  FSGNJ.D fs9, fa0, fa0
  FDIV.S fs9, fs10, fs9
  FADD.S fs4, fs4, fs9
  FMUL.S fs4, fs4, fs1
  ADDI s1, zero, 6
  FCVT.S.W fs9, s1
  FDIV.S fs4, fs4, fs9
  FSGNJ.S fs7, fs4, fs4
  JAL zero, bb25
bb32:
  ADDI s1, zero, 1
  FCVT.S.W fs4, s1
  FLW ft4, 4(sp)
  FDIV.S fs9, fs4, ft4
  FDIV.S fs6, fs4, fs6
  ADDI s1, zero, 4
  FCVT.S.W fs10, s1
  FMUL.S fs6, fs10, fs6
  FADD.S fs6, fs9, fs6
  FLW ft4, 0(sp)
  FDIV.S fs4, fs4, ft4
  FADD.S fs4, fs6, fs4
  FMUL.S fs1, fs4, fs1
  ADDI s1, zero, 6
  FCVT.S.W fs4, s1
  FDIV.S fs1, fs1, fs4
  FSGNJ.S fs7, fs1, fs1
  JAL zero, bb25
bb33:
  FMUL.S fs9, fs0, fs0
  ADDI s2, zero, 1
  FCVT.S.W fs10, s2
  FSUB.S fs9, fs10, fs9
  FSGNJ.S fa0, fs9, fs9
  CALL my_sqrt
  FSGNJ.D fs9, fa0, fa0
  FDIV.S fs9, fs10, fs9
  FMUL.S fs11, fs7, fs7
  FSUB.S fs11, fs10, fs11
  FSGNJ.S fa0, fs11, fs11
  CALL my_sqrt
  FSGNJ.D fs11, fa0, fa0
  FDIV.S fs11, fs10, fs11
  ADDI s2, zero, 4
  FCVT.S.W fs1, s2
  FMUL.S fs1, fs1, fs11
  FADD.S fs1, fs9, fs1
  FLW ft4, 4(sp)
  FLW ft3, 4(sp)
  FMUL.S fs9, ft4, ft3
  FSUB.S fs9, fs10, fs9
  FSGNJ.S fa0, fs9, fs9
  CALL my_sqrt
  FSGNJ.D fs9, fa0, fa0
  FDIV.S fs9, fs10, fs9
  FADD.S fs1, fs1, fs9
  FMUL.S fs1, fs1, fs6
  ADDI s2, zero, 6
  FCVT.S.W fs9, s2
  FDIV.S fs1, fs1, fs9
  FSGNJ.S fs8, fs1, fs1
  JAL zero, bb22
bb34:
  ADDI s2, zero, 1
  FCVT.S.W fs1, s2
  FDIV.S fs9, fs1, fs0
  FDIV.S fs7, fs1, fs7
  ADDI s2, zero, 4
  FCVT.S.W fs10, s2
  FMUL.S fs7, fs10, fs7
  FADD.S fs7, fs9, fs7
  FLW ft4, 4(sp)
  FDIV.S fs1, fs1, ft4
  FADD.S fs1, fs7, fs1
  FMUL.S fs1, fs1, fs6
  ADDI s2, zero, 6
  FCVT.S.W fs6, s2
  FDIV.S fs1, fs1, fs6
  FSGNJ.S fs8, fs1, fs1
  JAL zero, bb22
simpson:
  ADDI sp, sp, -96
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  FSD fs0, 24(sp)
  FSD fs1, 32(sp)
  FSD fs2, 40(sp)
  FSD fs3, 48(sp)
  FSD fs4, 56(sp)
  FSD fs5, 64(sp)
  FSD fs6, 72(sp)
  FSD fs7, 80(sp)
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.D fs1, fa1, fa1
  ADD s0, a0, zero
  FSUB.S fs2, fs1, fs0
  ADDI s1, zero, 2
  FCVT.S.W fs3, s1
  FDIV.S fs3, fs2, fs3
  FADD.S fs3, fs0, fs3
  XORI s1, s0, 1
  SLTIU s1, s1, 1
  BNE s1, zero, bb39
  # implict jump to bb36
bb36:
  XORI s0, s0, 2
  SLTIU s0, s0, 1
  BNE s0, zero, bb38
  # implict jump to bb37
bb37:
  ADDI s0, zero, 0
  FCVT.S.W fs4, s0
  FSGNJ.S fa0, fs4, fs4
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  FLD fs0, 24(sp)
  FLD fs1, 32(sp)
  FLD fs2, 40(sp)
  FLD fs3, 48(sp)
  FLD fs4, 56(sp)
  FLD fs5, 64(sp)
  FLD fs6, 72(sp)
  FLD fs7, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb38:
  FMUL.S fs4, fs0, fs0
  ADDI s0, zero, 1
  FCVT.S.W fs5, s0
  FSUB.S fs4, fs5, fs4
  FSGNJ.S fa0, fs4, fs4
  CALL my_sqrt
  FSGNJ.D fs4, fa0, fa0
  FDIV.S fs4, fs5, fs4
  FMUL.S fs6, fs3, fs3
  FSUB.S fs6, fs5, fs6
  FSGNJ.S fa0, fs6, fs6
  CALL my_sqrt
  FSGNJ.D fs6, fa0, fa0
  FDIV.S fs6, fs5, fs6
  ADDI s0, zero, 4
  FCVT.S.W fs7, s0
  FMUL.S fs6, fs7, fs6
  FADD.S fs4, fs4, fs6
  FMUL.S fs6, fs1, fs1
  FSUB.S fs6, fs5, fs6
  FSGNJ.S fa0, fs6, fs6
  CALL my_sqrt
  FSGNJ.D fs6, fa0, fa0
  FDIV.S fs5, fs5, fs6
  FADD.S fs4, fs4, fs5
  FMUL.S fs4, fs4, fs2
  ADDI s0, zero, 6
  FCVT.S.W fs5, s0
  FDIV.S fs4, fs4, fs5
  FSGNJ.S fa0, fs4, fs4
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  FLD fs0, 24(sp)
  FLD fs1, 32(sp)
  FLD fs2, 40(sp)
  FLD fs3, 48(sp)
  FLD fs4, 56(sp)
  FLD fs5, 64(sp)
  FLD fs6, 72(sp)
  FLD fs7, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb39:
  ADDI s0, zero, 1
  FCVT.S.W fs4, s0
  FDIV.S fs0, fs4, fs0
  FDIV.S fs3, fs4, fs3
  ADDI s0, zero, 4
  FCVT.S.W fs5, s0
  FMUL.S fs3, fs5, fs3
  FADD.S fs0, fs0, fs3
  FDIV.S fs1, fs4, fs1
  FADD.S fs0, fs0, fs1
  FMUL.S fs0, fs0, fs2
  ADDI s0, zero, 6
  FCVT.S.W fs1, s0
  FDIV.S fs0, fs0, fs1
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  FLD fs0, 24(sp)
  FLD fs1, 32(sp)
  FLD fs2, 40(sp)
  FLD fs3, 48(sp)
  FLD fs4, 56(sp)
  FLD fs5, 64(sp)
  FLD fs6, 72(sp)
  FLD fs7, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
F2:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs0, 16(sp)
  FSD fs1, 24(sp)
  FSGNJ.D fs0, fa0, fa0
  FMUL.S fs0, fs0, fs0
  ADDI s0, zero, 1
  FCVT.S.W fs1, s0
  FSUB.S fs0, fs1, fs0
  FSGNJ.S fa0, fs0, fs0
  CALL my_sqrt
  FSGNJ.D fs0, fa0, fa0
  FDIV.S fs0, fs1, fs0
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
my_sqrt:
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  FSD fs0, 40(sp)
  FSD fs1, 48(sp)
  FSD fs2, 56(sp)
  FSD fs3, 64(sp)
  FSD fs4, 72(sp)
  FSD fs5, 80(sp)
  FSD fs6, 88(sp)
  FSD fs7, 96(sp)
  FSGNJ.D fs1, fa0, fa0
  ADDI s1, zero, 100
  FCVT.S.W fs2, s1
  FLT.S s1, fs2, fs1
  BNE s1, zero, bb50
  # implict jump to bb42
bb42:
  ADDI s1, zero, 8
  FCVT.S.W fs3, s1
  FDIV.S fs3, fs1, fs3
  LA s1, .CONSTANT.7.5
  FLW fs4, 0(s1)
  FADD.S fs3, fs3, fs4
  ADDI s1, zero, 2
  FCVT.S.W fs4, s1
  FMUL.S fs5, fs4, fs1
  ADDI s1, zero, 4
  FCVT.S.W fs6, s1
  FADD.S fs6, fs6, fs1
  FDIV.S fs5, fs5, fs6
  FADD.S fs3, fs3, fs5
  ADDI s1, zero, 0
  XORI s1, s1, 10
  BNE s1, zero, bb45
  # implict jump to bb43
bb43:
  FSGNJ.S fs5, fs3, fs3
  # implict jump to bb44
bb44:
  FSGNJ.S fa0, fs5, fs5
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  FLD fs0, 40(sp)
  FLD fs1, 48(sp)
  FLD fs2, 56(sp)
  FLD fs3, 64(sp)
  FLD fs4, 72(sp)
  FLD fs5, 80(sp)
  FLD fs6, 88(sp)
  FLD fs7, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb45:
  ADDI s1, zero, 10
  # implict jump to bb46
bb46:
  ADD s2, s1, zero
  FSGNJ.S fs6, fs3, fs3
  FDIV.S fs7, fs1, fs6
  FADD.S fs6, fs6, fs7
  FDIV.S fs0, fs6, fs4
  ADDI s3, zero, 1
  SUBW s0, s2, s3
  # implict jump to bb47
bb47:
  BNE s0, zero, bb49
  # implict jump to bb48
bb48:
  FSGNJ.S fs5, fs0, fs0
  JAL zero, bb44
bb49:
  FSGNJ.S fs3, fs0, fs0
  ADD s1, s0, zero
  JAL zero, bb46
bb50:
  FDIV.S fs0, fs1, fs2
  FSGNJ.S fa0, fs0, fs0
  CALL my_sqrt
  FSGNJ.D fs0, fa0, fa0
  LA s0, .CONSTANT.7.4
  FLW fs1, 0(s0)
  FMUL.S fs0, fs1, fs0
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  FLD fs0, 40(sp)
  FLD fs1, 48(sp)
  FLD fs2, 56(sp)
  FLD fs3, 64(sp)
  FLD fs4, 72(sp)
  FLD fs5, 80(sp)
  FLD fs6, 88(sp)
  FLD fs7, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
F1:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs0, 16(sp)
  FSD fs1, 24(sp)
  FSGNJ.D fs0, fa0, fa0
  ADDI s0, zero, 1
  FCVT.S.W fs1, s0
  FDIV.S fs0, fs1, fs0
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
my_pow:
  ADDI sp, sp, -128
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s0, 16(sp)
  SD s1, 24(sp)
  SD s2, 32(sp)
  SD s4, 40(sp)
  FSD fs0, 48(sp)
  FSD fs1, 56(sp)
  FSD fs2, 64(sp)
  FSD fs3, 72(sp)
  FSD fs4, 80(sp)
  FSD fs5, 88(sp)
  FSD fs6, 96(sp)
  FSD fs7, 104(sp)
  FSD fs8, 112(sp)
  FSGNJ.D fs2, fa0, fa0
  ADD s1, a0, zero
  BLT s1, zero, bb64
  # implict jump to bb53
bb53:
  BNE s1, zero, bb56
  # implict jump to bb54
bb54:
  LA s2, .CONSTANT.7.6
  FLW fs3, 0(s2)
  LA s2, .CONSTANT.7.6
  FLW fs4, 0(s2)
  FSGNJ.S fs3, fs3, fs4
  # implict jump to bb55
bb55:
  FSGNJ.S fa0, fs3, fs3
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s0, 16(sp)
  LD s1, 24(sp)
  LD s2, 32(sp)
  LD s4, 40(sp)
  FLD fs0, 48(sp)
  FLD fs1, 56(sp)
  FLD fs2, 64(sp)
  FLD fs3, 72(sp)
  FLD fs4, 80(sp)
  FLD fs5, 88(sp)
  FLD fs6, 96(sp)
  FLD fs7, 104(sp)
  FLD fs8, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb56:
  FSGNJ.S fs4, fs2, fs2
  ADD s2, s1, zero
  LA s3, .CONSTANT.7.6
  FLW fs5, 0(s3)
  LA s3, .CONSTANT.7.6
  FLW fs6, 0(s3)
  FSGNJ.S fs5, fs5, fs6
  # implict jump to bb57
bb57:
  FSGNJ.S fs6, fs5, fs5
  ADD s3, s2, zero
  FSGNJ.S fs7, fs4, fs4
  ADDI s4, zero, 2
  REMW s4, s3, s4
  BNE s4, zero, bb63
  # implict jump to bb58
bb58:
  FSGNJ.S fs8, fs6, fs6
  # implict jump to bb59
bb59:
  FSGNJ.S fs1, fs8, fs8
  FMUL.S fs0, fs7, fs7
  ADDI s4, zero, 2
  DIVW s0, s3, s4
  # implict jump to bb60
bb60:
  BNE s0, zero, bb62
  # implict jump to bb61
bb61:
  FSGNJ.S fs3, fs1, fs1
  JAL zero, bb55
bb62:
  FSGNJ.S fs4, fs0, fs0
  ADD s2, s0, zero
  FSGNJ.S fs5, fs1, fs1
  JAL zero, bb57
bb63:
  FMUL.S fs6, fs6, fs7
  FSGNJ.S fs8, fs6, fs6
  JAL zero, bb59
bb64:
  SUB s0, zero, s1
  FSGNJ.S fa0, fs2, fs2
  ADD a0, s0, zero
  CALL my_pow
  FSGNJ.D fs0, fa0, fa0
  ADDI s0, zero, 1
  FCVT.S.W fs1, s0
  FDIV.S fs0, fs1, fs0
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s0, 16(sp)
  LD s1, 24(sp)
  LD s2, 32(sp)
  LD s4, 40(sp)
  FLD fs0, 48(sp)
  FLD fs1, 56(sp)
  FLD fs2, 64(sp)
  FLD fs3, 72(sp)
  FLD fs4, 80(sp)
  FLD fs5, 88(sp)
  FLD fs6, 96(sp)
  FLD fs7, 104(sp)
  FLD fs8, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -144
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s0, 24(sp)
  SD s1, 32(sp)
  SD s2, 40(sp)
  SD s5, 48(sp)
  FSD fs0, 56(sp)
  FSD fs1, 64(sp)
  FSD fs2, 72(sp)
  FSD fs3, 80(sp)
  FSD fs4, 88(sp)
  FSD fs5, 96(sp)
  FSD fs6, 104(sp)
  FSD fs7, 112(sp)
  FSD fs8, 120(sp)
  FSD fs9, 128(sp)
  CALL getint
  ADD s1, a0, zero
  BNE s1, zero, bb67
  # implict jump to bb66
bb66:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s0, 24(sp)
  LD s1, 32(sp)
  LD s2, 40(sp)
  LD s5, 48(sp)
  FLD fs0, 56(sp)
  FLD fs1, 64(sp)
  FLD fs2, 72(sp)
  FLD fs3, 80(sp)
  FLD fs4, 88(sp)
  FLD fs5, 96(sp)
  FLD fs6, 104(sp)
  FLD fs7, 112(sp)
  FLD fs8, 120(sp)
  FLD fs9, 128(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb67:
  # implict jump to bb68
bb68:
  ADD s2, s1, zero
  CALL getfloat
  FSGNJ.D fs0, fa0, fa0
  CALL getfloat
  FSGNJ.D fs1, fa0, fa0
  FCVT.S.L fs2, zero
  FLT.S s3, fs2, fs0
  BNE s3, zero, bb89
  # implict jump to bb69
bb69:
  FSGNJN.S fs3, fs0, fs0
  # implict jump to bb70
bb70:
  FSGNJ.S fa0, fs3, fs3
  CALL putfloat
  ADDI a0, zero, 32
  CALL putch
  FSGNJ.S fa0, fs0, fs0
  ADDI a0, zero, 2
  CALL my_pow
  FSGNJ.D fs3, fa0, fa0
  FSGNJ.S fa0, fs3, fs3
  CALL putfloat
  ADDI a0, zero, 32
  CALL putch
  FSGNJ.S fa0, fs0, fs0
  CALL my_sqrt
  FSGNJ.D fs3, fa0, fa0
  FSGNJ.S fa0, fs3, fs3
  CALL putfloat
  ADDI a0, zero, 32
  CALL putch
  FSGNJ.S fa0, fs0, fs0
  CALL my_exp
  FSGNJ.D fs3, fa0, fa0
  FSGNJ.S fa0, fs3, fs3
  CALL putfloat
  ADDI a0, zero, 32
  CALL putch
  BNE s3, zero, bb87
  # implict jump to bb71
bb71:
  ADDI a0, zero, 45
  CALL putch
  # implict jump to bb72
bb72:
  ADDI a0, zero, 32
  CALL putch
  BNE s3, zero, bb86
  # implict jump to bb73
bb73:
  ADD s4, zero, zero
  # implict jump to bb74
bb74:
  BNE s4, zero, bb83
  # implict jump to bb75
bb75:
  ADDI a0, zero, 45
  CALL putch
  # implict jump to bb76
bb76:
  ADDI a0, zero, 32
  CALL putch
  BNE s3, zero, bb81
  # implict jump to bb77
bb77:
  ADDI a0, zero, 45
  CALL putch
  # implict jump to bb78
bb78:
  ADDI a0, zero, 10
  CALL putch
  ADDI s3, zero, 1
  SUBW s0, s2, s3
  # implict jump to bb79
bb79:
  BNE s0, zero, bb80
  JAL zero, bb66
bb80:
  ADD s1, s0, zero
  JAL zero, bb68
bb81:
  ADDI s3, zero, 1
  FCVT.S.W fs2, s3
  FSUB.S fs3, fs0, fs2
  ADDI s3, zero, 2
  FCVT.S.W fs4, s3
  FDIV.S fs4, fs3, fs4
  FADD.S fs4, fs2, fs4
  FDIV.S fs5, fs2, fs2
  FDIV.S fs4, fs2, fs4
  ADDI s3, zero, 4
  FCVT.S.W fs6, s3
  FMUL.S fs4, fs6, fs4
  FADD.S fs4, fs5, fs4
  FDIV.S fs5, fs2, fs0
  FADD.S fs4, fs4, fs5
  FMUL.S fs3, fs4, fs3
  ADDI s3, zero, 6
  FCVT.S.W fs4, s3
  FDIV.S fs3, fs3, fs4
  # implict jump to bb82
bb82:
  FSGNJ.S fa0, fs2, fs2
  FSGNJ.S fa1, fs0, fs0
  LA s3, .CONSTANT.7.0
  FLW fs0, 0(s3)
  LA s3, .CONSTANT.7.0
  FLW fs2, 0(s3)
  FSGNJ.S fa2, fs0, fs2
  FSGNJ.S fa3, fs3, fs3
  ADDI a0, zero, 1
  CALL asr5
  FSGNJ.D fs0, fa0, fa0
  FMUL.S fs0, fs1, fs0
  FSGNJ.S fa0, fs0, fs0
  CALL my_exp
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  JAL zero, bb78
bb83:
  ADDI s4, zero, 1
  FCVT.S.W fs2, s4
  FSUB.S fs3, fs1, fs2
  ADDI s4, zero, 2
  FCVT.S.W fs4, s4
  FDIV.S fs5, fs3, fs4
  FADD.S fs5, fs2, fs5
  FDIV.S fs6, fs2, fs2
  FDIV.S fs5, fs2, fs5
  ADDI s4, zero, 4
  FCVT.S.W fs7, s4
  FMUL.S fs5, fs7, fs5
  FADD.S fs5, fs6, fs5
  FDIV.S fs8, fs2, fs1
  FADD.S fs5, fs5, fs8
  FMUL.S fs3, fs5, fs3
  ADDI s4, zero, 6
  FCVT.S.W fs5, s4
  FDIV.S fs3, fs3, fs5
  # implict jump to bb84
bb84:
  FSGNJ.S fa0, fs2, fs2
  FSGNJ.S fa1, fs1, fs1
  LA s4, .CONSTANT.7.0
  FLW fs8, 0(s4)
  LA s4, .CONSTANT.7.0
  FLW fs9, 0(s4)
  FSGNJ.S fa2, fs8, fs9
  FSGNJ.S fa3, fs3, fs3
  ADDI a0, zero, 1
  CALL asr5
  FSGNJ.D fs3, fa0, fa0
  FSUB.S fs8, fs0, fs2
  FDIV.S fs4, fs8, fs4
  FADD.S fs4, fs2, fs4
  FDIV.S fs4, fs2, fs4
  FMUL.S fs4, fs7, fs4
  FADD.S fs4, fs6, fs4
  FDIV.S fs6, fs2, fs0
  FADD.S fs4, fs4, fs6
  FMUL.S fs4, fs4, fs8
  FDIV.S fs4, fs4, fs5
  # implict jump to bb85
bb85:
  FSGNJ.S fa0, fs2, fs2
  FSGNJ.S fa1, fs0, fs0
  LA s4, .CONSTANT.7.0
  FLW fs2, 0(s4)
  LA s4, .CONSTANT.7.0
  FLW fs5, 0(s4)
  FSGNJ.S fa2, fs2, fs5
  FSGNJ.S fa3, fs4, fs4
  ADDI a0, zero, 1
  CALL asr5
  FSGNJ.D fs2, fa0, fa0
  FDIV.S fs2, fs3, fs2
  FSGNJ.S fa0, fs2, fs2
  CALL putfloat
  JAL zero, bb76
bb86:
  FLT.S s5, fs2, fs1
  ADD s4, s5, zero
  JAL zero, bb74
bb87:
  ADDI s4, zero, 1
  FCVT.S.W fs3, s4
  FSUB.S fs4, fs0, fs3
  ADDI s4, zero, 2
  FCVT.S.W fs5, s4
  FDIV.S fs5, fs4, fs5
  FADD.S fs5, fs3, fs5
  FDIV.S fs6, fs3, fs3
  FDIV.S fs5, fs3, fs5
  ADDI s4, zero, 4
  FCVT.S.W fs7, s4
  FMUL.S fs5, fs7, fs5
  FADD.S fs5, fs6, fs5
  FDIV.S fs6, fs3, fs0
  FADD.S fs5, fs5, fs6
  FMUL.S fs4, fs5, fs4
  ADDI s4, zero, 6
  FCVT.S.W fs5, s4
  FDIV.S fs4, fs4, fs5
  # implict jump to bb88
bb88:
  FSGNJ.S fa0, fs3, fs3
  FSGNJ.S fa1, fs0, fs0
  LA s4, .CONSTANT.7.0
  FLW fs3, 0(s4)
  LA s4, .CONSTANT.7.0
  FLW fs5, 0(s4)
  FSGNJ.S fa2, fs3, fs5
  FSGNJ.S fa3, fs4, fs4
  ADDI a0, zero, 1
  CALL asr5
  FSGNJ.D fs3, fa0, fa0
  FSGNJ.S fa0, fs3, fs3
  CALL putfloat
  JAL zero, bb72
bb89:
  FSGNJ.S fs3, fs0, fs0
  JAL zero, bb70
my_fabs:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs0, 16(sp)
  FSD fs1, 24(sp)
  FSGNJ.D fs0, fa0, fa0
  FCVT.S.L fs1, zero
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb92
  # implict jump to bb91
bb91:
  FSGNJN.S fs1, fs0, fs0
  FSGNJ.S fa0, fs1, fs1
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb92:
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
