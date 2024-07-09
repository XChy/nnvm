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
  FSD fs7, 0(sp)
  FSD fs0, 8(sp)
  FSD fs5, 16(sp)
  FSD fs1, 24(sp)
  FSD fs6, 32(sp)
  SD s0, 40(sp)
  FSD fs2, 48(sp)
  FSD fs3, 56(sp)
  SD ra, 64(sp)
  FSD fs4, 72(sp)
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.D fs1, fa1, fa1
  ADDI s0, zero, 1
  FCVT.S.W fs2, s0
  FSUB.S fs3, fs0, fs2
  ADDI s0, zero, 2
  FCVT.S.W fs4, s0
  FDIV.S fs5, fs3, fs4
  FADD.S fs4, fs2, fs5
  FDIV.S fs5, fs2, fs2
  FSGNJ.S fs6, fs5, fs5
  JAL zero, bb4
bb1:
  FSGNJ.S fs0, fs2, fs2
  FMUL.S fs2, fs1, fs0
  FSGNJ.S fa0, fs2, fs2
  CALL my_exp
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.S fa0, fs0, fs0
  FLD fs7, 0(sp)
  FLD fs0, 8(sp)
  FLD fs5, 16(sp)
  FLD fs1, 24(sp)
  FLD fs6, 32(sp)
  LD s0, 40(sp)
  FLD fs2, 48(sp)
  FLD fs3, 56(sp)
  LD ra, 64(sp)
  FLD fs4, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb2:
  FSGNJ.S fs0, fs2, fs2
  FSGNJ.S fs2, fs0, fs0
  JAL zero, bb1
bb3:
  FSGNJ.S fs4, fs3, fs3
  FSGNJ.S fa0, fs2, fs2
  FSGNJ.S fa1, fs0, fs0
  LA s0, .CONSTANT.7.0
  FLW fs0, 0(s0)
  LA s0, .CONSTANT.7.0
  FLW fs2, 0(s0)
  FSGNJ.S fa2, fs0, fs2
  FSGNJ.S fa3, fs4, fs4
  ADDI a0, zero, 1
  CALL asr5
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.S fs2, fs0, fs0
  JAL zero, bb2
bb4:
  FSGNJ.S fs5, fs6, fs6
  FDIV.S fs6, fs2, fs4
  FSGNJ.S fs4, fs6, fs6
  JAL zero, bb5
bb5:
  FSGNJ.S fs6, fs4, fs4
  ADDI s0, zero, 4
  FCVT.S.W fs4, s0
  FMUL.S fs7, fs4, fs6
  FADD.S fs4, fs5, fs7
  FDIV.S fs5, fs2, fs0
  FSGNJ.S fs6, fs5, fs5
  JAL zero, bb6
bb6:
  FSGNJ.S fs5, fs6, fs6
  FADD.S fs6, fs4, fs5
  FMUL.S fs4, fs6, fs3
  ADDI s0, zero, 6
  FCVT.S.W fs3, s0
  FDIV.S fs5, fs4, fs3
  FSGNJ.S fs3, fs5, fs5
  JAL zero, bb3
my_log:
  ADDI sp, sp, -112
  FSD fs10, 0(sp)
  FSD fs1, 8(sp)
  FSD fs2, 16(sp)
  FSD fs7, 24(sp)
  FSD fs3, 32(sp)
  FSD fs8, 40(sp)
  SD s0, 48(sp)
  FSD fs4, 56(sp)
  FSD fs5, 64(sp)
  FSD fs0, 72(sp)
  FSD fs6, 80(sp)
  SD ra, 88(sp)
  FSD fs9, 96(sp)
  FSGNJ.D fs2, fa0, fa0
  FSGNJ.D fs3, fa1, fa1
  ADDI s0, zero, 1
  FCVT.S.W fs4, s0
  FSUB.S fs5, fs3, fs4
  ADDI s0, zero, 2
  FCVT.S.W fs6, s0
  FDIV.S fs7, fs5, fs6
  FADD.S fs8, fs4, fs7
  FDIV.S fs7, fs4, fs4
  FSGNJ.S fs9, fs7, fs7
  JAL zero, bb14
bb8:
  FSGNJ.S fs3, fs5, fs5
  FSUB.S fs5, fs2, fs4
  FDIV.S fs8, fs5, fs6
  FADD.S fs6, fs4, fs8
  FSGNJ.S fs8, fs7, fs7
  JAL zero, bb17
bb9:
  FSGNJ.S fs0, fs1, fs1
  FDIV.S fs1, fs3, fs0
  FSGNJ.S fa0, fs1, fs1
  FLD fs10, 0(sp)
  FLD fs1, 8(sp)
  FLD fs2, 16(sp)
  FLD fs7, 24(sp)
  FLD fs3, 32(sp)
  FLD fs8, 40(sp)
  LD s0, 48(sp)
  FLD fs4, 56(sp)
  FLD fs5, 64(sp)
  FLD fs0, 72(sp)
  FLD fs6, 80(sp)
  LD ra, 88(sp)
  FLD fs9, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb10:
  FSGNJ.S fs3, fs5, fs5
  FSGNJ.S fs5, fs3, fs3
  JAL zero, bb8
bb11:
  FSGNJ.S fs0, fs1, fs1
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb9
bb12:
  FSGNJ.S fs5, fs8, fs8
  FSGNJ.S fa0, fs4, fs4
  FSGNJ.S fa1, fs3, fs3
  LA s0, .CONSTANT.7.0
  FLW fs3, 0(s0)
  LA s0, .CONSTANT.7.0
  FLW fs8, 0(s0)
  FSGNJ.S fa2, fs3, fs8
  FSGNJ.S fa3, fs5, fs5
  ADDI a0, zero, 1
  CALL asr5
  FSGNJ.D fs3, fa0, fa0
  FSGNJ.S fs5, fs3, fs3
  JAL zero, bb10
bb13:
  FSGNJ.S fs1, fs0, fs0
  FSGNJ.S fa0, fs4, fs4
  FSGNJ.S fa1, fs2, fs2
  LA s0, .CONSTANT.7.0
  FLW fs0, 0(s0)
  LA s0, .CONSTANT.7.0
  FLW fs2, 0(s0)
  FSGNJ.S fa2, fs0, fs2
  FSGNJ.S fa3, fs1, fs1
  ADDI a0, zero, 1
  CALL asr5
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb11
bb14:
  FSGNJ.S fs10, fs9, fs9
  FDIV.S fs9, fs4, fs8
  FSGNJ.S fs8, fs9, fs9
  JAL zero, bb15
bb15:
  FSGNJ.S fs9, fs8, fs8
  ADDI s0, zero, 4
  FCVT.S.W fs0, s0
  FMUL.S fs8, fs0, fs9
  FADD.S fs9, fs10, fs8
  FDIV.S fs8, fs4, fs3
  FSGNJ.S fs10, fs8, fs8
  JAL zero, bb16
bb16:
  FSGNJ.S fs8, fs10, fs10
  FADD.S fs10, fs9, fs8
  FMUL.S fs8, fs10, fs5
  ADDI s0, zero, 6
  FCVT.S.W fs1, s0
  FDIV.S fs5, fs8, fs1
  FSGNJ.S fs8, fs5, fs5
  JAL zero, bb12
bb17:
  FSGNJ.S fs7, fs8, fs8
  FDIV.S fs8, fs4, fs6
  FSGNJ.S fs6, fs8, fs8
  JAL zero, bb18
bb18:
  FSGNJ.S fs8, fs6, fs6
  FMUL.S fs6, fs0, fs8
  FADD.S fs0, fs7, fs6
  FDIV.S fs6, fs4, fs2
  FSGNJ.S fs7, fs6, fs6
  JAL zero, bb19
bb19:
  FSGNJ.S fs6, fs7, fs7
  FADD.S fs7, fs0, fs6
  FMUL.S fs0, fs7, fs5
  FDIV.S fs5, fs0, fs1
  FSGNJ.S fs0, fs5, fs5
  JAL zero, bb13
my_ln:
  ADDI sp, sp, -80
  FSD fs6, 0(sp)
  FSD fs0, 8(sp)
  FSD fs5, 16(sp)
  SD s0, 24(sp)
  FSD fs2, 32(sp)
  FSD fs1, 40(sp)
  FSD fs3, 48(sp)
  SD ra, 56(sp)
  FSD fs4, 64(sp)
  FSGNJ.D fs0, fa0, fa0
  ADDI s0, zero, 1
  FCVT.S.W fs1, s0
  FSUB.S fs2, fs0, fs1
  ADDI s0, zero, 2
  FCVT.S.W fs3, s0
  FDIV.S fs4, fs2, fs3
  FADD.S fs3, fs1, fs4
  FDIV.S fs4, fs1, fs1
  FSGNJ.S fs5, fs4, fs4
  JAL zero, bb23
bb21:
  FSGNJ.S fs0, fs1, fs1
  FSGNJ.S fa0, fs0, fs0
  FLD fs6, 0(sp)
  FLD fs0, 8(sp)
  FLD fs5, 16(sp)
  LD s0, 24(sp)
  FLD fs2, 32(sp)
  FLD fs1, 40(sp)
  FLD fs3, 48(sp)
  LD ra, 56(sp)
  FLD fs4, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb22:
  FSGNJ.S fs3, fs2, fs2
  FSGNJ.S fa0, fs1, fs1
  FSGNJ.S fa1, fs0, fs0
  LA s0, .CONSTANT.7.0
  FLW fs0, 0(s0)
  LA s0, .CONSTANT.7.0
  FLW fs1, 0(s0)
  FSGNJ.S fa2, fs0, fs1
  FSGNJ.S fa3, fs3, fs3
  ADDI a0, zero, 1
  CALL asr5
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb21
bb23:
  FSGNJ.S fs4, fs5, fs5
  FDIV.S fs5, fs1, fs3
  FSGNJ.S fs3, fs5, fs5
  JAL zero, bb24
bb24:
  FSGNJ.S fs5, fs3, fs3
  ADDI s0, zero, 4
  FCVT.S.W fs3, s0
  FMUL.S fs6, fs3, fs5
  FADD.S fs3, fs4, fs6
  FDIV.S fs4, fs1, fs0
  FSGNJ.S fs5, fs4, fs4
  JAL zero, bb25
bb25:
  FSGNJ.S fs4, fs5, fs5
  FADD.S fs5, fs3, fs4
  FMUL.S fs3, fs5, fs2
  ADDI s0, zero, 6
  FCVT.S.W fs2, s0
  FDIV.S fs4, fs3, fs2
  FSGNJ.S fs2, fs4, fs4
  JAL zero, bb22
my_exp:
  ADDI sp, sp, -64
  SD s1, 0(sp)
  SD ra, 8(sp)
  FSD fs3, 16(sp)
  FSD fs1, 24(sp)
  FSD fs2, 32(sp)
  SD s0, 40(sp)
  FSD fs0, 48(sp)
  FSGNJ.D fs0, fa0, fa0
  ADDI s0, zero, 0
  FCVT.S.W fs1, s0
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb27
  JAL zero, bb28
bb27:
  FSGNJN.S fs1, fs0, fs0
  FSGNJ.S fa0, fs1, fs1
  CALL my_exp
  FSGNJ.D fs1, fa0, fa0
  ADDI s0, zero, 1
  FCVT.S.W fs2, s0
  FDIV.S fs3, fs2, fs1
  FSGNJ.S fa0, fs3, fs3
  LD s1, 0(sp)
  LD ra, 8(sp)
  FLD fs3, 16(sp)
  FLD fs1, 24(sp)
  FLD fs2, 32(sp)
  LD s0, 40(sp)
  FLD fs0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb28:
  FCVT.W.S s0, fs0, rtz
  FCVT.S.W fs1, s0
  FSUB.S fs2, fs0, fs1
  LA s1, .CONSTANT.7.1
  FLW fs0, 0(s1)
  LA s1, .CONSTANT.7.1
  FLW fs1, 0(s1)
  FSGNJ.S fa0, fs0, fs1
  ADD a0, s0, zero
  CALL my_pow
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.S fa0, fs2, fs2
  CALL eee
  FSGNJ.D fs1, fa0, fa0
  FMUL.S fs2, fs0, fs1
  FSGNJ.S fa0, fs2, fs2
  LD s1, 0(sp)
  LD ra, 8(sp)
  FLD fs3, 16(sp)
  FLD fs1, 24(sp)
  FLD fs2, 32(sp)
  LD s0, 40(sp)
  FLD fs0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
eee:
  ADDI sp, sp, -64
  FSD fs4, 0(sp)
  FSD fs3, 8(sp)
  SD ra, 16(sp)
  FSD fs2, 24(sp)
  FSD fs1, 32(sp)
  SD s0, 40(sp)
  FSD fs0, 48(sp)
  FSGNJ.D fs0, fa0, fa0
  LA s0, .CONSTANT.7.2
  FLW fs1, 0(s0)
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb30
  JAL zero, bb31
bb30:
  ADDI s0, zero, 2
  FCVT.S.W fs1, s0
  FDIV.S fs2, fs0, fs1
  FSGNJ.S fa0, fs2, fs2
  CALL eee
  FSGNJ.D fs1, fa0, fa0
  FMUL.S fs2, fs1, fs1
  FSGNJ.S fa0, fs2, fs2
  FLD fs4, 0(sp)
  FLD fs3, 8(sp)
  LD ra, 16(sp)
  FLD fs2, 24(sp)
  FLD fs1, 32(sp)
  LD s0, 40(sp)
  FLD fs0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb31:
  ADDI s0, zero, 1
  FCVT.S.W fs1, s0
  FADD.S fs2, fs1, fs0
  FMUL.S fs1, fs0, fs0
  ADDI s0, zero, 2
  FCVT.S.W fs3, s0
  FDIV.S fs4, fs1, fs3
  FADD.S fs1, fs2, fs4
  FSGNJ.S fa0, fs0, fs0
  ADDI a0, zero, 3
  CALL my_pow
  FSGNJ.D fs2, fa0, fa0
  ADDI s0, zero, 6
  FCVT.S.W fs3, s0
  FDIV.S fs4, fs2, fs3
  FADD.S fs2, fs1, fs4
  FSGNJ.S fa0, fs0, fs0
  ADDI a0, zero, 4
  CALL my_pow
  FSGNJ.D fs1, fa0, fa0
  ADDI s0, zero, 24
  FCVT.S.W fs3, s0
  FDIV.S fs4, fs1, fs3
  FADD.S fs1, fs2, fs4
  FSGNJ.S fa0, fs0, fs0
  ADDI a0, zero, 5
  CALL my_pow
  FSGNJ.D fs0, fa0, fa0
  ADDI s0, zero, 120
  FCVT.S.W fs2, s0
  FDIV.S fs3, fs0, fs2
  FADD.S fs0, fs1, fs3
  FSGNJ.S fa0, fs0, fs0
  FLD fs4, 0(sp)
  FLD fs3, 8(sp)
  LD ra, 16(sp)
  FLD fs2, 24(sp)
  FLD fs1, 32(sp)
  LD s0, 40(sp)
  FLD fs0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
asr4:
  ADDI sp, sp, -112
  FSD fs7, 0(sp)
  FSD fs9, 8(sp)
  SD ra, 16(sp)
  FSD fs6, 24(sp)
  SD s2, 32(sp)
  FSD fs0, 40(sp)
  FSD fs5, 48(sp)
  FSD fs1, 56(sp)
  FSD fs2, 64(sp)
  FSD fs8, 72(sp)
  SD s0, 80(sp)
  FSD fs3, 88(sp)
  SD s1, 96(sp)
  FSD fs4, 104(sp)
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.D fs1, fa1, fa1
  FSGNJ.D fs2, fa2, fa2
  ADD s0, a0, zero
  FSUB.S fs3, fs1, fs0
  ADDI s1, zero, 2
  FCVT.S.W fs4, s1
  FDIV.S fs5, fs3, fs4
  FADD.S fs4, fs0, fs5
  XORI s1, s0, 1
  SLTIU s2, s1, 1
  BNE s2, zero, bb34
  JAL zero, bb38
bb33:
  FSGNJ.S fs6, fs5, fs5
  FSGNJ.S fa0, fs0, fs0
  FSGNJ.S fa1, fs1, fs1
  FSGNJ.S fa2, fs2, fs2
  FSGNJ.S fa3, fs6, fs6
  ADD a0, s0, zero
  CALL asr5
  FSGNJ.D fs6, fa0, fa0
  FSGNJ.S fa0, fs6, fs6
  FLD fs7, 0(sp)
  FLD fs9, 8(sp)
  LD ra, 16(sp)
  FLD fs6, 24(sp)
  LD s2, 32(sp)
  FLD fs0, 40(sp)
  FLD fs5, 48(sp)
  FLD fs1, 56(sp)
  FLD fs2, 64(sp)
  FLD fs8, 72(sp)
  LD s0, 80(sp)
  FLD fs3, 88(sp)
  LD s1, 96(sp)
  FLD fs4, 104(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb34:
  ADDI s1, zero, 1
  FCVT.S.W fs5, s1
  FDIV.S fs6, fs5, fs0
  FSGNJ.S fs7, fs6, fs6
  JAL zero, bb35
bb35:
  FSGNJ.S fs6, fs7, fs7
  FDIV.S fs7, fs5, fs4
  FSGNJ.S fs8, fs7, fs7
  JAL zero, bb36
bb36:
  FSGNJ.S fs7, fs8, fs8
  ADDI s1, zero, 4
  FCVT.S.W fs8, s1
  FMUL.S fs9, fs8, fs7
  FADD.S fs7, fs6, fs9
  FDIV.S fs6, fs5, fs1
  FSGNJ.S fs5, fs6, fs6
  JAL zero, bb37
bb37:
  FSGNJ.S fs6, fs5, fs5
  FADD.S fs5, fs7, fs6
  FMUL.S fs6, fs5, fs3
  ADDI s1, zero, 6
  FCVT.S.W fs5, s1
  FDIV.S fs7, fs6, fs5
  FSGNJ.S fs5, fs7, fs7
  JAL zero, bb33
bb38:
  XORI s1, s0, 2
  SLTIU s2, s1, 1
  BNE s2, zero, bb39
  JAL zero, bb43
bb39:
  FMUL.S fs6, fs0, fs0
  ADDI s1, zero, 1
  FCVT.S.W fs7, s1
  FSUB.S fs8, fs7, fs6
  FSGNJ.S fa0, fs8, fs8
  CALL my_sqrt
  FSGNJ.D fs6, fa0, fa0
  FDIV.S fs8, fs7, fs6
  FSGNJ.S fs6, fs8, fs8
  JAL zero, bb40
bb40:
  FSGNJ.S fs8, fs6, fs6
  FMUL.S fs6, fs4, fs4
  FSUB.S fs4, fs7, fs6
  FSGNJ.S fa0, fs4, fs4
  CALL my_sqrt
  FSGNJ.D fs4, fa0, fa0
  FDIV.S fs6, fs7, fs4
  FSGNJ.S fs4, fs6, fs6
  JAL zero, bb41
bb41:
  FSGNJ.S fs6, fs4, fs4
  ADDI s1, zero, 4
  FCVT.S.W fs4, s1
  FMUL.S fs9, fs4, fs6
  FADD.S fs4, fs8, fs9
  FMUL.S fs6, fs1, fs1
  FSUB.S fs8, fs7, fs6
  FSGNJ.S fa0, fs8, fs8
  CALL my_sqrt
  FSGNJ.D fs6, fa0, fa0
  FDIV.S fs8, fs7, fs6
  FSGNJ.S fs6, fs8, fs8
  JAL zero, bb42
bb42:
  FSGNJ.S fs7, fs6, fs6
  FADD.S fs6, fs4, fs7
  FMUL.S fs4, fs6, fs3
  ADDI s1, zero, 6
  FCVT.S.W fs3, s1
  FDIV.S fs6, fs4, fs3
  FSGNJ.S fs5, fs6, fs6
  JAL zero, bb33
bb43:
  ADDI s1, zero, 0
  FCVT.S.W fs3, s1
  FSGNJ.S fs5, fs3, fs3
  JAL zero, bb33
asr5:
  ADDI sp, sp, -224
  FSD fs6, 88(sp)
  SD s1, 96(sp)
  FSD fs4, 104(sp)
  FSD fs8, 112(sp)
  SD s0, 120(sp)
  SD s2, 128(sp)
  FSD fs7, 136(sp)
  FSD fs0, 144(sp)
  FSD fs9, 152(sp)
  SD ra, 160(sp)
  FSD fs10, 168(sp)
  FSD fs11, 176(sp)
  SD s3, 184(sp)
  FSD fs5, 192(sp)
  FSD fs3, 200(sp)
  FSD fs1, 208(sp)
  FSD fs2, 216(sp)
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.D ft4, fa1, fa1
  FSW ft4, 80(sp)
  FSGNJ.D ft4, fa2, fa2
  FSW ft4, 72(sp)
  FSGNJ.D ft4, fa3, fa3
  FSW ft4, 64(sp)
  ADD s0, a0, zero
  FLW ft4, 80(sp)
  FSUB.S fs4, ft4, fs0
  ADDI s1, zero, 2
  FCVT.S.W ft4, s1
  FSW ft4, 56(sp)
  FLW ft4, 56(sp)
  FDIV.S fs6, fs4, ft4
  FADD.S ft4, fs0, fs6
  FSW ft4, 48(sp)
  FLW ft4, 48(sp)
  FSUB.S fs6, ft4, fs0
  FLW ft4, 56(sp)
  FDIV.S fs7, fs6, ft4
  FADD.S fs8, fs0, fs7
  XORI s1, s0, 1
  SLTIU s2, s1, 1
  BNE s2, zero, bb50
  JAL zero, bb54
bb45:
  FSGNJ.S fs9, fs7, fs7
  FLW ft4, 80(sp)
  FLW ft3, 48(sp)
  FSUB.S fs10, ft4, ft3
  FLW ft4, 56(sp)
  FDIV.S fs11, fs10, ft4
  FLW ft3, 48(sp)
  FADD.S ft4, ft3, fs11
  FSW ft4, 0(sp)
  BNE s2, zero, bb60
  JAL zero, bb64
bb46:
  FSGNJ.S ft4, fs11, fs11
  FSW ft4, 8(sp)
  FLW ft3, 8(sp)
  FADD.S ft4, fs9, ft3
  FSW ft4, 16(sp)
  FLW ft3, 16(sp)
  FLW ft4, 64(sp)
  FSUB.S ft4, ft3, ft4
  FSW ft4, 24(sp)
  ADDI s1, zero, 0
  FCVT.S.W ft6, s1
  FLW ft4, 24(sp)
  FLT.S s1, ft6, ft4
  BNE s1, zero, bb70
  JAL zero, bb71
bb47:
  FLW ft4, 32(sp)
  FLW ft3, 32(sp)
  FSGNJ.S ft7, ft4, ft3
  ADDI s1, zero, 15
  FCVT.S.W fa4, s1
  FLW ft4, 72(sp)
  FMUL.S fa5, fa4, ft4
  FLE.S s1, ft7, fa5
  BNE s1, zero, bb48
  JAL zero, bb49
bb48:
  LA s1, .CONSTANT.7.3
  FLW ft7, 0(s1)
  FLW ft4, 24(sp)
  FDIV.S fa4, ft4, ft7
  FLW ft4, 16(sp)
  FADD.S ft7, ft4, fa4
  FSGNJ.S fa0, ft7, ft7
  FLD fs6, 88(sp)
  LD s1, 96(sp)
  FLD fs4, 104(sp)
  FLD fs8, 112(sp)
  LD s0, 120(sp)
  LD s2, 128(sp)
  FLD fs7, 136(sp)
  FLD fs0, 144(sp)
  FLD fs9, 152(sp)
  LD ra, 160(sp)
  FLD fs10, 168(sp)
  FLD fs11, 176(sp)
  LD s3, 184(sp)
  FLD fs5, 192(sp)
  FLD fs3, 200(sp)
  FLD fs1, 208(sp)
  FLD fs2, 216(sp)
  ADDI sp, sp, 224
  JALR zero, 0(ra)
bb49:
  FLW ft3, 72(sp)
  FLW ft4, 56(sp)
  FDIV.S ft4, ft3, ft4
  FSW ft4, 40(sp)
  FSGNJ.S fa0, fs0, fs0
  FLW ft4, 48(sp)
  FLW ft3, 48(sp)
  FSGNJ.S fa1, ft4, ft3
  FLW ft4, 40(sp)
  FLW ft3, 40(sp)
  FSGNJ.S fa2, ft4, ft3
  FSGNJ.S fa3, fs9, fs9
  ADD a0, s0, zero
  CALL asr5
  FSGNJ.D fs4, fa0, fa0
  FLW ft4, 48(sp)
  FLW ft3, 48(sp)
  FSGNJ.S fa0, ft4, ft3
  FLW ft4, 80(sp)
  FLW ft3, 80(sp)
  FSGNJ.S fa1, ft4, ft3
  FLW ft4, 40(sp)
  FLW ft3, 40(sp)
  FSGNJ.S fa2, ft4, ft3
  FLW ft4, 8(sp)
  FLW ft3, 8(sp)
  FSGNJ.S fa3, ft4, ft3
  ADD a0, s0, zero
  CALL asr5
  FSGNJ.D fs5, fa0, fa0
  FADD.S fs3, fs4, fs5
  FSGNJ.S fa0, fs3, fs3
  FLD fs6, 88(sp)
  LD s1, 96(sp)
  FLD fs4, 104(sp)
  FLD fs8, 112(sp)
  LD s0, 120(sp)
  LD s2, 128(sp)
  FLD fs7, 136(sp)
  FLD fs0, 144(sp)
  FLD fs9, 152(sp)
  LD ra, 160(sp)
  FLD fs10, 168(sp)
  FLD fs11, 176(sp)
  LD s3, 184(sp)
  FLD fs5, 192(sp)
  FLD fs3, 200(sp)
  FLD fs1, 208(sp)
  FLD fs2, 216(sp)
  ADDI sp, sp, 224
  JALR zero, 0(ra)
bb50:
  ADDI s1, zero, 1
  FCVT.S.W fs7, s1
  FDIV.S fs9, fs7, fs0
  FSGNJ.S fs10, fs9, fs9
  JAL zero, bb51
bb51:
  FSGNJ.S fs9, fs10, fs10
  FDIV.S fs10, fs7, fs8
  FSGNJ.S fs11, fs10, fs10
  JAL zero, bb52
bb52:
  FSGNJ.S fs10, fs11, fs11
  ADDI s1, zero, 4
  FCVT.S.W fs11, s1
  FMUL.S ft0, fs11, fs10
  FADD.S fs10, fs9, ft0
  FLW ft4, 48(sp)
  FDIV.S fs9, fs7, ft4
  FSGNJ.S fs7, fs9, fs9
  JAL zero, bb53
bb53:
  FSGNJ.S fs9, fs7, fs7
  FADD.S fs7, fs10, fs9
  FMUL.S fs9, fs7, fs6
  ADDI s1, zero, 6
  FCVT.S.W fs7, s1
  FDIV.S fs10, fs9, fs7
  FSGNJ.S fs7, fs10, fs10
  JAL zero, bb45
bb54:
  XORI s1, s0, 2
  SLTIU s3, s1, 1
  BNE s3, zero, bb55
  JAL zero, bb59
bb55:
  FMUL.S fs1, fs0, fs0
  ADDI s1, zero, 1
  FCVT.S.W fs2, s1
  FSUB.S fs3, fs2, fs1
  FSGNJ.S fa0, fs3, fs3
  CALL my_sqrt
  FSGNJ.D fs1, fa0, fa0
  FDIV.S fs3, fs2, fs1
  FSGNJ.S fs1, fs3, fs3
  JAL zero, bb56
bb56:
  FSGNJ.S fs3, fs1, fs1
  FMUL.S fs1, fs8, fs8
  FSUB.S fs4, fs2, fs1
  FSGNJ.S fa0, fs4, fs4
  CALL my_sqrt
  FSGNJ.D fs1, fa0, fa0
  FDIV.S fs4, fs2, fs1
  FSGNJ.S fs1, fs4, fs4
  JAL zero, bb57
bb57:
  FSGNJ.S fs4, fs1, fs1
  ADDI s1, zero, 4
  FCVT.S.W fs1, s1
  FMUL.S fs5, fs1, fs4
  FADD.S fs1, fs3, fs5
  FLW ft4, 48(sp)
  FLW ft3, 48(sp)
  FMUL.S fs3, ft4, ft3
  FSUB.S fs4, fs2, fs3
  FSGNJ.S fa0, fs4, fs4
  CALL my_sqrt
  FSGNJ.D fs3, fa0, fa0
  FDIV.S fs4, fs2, fs3
  FSGNJ.S fs2, fs4, fs4
  JAL zero, bb58
bb58:
  FSGNJ.S fs3, fs2, fs2
  FADD.S fs2, fs1, fs3
  FMUL.S fs1, fs2, fs6
  ADDI s1, zero, 6
  FCVT.S.W fs2, s1
  FDIV.S fs3, fs1, fs2
  FSGNJ.S fs7, fs3, fs3
  JAL zero, bb45
bb59:
  ADDI s1, zero, 0
  FCVT.S.W fs1, s1
  FSGNJ.S fs7, fs1, fs1
  JAL zero, bb45
bb60:
  ADDI s1, zero, 1
  FCVT.S.W fs11, s1
  FLW ft4, 48(sp)
  FDIV.S ft1, fs11, ft4
  FSGNJ.S ft2, ft1, ft1
  JAL zero, bb61
bb61:
  FSGNJ.S ft1, ft2, ft2
  FLW ft4, 0(sp)
  FDIV.S ft2, fs11, ft4
  FSGNJ.S ft5, ft2, ft2
  JAL zero, bb62
bb62:
  FSGNJ.S ft2, ft5, ft5
  ADDI s1, zero, 4
  FCVT.S.W ft5, s1
  FMUL.S ft6, ft5, ft2
  FADD.S ft2, ft1, ft6
  FLW ft4, 80(sp)
  FDIV.S ft1, fs11, ft4
  FSGNJ.S fs11, ft1, ft1
  JAL zero, bb63
bb63:
  FSGNJ.S ft1, fs11, fs11
  FADD.S fs11, ft2, ft1
  FMUL.S ft1, fs11, fs10
  ADDI s1, zero, 6
  FCVT.S.W fs11, s1
  FDIV.S ft2, ft1, fs11
  FSGNJ.S fs11, ft2, ft2
  JAL zero, bb46
bb64:
  XORI s1, s0, 2
  SLTIU s3, s1, 1
  BNE s3, zero, bb65
  JAL zero, bb69
bb65:
  FLW ft4, 48(sp)
  FLW ft3, 48(sp)
  FMUL.S fs3, ft4, ft3
  ADDI s1, zero, 1
  FCVT.S.W fs4, s1
  FSUB.S fs5, fs4, fs3
  FSGNJ.S fa0, fs5, fs5
  CALL my_sqrt
  FSGNJ.D fs3, fa0, fa0
  FDIV.S fs5, fs4, fs3
  FSGNJ.S fs3, fs5, fs5
  JAL zero, bb66
bb66:
  FSGNJ.S fs5, fs3, fs3
  FLW ft4, 0(sp)
  FLW ft3, 0(sp)
  FMUL.S fs3, ft4, ft3
  FSUB.S fs2, fs4, fs3
  FSGNJ.S fa0, fs2, fs2
  CALL my_sqrt
  FSGNJ.D fs2, fa0, fa0
  FDIV.S fs3, fs4, fs2
  FSGNJ.S fs2, fs3, fs3
  JAL zero, bb67
bb67:
  FSGNJ.S fs3, fs2, fs2
  ADDI s1, zero, 4
  FCVT.S.W fs2, s1
  FMUL.S fs1, fs2, fs3
  FADD.S fs2, fs5, fs1
  FLW ft4, 80(sp)
  FLW ft3, 80(sp)
  FMUL.S fs1, ft4, ft3
  FSUB.S fs3, fs4, fs1
  FSGNJ.S fa0, fs3, fs3
  CALL my_sqrt
  FSGNJ.D fs1, fa0, fa0
  FDIV.S fs3, fs4, fs1
  FSGNJ.S fs1, fs3, fs3
  JAL zero, bb68
bb68:
  FSGNJ.S fs3, fs1, fs1
  FADD.S fs1, fs2, fs3
  FMUL.S fs2, fs1, fs10
  ADDI s1, zero, 6
  FCVT.S.W fs1, s1
  FDIV.S fs3, fs2, fs1
  FSGNJ.S fs11, fs3, fs3
  JAL zero, bb46
bb69:
  ADDI s1, zero, 0
  FCVT.S.W fs1, s1
  FSGNJ.S fs11, fs1, fs1
  JAL zero, bb46
bb70:
  FLW ft3, 24(sp)
  FLW ft4, 24(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 32(sp)
  JAL zero, bb47
bb71:
  FLW ft4, 24(sp)
  FLW ft3, 24(sp)
  FSGNJN.S fs3, ft4, ft3
  FSGNJ.S ft4, fs3, fs3
  FSW ft4, 32(sp)
  JAL zero, bb47
simpson:
  ADDI sp, sp, -112
  SD ra, 0(sp)
  FSD fs7, 8(sp)
  FSD fs6, 16(sp)
  FSD fs0, 24(sp)
  FSD fs5, 32(sp)
  SD s2, 40(sp)
  FSD fs1, 48(sp)
  SD s0, 56(sp)
  FSD fs8, 64(sp)
  FSD fs2, 72(sp)
  SD s1, 80(sp)
  FSD fs3, 88(sp)
  FSD fs4, 96(sp)
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.D fs1, fa1, fa1
  ADD s0, a0, zero
  FSUB.S fs2, fs1, fs0
  ADDI s1, zero, 2
  FCVT.S.W fs3, s1
  FDIV.S fs4, fs2, fs3
  FADD.S fs3, fs0, fs4
  XORI s1, s0, 1
  SLTIU s2, s1, 1
  BNE s2, zero, bb73
  JAL zero, bb77
bb73:
  ADDI s1, zero, 1
  FCVT.S.W fs4, s1
  FDIV.S fs5, fs4, fs0
  FSGNJ.S fs6, fs5, fs5
  JAL zero, bb74
bb74:
  FSGNJ.S fs5, fs6, fs6
  FDIV.S fs6, fs4, fs3
  FSGNJ.S fs7, fs6, fs6
  JAL zero, bb75
bb75:
  FSGNJ.S fs6, fs7, fs7
  ADDI s1, zero, 4
  FCVT.S.W fs7, s1
  FMUL.S fs8, fs7, fs6
  FADD.S fs6, fs5, fs8
  FDIV.S fs5, fs4, fs1
  FSGNJ.S fs4, fs5, fs5
  JAL zero, bb76
bb76:
  FSGNJ.S fs5, fs4, fs4
  FADD.S fs4, fs6, fs5
  FMUL.S fs5, fs4, fs2
  ADDI s1, zero, 6
  FCVT.S.W fs4, s1
  FDIV.S fs6, fs5, fs4
  FSGNJ.S fa0, fs6, fs6
  LD ra, 0(sp)
  FLD fs7, 8(sp)
  FLD fs6, 16(sp)
  FLD fs0, 24(sp)
  FLD fs5, 32(sp)
  LD s2, 40(sp)
  FLD fs1, 48(sp)
  LD s0, 56(sp)
  FLD fs8, 64(sp)
  FLD fs2, 72(sp)
  LD s1, 80(sp)
  FLD fs3, 88(sp)
  FLD fs4, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb77:
  XORI s1, s0, 2
  SLTIU s0, s1, 1
  BNE s0, zero, bb78
  JAL zero, bb82
bb78:
  FMUL.S fs4, fs0, fs0
  ADDI s0, zero, 1
  FCVT.S.W fs0, s0
  FSUB.S fs5, fs0, fs4
  FSGNJ.S fa0, fs5, fs5
  CALL my_sqrt
  FSGNJ.D fs4, fa0, fa0
  FDIV.S fs5, fs0, fs4
  FSGNJ.S fs4, fs5, fs5
  JAL zero, bb79
bb79:
  FSGNJ.S fs5, fs4, fs4
  FMUL.S fs4, fs3, fs3
  FSUB.S fs3, fs0, fs4
  FSGNJ.S fa0, fs3, fs3
  CALL my_sqrt
  FSGNJ.D fs3, fa0, fa0
  FDIV.S fs4, fs0, fs3
  FSGNJ.S fs3, fs4, fs4
  JAL zero, bb80
bb80:
  FSGNJ.S fs4, fs3, fs3
  ADDI s0, zero, 4
  FCVT.S.W fs3, s0
  FMUL.S fs6, fs3, fs4
  FADD.S fs3, fs5, fs6
  FMUL.S fs4, fs1, fs1
  FSUB.S fs1, fs0, fs4
  FSGNJ.S fa0, fs1, fs1
  CALL my_sqrt
  FSGNJ.D fs1, fa0, fa0
  FDIV.S fs4, fs0, fs1
  FSGNJ.S fs0, fs4, fs4
  JAL zero, bb81
bb81:
  FSGNJ.S fs1, fs0, fs0
  FADD.S fs0, fs3, fs1
  FMUL.S fs1, fs0, fs2
  ADDI s0, zero, 6
  FCVT.S.W fs0, s0
  FDIV.S fs2, fs1, fs0
  FSGNJ.S fa0, fs2, fs2
  LD ra, 0(sp)
  FLD fs7, 8(sp)
  FLD fs6, 16(sp)
  FLD fs0, 24(sp)
  FLD fs5, 32(sp)
  LD s2, 40(sp)
  FLD fs1, 48(sp)
  LD s0, 56(sp)
  FLD fs8, 64(sp)
  FLD fs2, 72(sp)
  LD s1, 80(sp)
  FLD fs3, 88(sp)
  FLD fs4, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb82:
  ADDI s0, zero, 0
  FCVT.S.W fs0, s0
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  FLD fs7, 8(sp)
  FLD fs6, 16(sp)
  FLD fs0, 24(sp)
  FLD fs5, 32(sp)
  LD s2, 40(sp)
  FLD fs1, 48(sp)
  LD s0, 56(sp)
  FLD fs8, 64(sp)
  FLD fs2, 72(sp)
  LD s1, 80(sp)
  FLD fs3, 88(sp)
  FLD fs4, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
F2:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  FSD fs2, 8(sp)
  SD s0, 16(sp)
  FSD fs1, 24(sp)
  FSD fs0, 32(sp)
  FSGNJ.D fs0, fa0, fa0
  FMUL.S fs1, fs0, fs0
  ADDI s0, zero, 1
  FCVT.S.W fs0, s0
  FSUB.S fs2, fs0, fs1
  FSGNJ.S fa0, fs2, fs2
  CALL my_sqrt
  FSGNJ.D fs1, fa0, fa0
  FDIV.S fs2, fs0, fs1
  FSGNJ.S fa0, fs2, fs2
  LD ra, 0(sp)
  FLD fs2, 8(sp)
  LD s0, 16(sp)
  FLD fs1, 24(sp)
  FLD fs0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
my_sqrt:
  ADDI sp, sp, -96
  SD s3, 0(sp)
  SD s1, 8(sp)
  FSD fs4, 16(sp)
  SD ra, 24(sp)
  FSD fs3, 32(sp)
  FSD fs1, 40(sp)
  FSD fs2, 48(sp)
  SD s0, 56(sp)
  SD s2, 64(sp)
  FSD fs5, 72(sp)
  FSD fs0, 80(sp)
  FSGNJ.D fs0, fa0, fa0
  ADDI s0, zero, 100
  FCVT.S.W fs1, s0
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb85
  JAL zero, bb86
bb85:
  FDIV.S fs2, fs0, fs1
  FSGNJ.S fa0, fs2, fs2
  CALL my_sqrt
  FSGNJ.D fs1, fa0, fa0
  LA s0, .CONSTANT.7.4
  FLW fs2, 0(s0)
  FMUL.S fs3, fs2, fs1
  FSGNJ.S fa0, fs3, fs3
  LD s3, 0(sp)
  LD s1, 8(sp)
  FLD fs4, 16(sp)
  LD ra, 24(sp)
  FLD fs3, 32(sp)
  FLD fs1, 40(sp)
  FLD fs2, 48(sp)
  LD s0, 56(sp)
  LD s2, 64(sp)
  FLD fs5, 72(sp)
  FLD fs0, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb86:
  ADDI s0, zero, 8
  FCVT.S.W fs1, s0
  FDIV.S fs2, fs0, fs1
  LA s0, .CONSTANT.7.5
  FLW fs1, 0(s0)
  FADD.S fs3, fs2, fs1
  ADDI s0, zero, 2
  FCVT.S.W fs1, s0
  FMUL.S fs2, fs1, fs0
  ADDI s0, zero, 4
  FCVT.S.W fs4, s0
  FADD.S fs5, fs4, fs0
  FDIV.S fs4, fs2, fs5
  FADD.S fs2, fs3, fs4
  ADDI s0, zero, 10
  FSGNJ.S fs3, fs2, fs2
  JAL zero, bb87
bb87:
  FSGNJ.S fs2, fs3, fs3
  ADD s1, s0, zero
  XOR s2, s1, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb88
  JAL zero, bb89
bb88:
  FDIV.S fs4, fs0, fs2
  FADD.S fs5, fs2, fs4
  FDIV.S fs4, fs5, fs1
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  ADD s0, s3, zero
  FSGNJ.S fs3, fs4, fs4
  JAL zero, bb87
bb89:
  FSGNJ.S fa0, fs2, fs2
  LD s3, 0(sp)
  LD s1, 8(sp)
  FLD fs4, 16(sp)
  LD ra, 24(sp)
  FLD fs3, 32(sp)
  FLD fs1, 40(sp)
  FLD fs2, 48(sp)
  LD s0, 56(sp)
  LD s2, 64(sp)
  FLD fs5, 72(sp)
  FLD fs0, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
F1:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  FSD fs1, 8(sp)
  FSD fs2, 16(sp)
  SD s0, 24(sp)
  FSD fs0, 32(sp)
  FSGNJ.D fs0, fa0, fa0
  ADDI s0, zero, 1
  FCVT.S.W fs1, s0
  FDIV.S fs2, fs1, fs0
  FSGNJ.S fa0, fs2, fs2
  LD ra, 0(sp)
  FLD fs1, 8(sp)
  FLD fs2, 16(sp)
  LD s0, 24(sp)
  FLD fs0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
my_pow:
  ADDI sp, sp, -96
  FSD fs6, 0(sp)
  FSD fs5, 8(sp)
  FSD fs0, 16(sp)
  SD s2, 24(sp)
  SD s0, 32(sp)
  FSD fs2, 40(sp)
  SD s1, 48(sp)
  FSD fs1, 56(sp)
  FSD fs3, 64(sp)
  SD ra, 72(sp)
  SD s3, 80(sp)
  FSD fs4, 88(sp)
  FSGNJ.D fs0, fa0, fa0
  ADD s0, a0, zero
  SLT s1, s0, zero
  BNE s1, zero, bb92
  JAL zero, bb93
bb92:
  SUB s1, zero, s0
  FSGNJ.S fa0, fs0, fs0
  ADD a0, s1, zero
  CALL my_pow
  FSGNJ.D fs1, fa0, fa0
  ADDI s1, zero, 1
  FCVT.S.W fs2, s1
  FDIV.S fs3, fs2, fs1
  FSGNJ.S fa0, fs3, fs3
  FLD fs6, 0(sp)
  FLD fs5, 8(sp)
  FLD fs0, 16(sp)
  LD s2, 24(sp)
  LD s0, 32(sp)
  FLD fs2, 40(sp)
  LD s1, 48(sp)
  FLD fs1, 56(sp)
  FLD fs3, 64(sp)
  LD ra, 72(sp)
  LD s3, 80(sp)
  FLD fs4, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb93:
  LA s1, .CONSTANT.7.6
  FLW fs1, 0(s1)
  LA s1, .CONSTANT.7.6
  FLW fs2, 0(s1)
  FSGNJ.S fs3, fs1, fs2
  ADD s1, s0, zero
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb94
bb94:
  FSGNJ.S fs0, fs1, fs1
  ADD s0, s1, zero
  FSGNJ.S fs2, fs3, fs3
  XOR s2, s0, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb95
  JAL zero, bb96
bb95:
  ADDI s2, zero, 2
  REMW s3, s0, s2
  XOR s2, s3, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb97
  JAL zero, bb99
bb96:
  FSGNJ.S fa0, fs2, fs2
  FLD fs6, 0(sp)
  FLD fs5, 8(sp)
  FLD fs0, 16(sp)
  LD s2, 24(sp)
  LD s0, 32(sp)
  FLD fs2, 40(sp)
  LD s1, 48(sp)
  FLD fs1, 56(sp)
  FLD fs3, 64(sp)
  LD ra, 72(sp)
  LD s3, 80(sp)
  FLD fs4, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb97:
  FMUL.S fs4, fs2, fs0
  FSGNJ.S fs5, fs4, fs4
  JAL zero, bb98
bb98:
  FSGNJ.S fs4, fs5, fs5
  FMUL.S fs6, fs0, fs0
  ADDI s2, zero, 2
  DIVW s3, s0, s2
  FSGNJ.S fs3, fs4, fs4
  ADD s1, s3, zero
  FSGNJ.S fs1, fs6, fs6
  JAL zero, bb94
bb99:
  FSGNJ.S fs5, fs2, fs2
  JAL zero, bb98
main:
  ADDI sp, sp, -160
  SD s5, 8(sp)
  FSD fs4, 16(sp)
  FSD fs0, 24(sp)
  FSD fs1, 32(sp)
  FSD fs11, 40(sp)
  SD s4, 48(sp)
  FSD fs10, 56(sp)
  FSD fs7, 64(sp)
  SD s0, 72(sp)
  FSD fs8, 80(sp)
  FSD fs2, 88(sp)
  SD s2, 96(sp)
  SD s3, 104(sp)
  FSD fs3, 112(sp)
  FSD fs9, 120(sp)
  SD ra, 128(sp)
  SD s1, 136(sp)
  FSD fs6, 144(sp)
  FSD fs5, 152(sp)
  CALL getint
  ADD s0, a0, zero
  ADD s1, s0, zero
  JAL zero, bb101
bb101:
  ADD s0, s1, zero
  XOR s2, s0, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb102
  JAL zero, bb104
bb102:
  CALL getfloat
  FSGNJ.D fs2, fa0, fa0
  CALL getfloat
  FSGNJ.D fs3, fa0, fa0
  FCVT.S.L ft4, zero
  FSW ft4, 0(sp)
  FLW ft4, 0(sp)
  FLT.S s2, ft4, fs2
  BNE s2, zero, bb143
  JAL zero, bb144
bb103:
  FSGNJ.S fs6, fs5, fs5
  FSGNJ.S fa0, fs6, fs6
  CALL putfloat
  ADDI a0, zero, 32
  CALL putch
  FSGNJ.S fa0, fs2, fs2
  ADDI a0, zero, 2
  CALL my_pow
  FSGNJ.D fs6, fa0, fa0
  FSGNJ.S fa0, fs6, fs6
  CALL putfloat
  ADDI a0, zero, 32
  CALL putch
  FSGNJ.S fa0, fs2, fs2
  CALL my_sqrt
  FSGNJ.D fs6, fa0, fa0
  FSGNJ.S fa0, fs6, fs6
  CALL putfloat
  ADDI a0, zero, 32
  CALL putch
  FSGNJ.S fa0, fs2, fs2
  CALL my_exp
  FSGNJ.D fs6, fa0, fa0
  FSGNJ.S fa0, fs6, fs6
  CALL putfloat
  ADDI a0, zero, 32
  CALL putch
  BNE s2, zero, bb105
  JAL zero, bb108
bb104:
  ADD a0, zero, zero
  LD s5, 8(sp)
  FLD fs4, 16(sp)
  FLD fs0, 24(sp)
  FLD fs1, 32(sp)
  FLD fs11, 40(sp)
  LD s4, 48(sp)
  FLD fs10, 56(sp)
  FLD fs7, 64(sp)
  LD s0, 72(sp)
  FLD fs8, 80(sp)
  FLD fs2, 88(sp)
  LD s2, 96(sp)
  LD s3, 104(sp)
  FLD fs3, 112(sp)
  FLD fs9, 120(sp)
  LD ra, 128(sp)
  LD s1, 136(sp)
  FLD fs6, 144(sp)
  FLD fs5, 152(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb105:
  ADDI s3, zero, 1
  FCVT.S.W fs6, s3
  FSUB.S fs7, fs2, fs6
  ADDI s3, zero, 2
  FCVT.S.W fs8, s3
  FDIV.S fs9, fs7, fs8
  FADD.S fs8, fs6, fs9
  FDIV.S fs9, fs6, fs6
  FSGNJ.S fs10, fs9, fs9
  JAL zero, bb131
bb106:
  FSGNJ.S fs6, fs7, fs7
  FSGNJ.S fa0, fs6, fs6
  CALL putfloat
  JAL zero, bb107
bb107:
  ADDI a0, zero, 32
  CALL putch
  BNE s2, zero, bb109
  JAL zero, bb110
bb108:
  ADDI a0, zero, 45
  CALL putch
  JAL zero, bb107
bb109:
  FLW ft4, 0(sp)
  FLT.S s3, ft4, fs3
  ADD s4, s3, zero
  JAL zero, bb111
bb110:
  ADD s4, zero, zero
  JAL zero, bb111
bb111:
  ADD s3, s4, zero
  BNE s3, zero, bb112
  JAL zero, bb115
bb112:
  ADDI s3, zero, 1
  FCVT.S.W fs6, s3
  FSUB.S fs7, fs3, fs6
  ADDI s3, zero, 2
  FCVT.S.W fs8, s3
  FDIV.S fs9, fs7, fs8
  FADD.S fs10, fs6, fs9
  FDIV.S fs9, fs6, fs6
  FSGNJ.S fs11, fs9, fs9
  JAL zero, bb137
bb113:
  FSGNJ.S fs1, fs0, fs0
  FSGNJ.S fa0, fs1, fs1
  CALL putfloat
  JAL zero, bb114
bb114:
  ADDI a0, zero, 32
  CALL putch
  BNE s2, zero, bb116
  JAL zero, bb119
bb115:
  ADDI a0, zero, 45
  CALL putch
  JAL zero, bb114
bb116:
  ADDI s3, zero, 1
  FCVT.S.W fs0, s3
  FSUB.S fs1, fs2, fs0
  ADDI s3, zero, 2
  FCVT.S.W fs4, s3
  FDIV.S fs6, fs1, fs4
  FADD.S fs4, fs0, fs6
  FDIV.S fs6, fs0, fs0
  FSGNJ.S fs7, fs6, fs6
  JAL zero, bb134
bb117:
  FSGNJ.S fs0, fs1, fs1
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  JAL zero, bb118
bb118:
  ADDI a0, zero, 10
  CALL putch
  ADDI s3, zero, 1
  SUBW s5, s0, s3
  ADD s1, s5, zero
  JAL zero, bb101
bb119:
  ADDI a0, zero, 45
  CALL putch
  JAL zero, bb118
bb120:
  FSGNJ.S fs0, fs1, fs1
  FMUL.S fs1, fs3, fs0
  FSGNJ.S fa0, fs1, fs1
  CALL my_exp
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb117
bb121:
  FSGNJ.S fs4, fs7, fs7
  FSUB.S fs7, fs2, fs6
  FDIV.S fs10, fs7, fs8
  FADD.S fs8, fs6, fs10
  FSGNJ.S fs10, fs9, fs9
  JAL zero, bb140
bb122:
  FSGNJ.S fs0, fs1, fs1
  FDIV.S fs1, fs4, fs0
  FSGNJ.S fs0, fs1, fs1
  JAL zero, bb113
bb123:
  FSGNJ.S fs6, fs7, fs7
  FSGNJ.S fs7, fs6, fs6
  JAL zero, bb106
bb124:
  FSGNJ.S fs0, fs1, fs1
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb120
bb125:
  FSGNJ.S fs4, fs7, fs7
  FSGNJ.S fs7, fs4, fs4
  JAL zero, bb121
bb126:
  FSGNJ.S fs0, fs1, fs1
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb122
bb127:
  FSGNJ.S fs8, fs7, fs7
  FSGNJ.S fa0, fs6, fs6
  FSGNJ.S fa1, fs2, fs2
  LA s3, .CONSTANT.7.0
  FLW fs6, 0(s3)
  LA s3, .CONSTANT.7.0
  FLW fs7, 0(s3)
  FSGNJ.S fa2, fs6, fs7
  FSGNJ.S fa3, fs8, fs8
  ADDI a0, zero, 1
  CALL asr5
  FSGNJ.D fs6, fa0, fa0
  FSGNJ.S fs7, fs6, fs6
  JAL zero, bb123
bb128:
  FSGNJ.S fs4, fs1, fs1
  FSGNJ.S fa0, fs0, fs0
  FSGNJ.S fa1, fs2, fs2
  LA s3, .CONSTANT.7.0
  FLW fs0, 0(s3)
  LA s3, .CONSTANT.7.0
  FLW fs1, 0(s3)
  FSGNJ.S fa2, fs0, fs1
  FSGNJ.S fa3, fs4, fs4
  ADDI a0, zero, 1
  CALL asr5
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb124
bb129:
  FSGNJ.S fs7, fs4, fs4
  FSGNJ.S fa0, fs6, fs6
  FSGNJ.S fa1, fs3, fs3
  LA s3, .CONSTANT.7.0
  FLW fs4, 0(s3)
  LA s3, .CONSTANT.7.0
  FLW fs10, 0(s3)
  FSGNJ.S fa2, fs4, fs10
  FSGNJ.S fa3, fs7, fs7
  ADDI a0, zero, 1
  CALL asr5
  FSGNJ.D fs4, fa0, fa0
  FSGNJ.S fs7, fs4, fs4
  JAL zero, bb125
bb130:
  FSGNJ.S fs1, fs0, fs0
  FSGNJ.S fa0, fs6, fs6
  FSGNJ.S fa1, fs2, fs2
  LA s3, .CONSTANT.7.0
  FLW fs0, 0(s3)
  LA s3, .CONSTANT.7.0
  FLW fs6, 0(s3)
  FSGNJ.S fa2, fs0, fs6
  FSGNJ.S fa3, fs1, fs1
  ADDI a0, zero, 1
  CALL asr5
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb126
bb131:
  FSGNJ.S fs9, fs10, fs10
  FDIV.S fs10, fs6, fs8
  FSGNJ.S fs8, fs10, fs10
  JAL zero, bb132
bb132:
  FSGNJ.S fs10, fs8, fs8
  ADDI s3, zero, 4
  FCVT.S.W fs8, s3
  FMUL.S fs11, fs8, fs10
  FADD.S fs8, fs9, fs11
  FDIV.S fs9, fs6, fs2
  FSGNJ.S fs10, fs9, fs9
  JAL zero, bb133
bb133:
  FSGNJ.S fs9, fs10, fs10
  FADD.S fs10, fs8, fs9
  FMUL.S fs8, fs10, fs7
  ADDI s3, zero, 6
  FCVT.S.W fs7, s3
  FDIV.S fs9, fs8, fs7
  FSGNJ.S fs7, fs9, fs9
  JAL zero, bb127
bb134:
  FSGNJ.S fs6, fs7, fs7
  FDIV.S fs7, fs0, fs4
  FSGNJ.S fs4, fs7, fs7
  JAL zero, bb135
bb135:
  FSGNJ.S fs7, fs4, fs4
  ADDI s3, zero, 4
  FCVT.S.W fs4, s3
  FMUL.S fs8, fs4, fs7
  FADD.S fs4, fs6, fs8
  FDIV.S fs6, fs0, fs2
  FSGNJ.S fs7, fs6, fs6
  JAL zero, bb136
bb136:
  FSGNJ.S fs6, fs7, fs7
  FADD.S fs7, fs4, fs6
  FMUL.S fs4, fs7, fs1
  ADDI s3, zero, 6
  FCVT.S.W fs1, s3
  FDIV.S fs6, fs4, fs1
  FSGNJ.S fs1, fs6, fs6
  JAL zero, bb128
bb137:
  FSGNJ.S fs4, fs11, fs11
  FDIV.S fs11, fs6, fs10
  FSGNJ.S fs10, fs11, fs11
  JAL zero, bb138
bb138:
  FSGNJ.S fs11, fs10, fs10
  ADDI s3, zero, 4
  FCVT.S.W fs0, s3
  FMUL.S fs10, fs0, fs11
  FADD.S fs11, fs4, fs10
  FDIV.S fs4, fs6, fs3
  FSGNJ.S fs10, fs4, fs4
  JAL zero, bb139
bb139:
  FSGNJ.S fs4, fs10, fs10
  FADD.S fs10, fs11, fs4
  FMUL.S fs4, fs10, fs7
  ADDI s3, zero, 6
  FCVT.S.W fs1, s3
  FDIV.S fs7, fs4, fs1
  FSGNJ.S fs4, fs7, fs7
  JAL zero, bb129
bb140:
  FSGNJ.S fs9, fs10, fs10
  FDIV.S fs10, fs6, fs8
  FSGNJ.S fs8, fs10, fs10
  JAL zero, bb141
bb141:
  FSGNJ.S fs10, fs8, fs8
  FMUL.S fs8, fs0, fs10
  FADD.S fs0, fs9, fs8
  FDIV.S fs8, fs6, fs2
  FSGNJ.S fs9, fs8, fs8
  JAL zero, bb142
bb142:
  FSGNJ.S fs8, fs9, fs9
  FADD.S fs9, fs0, fs8
  FMUL.S fs0, fs9, fs7
  FDIV.S fs7, fs0, fs1
  FSGNJ.S fs0, fs7, fs7
  JAL zero, bb130
bb143:
  FSGNJ.S fs5, fs2, fs2
  JAL zero, bb103
bb144:
  FSGNJN.S fs0, fs2, fs2
  FSGNJ.S fs5, fs0, fs0
  JAL zero, bb103
my_fabs:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs1, 16(sp)
  FSD fs0, 24(sp)
  FSGNJ.D fs0, fa0, fa0
  FCVT.S.L fs1, zero
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb146
  JAL zero, bb147
bb146:
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs1, 16(sp)
  FLD fs0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb147:
  FSGNJN.S fs1, fs0, fs0
  FSGNJ.S fa0, fs1, fs1
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs1, 16(sp)
  FLD fs0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
