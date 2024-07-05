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
.word 0x3a83126f
.CONSTANT.7.2:
.word 0x41700000
.CONSTANT.7.3:
.word 0x41200000
.CONSTANT.7.4:
.word 0x3f000000
.CONSTANT.7.5:
.word 0x3f800000
.section .text
my_powf:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  FSD fs2, 8(sp)
  FSD fs1, 16(sp)
  FSD fs0, 24(sp)
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.D fs1, fa1, fa1
  FSGNJ.S fa0, fs0, fs0
  CALL my_ln
  FSGNJ.D fs0, fa0, fa0
  FMUL.S fs2, fs1, fs0
  FSGNJ.S fa0, fs2, fs2
  CALL my_exp
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  FLD fs2, 8(sp)
  FLD fs1, 16(sp)
  FLD fs0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
my_log:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  FSD fs2, 8(sp)
  FSD fs1, 16(sp)
  FSD fs0, 24(sp)
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.D fs1, fa1, fa1
  FSGNJ.S fa0, fs1, fs1
  CALL my_ln
  FSGNJ.D fs1, fa0, fa0
  FSGNJ.S fa0, fs0, fs0
  CALL my_ln
  FSGNJ.D fs0, fa0, fa0
  FDIV.S fs2, fs1, fs0
  FSGNJ.S fa0, fs2, fs2
  LD ra, 0(sp)
  FLD fs2, 8(sp)
  FLD fs1, 16(sp)
  FLD fs0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
my_ln:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  FSD fs1, 8(sp)
  SD s0, 16(sp)
  FSD fs0, 24(sp)
  FSGNJ.D fs0, fa0, fa0
  ADDI s0, zero, 1
  FCVT.S.W fs1, s0
  FSGNJ.S fa0, fs1, fs1
  FSGNJ.S fa1, fs0, fs0
  LA s0, .CONSTANT.7.0
  FLW fs0, 0(s0)
  LA s0, .CONSTANT.7.0
  FLW fs1, 0(s0)
  FSGNJ.S fa2, fs0, fs1
  ADDI a0, zero, 1
  CALL asr4
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  FLD fs1, 8(sp)
  LD s0, 16(sp)
  FLD fs0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
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
  BNE s0, zero, bb4
  JAL zero, bb5
bb4:
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
bb5:
  FCVT.W.S s0, fs0, rtz
  FCVT.S.W fs1, s0
  FSUB.S fs2, fs0, fs1
  LA s1, e
  FLW fs0, 0(s1)
  FSGNJ.S fa0, fs0, fs0
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
  LA s0, .CONSTANT.7.1
  FLW fs1, 0(s0)
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb7
  JAL zero, bb8
bb7:
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
bb8:
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
  ADDI sp, sp, -48
  SD ra, 0(sp)
  FSD fs3, 8(sp)
  SD s0, 16(sp)
  FSD fs2, 24(sp)
  FSD fs1, 32(sp)
  FSD fs0, 40(sp)
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.D fs1, fa1, fa1
  FSGNJ.D fs2, fa2, fa2
  ADD s0, a0, zero
  FSGNJ.S fa0, fs0, fs0
  FSGNJ.S fa1, fs1, fs1
  ADD a0, s0, zero
  CALL simpson
  FSGNJ.D fs3, fa0, fa0
  FSGNJ.S fa0, fs0, fs0
  FSGNJ.S fa1, fs1, fs1
  FSGNJ.S fa2, fs2, fs2
  FSGNJ.S fa3, fs3, fs3
  ADD a0, s0, zero
  CALL asr5
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  FLD fs3, 8(sp)
  LD s0, 16(sp)
  FLD fs2, 24(sp)
  FLD fs1, 32(sp)
  FLD fs0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
asr5:
  ADDI sp, sp, -112
  SD ra, 0(sp)
  FSD fs9, 8(sp)
  FSD fs7, 16(sp)
  FSD fs6, 24(sp)
  FSD fs5, 32(sp)
  FSD fs0, 40(sp)
  FSD fs1, 48(sp)
  FSD fs2, 56(sp)
  FSD fs8, 64(sp)
  FSD fs3, 72(sp)
  SD s0, 80(sp)
  FSD fs4, 88(sp)
  SD s1, 96(sp)
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.D fs1, fa1, fa1
  FSGNJ.D fs2, fa2, fa2
  FSGNJ.D fs3, fa3, fa3
  ADD s0, a0, zero
  FSUB.S fs4, fs1, fs0
  ADDI s1, zero, 2
  FCVT.S.W fs5, s1
  FDIV.S fs6, fs4, fs5
  FADD.S fs4, fs0, fs6
  FSGNJ.S fa0, fs0, fs0
  FSGNJ.S fa1, fs4, fs4
  ADD a0, s0, zero
  CALL simpson
  FSGNJ.D fs5, fa0, fa0
  FSGNJ.S fa0, fs4, fs4
  FSGNJ.S fa1, fs1, fs1
  ADD a0, s0, zero
  CALL simpson
  FSGNJ.D fs6, fa0, fa0
  FADD.S fs7, fs5, fs6
  FSUB.S fs8, fs7, fs3
  FSGNJ.S fa0, fs8, fs8
  CALL my_fabs
  FSGNJ.D fs7, fa0, fa0
  ADDI s1, zero, 15
  FCVT.S.W fs8, s1
  FMUL.S fs9, fs8, fs2
  FLE.S s1, fs7, fs9
  BNE s1, zero, bb11
  JAL zero, bb12
bb11:
  FADD.S fs7, fs5, fs6
  FADD.S fs8, fs5, fs6
  FSUB.S fs9, fs8, fs3
  LA s1, .CONSTANT.7.2
  FLW fs3, 0(s1)
  FDIV.S fs8, fs9, fs3
  FADD.S fs3, fs7, fs8
  FSGNJ.S fa0, fs3, fs3
  LD ra, 0(sp)
  FLD fs9, 8(sp)
  FLD fs7, 16(sp)
  FLD fs6, 24(sp)
  FLD fs5, 32(sp)
  FLD fs0, 40(sp)
  FLD fs1, 48(sp)
  FLD fs2, 56(sp)
  FLD fs8, 64(sp)
  FLD fs3, 72(sp)
  LD s0, 80(sp)
  FLD fs4, 88(sp)
  LD s1, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb12:
  ADDI s1, zero, 2
  FCVT.S.W fs3, s1
  FDIV.S fs7, fs2, fs3
  FSGNJ.S fa0, fs0, fs0
  FSGNJ.S fa1, fs4, fs4
  FSGNJ.S fa2, fs7, fs7
  FSGNJ.S fa3, fs5, fs5
  ADD a0, s0, zero
  CALL asr5
  FSGNJ.D fs0, fa0, fa0
  ADDI s1, zero, 2
  FCVT.S.W fs3, s1
  FDIV.S fs5, fs2, fs3
  FSGNJ.S fa0, fs4, fs4
  FSGNJ.S fa1, fs1, fs1
  FSGNJ.S fa2, fs5, fs5
  FSGNJ.S fa3, fs6, fs6
  ADD a0, s0, zero
  CALL asr5
  FSGNJ.D fs1, fa0, fa0
  FADD.S fs2, fs0, fs1
  FSGNJ.S fa0, fs2, fs2
  LD ra, 0(sp)
  FLD fs9, 8(sp)
  FLD fs7, 16(sp)
  FLD fs6, 24(sp)
  FLD fs5, 32(sp)
  FLD fs0, 40(sp)
  FLD fs1, 48(sp)
  FLD fs2, 56(sp)
  FLD fs8, 64(sp)
  FLD fs3, 72(sp)
  LD s0, 80(sp)
  FLD fs4, 88(sp)
  LD s1, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
simpson:
  ADDI sp, sp, -96
  SD ra, 0(sp)
  FSD fs6, 8(sp)
  FSD fs0, 16(sp)
  FSD fs5, 24(sp)
  SD s2, 32(sp)
  FSD fs1, 40(sp)
  SD s0, 48(sp)
  FSD fs2, 56(sp)
  SD s1, 64(sp)
  FSD fs3, 72(sp)
  FSD fs4, 80(sp)
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.D fs1, fa1, fa1
  ADD s0, a0, zero
  FSUB.S fs2, fs1, fs0
  ADDI s1, zero, 2
  FCVT.S.W fs3, s1
  FDIV.S fs4, fs2, fs3
  FADD.S fs2, fs0, fs4
  XORI s1, s0, 1
  SLTIU s2, s1, 1
  BNE s2, zero, bb14
  JAL zero, bb15
bb14:
  FSGNJ.S fa0, fs0, fs0
  CALL F1
  FSGNJ.D fs3, fa0, fa0
  FSGNJ.S fa0, fs2, fs2
  CALL F1
  FSGNJ.D fs4, fa0, fa0
  ADDI s1, zero, 4
  FCVT.S.W fs5, s1
  FMUL.S fs6, fs5, fs4
  FADD.S fs4, fs3, fs6
  FSGNJ.S fa0, fs1, fs1
  CALL F1
  FSGNJ.D fs3, fa0, fa0
  FADD.S fs5, fs4, fs3
  FSUB.S fs3, fs1, fs0
  FMUL.S fs4, fs5, fs3
  ADDI s1, zero, 6
  FCVT.S.W fs3, s1
  FDIV.S fs5, fs4, fs3
  FSGNJ.S fa0, fs5, fs5
  LD ra, 0(sp)
  FLD fs6, 8(sp)
  FLD fs0, 16(sp)
  FLD fs5, 24(sp)
  LD s2, 32(sp)
  FLD fs1, 40(sp)
  LD s0, 48(sp)
  FLD fs2, 56(sp)
  LD s1, 64(sp)
  FLD fs3, 72(sp)
  FLD fs4, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb15:
  XORI s1, s0, 2
  SLTIU s0, s1, 1
  BNE s0, zero, bb16
  JAL zero, bb17
bb16:
  FSGNJ.S fa0, fs0, fs0
  CALL F2
  FSGNJ.D fs3, fa0, fa0
  FSGNJ.S fa0, fs2, fs2
  CALL F2
  FSGNJ.D fs2, fa0, fa0
  ADDI s0, zero, 4
  FCVT.S.W fs4, s0
  FMUL.S fs5, fs4, fs2
  FADD.S fs2, fs3, fs5
  FSGNJ.S fa0, fs1, fs1
  CALL F2
  FSGNJ.D fs3, fa0, fa0
  FADD.S fs4, fs2, fs3
  FSUB.S fs2, fs1, fs0
  FMUL.S fs0, fs4, fs2
  ADDI s0, zero, 6
  FCVT.S.W fs1, s0
  FDIV.S fs2, fs0, fs1
  FSGNJ.S fa0, fs2, fs2
  LD ra, 0(sp)
  FLD fs6, 8(sp)
  FLD fs0, 16(sp)
  FLD fs5, 24(sp)
  LD s2, 32(sp)
  FLD fs1, 40(sp)
  LD s0, 48(sp)
  FLD fs2, 56(sp)
  LD s1, 64(sp)
  FLD fs3, 72(sp)
  FLD fs4, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb17:
  ADDI s0, zero, 0
  FCVT.S.W fs0, s0
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  FLD fs6, 8(sp)
  FLD fs0, 16(sp)
  FLD fs5, 24(sp)
  LD s2, 32(sp)
  FLD fs1, 40(sp)
  LD s0, 48(sp)
  FLD fs2, 56(sp)
  LD s1, 64(sp)
  FLD fs3, 72(sp)
  FLD fs4, 80(sp)
  ADDI sp, sp, 96
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
  FSGNJ.D fs0, fa0, fa0
  ADDI s0, zero, 1
  FCVT.S.W fs1, s0
  FDIV.S fs2, fs1, fs0
  FSGNJ.S fa0, fs2, fs2
  LD ra, 0(sp)
  FLD fs2, 8(sp)
  LD s0, 16(sp)
  FLD fs1, 24(sp)
  FLD fs0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
my_sqrt:
  ADDI sp, sp, -80
  SD s1, 0(sp)
  FSD fs4, 8(sp)
  SD ra, 16(sp)
  FSD fs3, 24(sp)
  FSD fs1, 32(sp)
  FSD fs2, 40(sp)
  SD s0, 48(sp)
  SD s2, 56(sp)
  FSD fs0, 64(sp)
  FSGNJ.D fs0, fa0, fa0
  ADDI s0, zero, 100
  FCVT.S.W fs1, s0
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb20
  JAL zero, bb21
bb20:
  ADDI s0, zero, 100
  FCVT.S.W fs1, s0
  FDIV.S fs2, fs0, fs1
  FSGNJ.S fa0, fs2, fs2
  CALL my_sqrt
  FSGNJ.D fs1, fa0, fa0
  LA s0, .CONSTANT.7.3
  FLW fs2, 0(s0)
  FMUL.S fs3, fs2, fs1
  FSGNJ.S fa0, fs3, fs3
  LD s1, 0(sp)
  FLD fs4, 8(sp)
  LD ra, 16(sp)
  FLD fs3, 24(sp)
  FLD fs1, 32(sp)
  FLD fs2, 40(sp)
  LD s0, 48(sp)
  LD s2, 56(sp)
  FLD fs0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb21:
  ADDI s0, zero, 8
  FCVT.S.W fs1, s0
  FDIV.S fs2, fs0, fs1
  LA s0, .CONSTANT.7.4
  FLW fs1, 0(s0)
  FADD.S fs3, fs2, fs1
  ADDI s0, zero, 2
  FCVT.S.W fs1, s0
  FMUL.S fs2, fs1, fs0
  ADDI s0, zero, 4
  FCVT.S.W fs1, s0
  FADD.S fs4, fs1, fs0
  FDIV.S fs1, fs2, fs4
  FADD.S fs2, fs3, fs1
  ADDI s0, zero, 10
  FSGNJ.S fs1, fs2, fs2
  JAL zero, bb22
bb22:
  XOR s1, s0, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb23
  JAL zero, bb24
bb23:
  FDIV.S fs2, fs0, fs1
  FADD.S fs3, fs1, fs2
  ADDI s1, zero, 2
  FCVT.S.W fs2, s1
  FDIV.S fs4, fs3, fs2
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  ADD s0, s2, zero
  FSGNJ.S fs1, fs4, fs4
  JAL zero, bb22
bb24:
  FSGNJ.S fa0, fs1, fs1
  LD s1, 0(sp)
  FLD fs4, 8(sp)
  LD ra, 16(sp)
  FLD fs3, 24(sp)
  FLD fs1, 32(sp)
  FLD fs2, 40(sp)
  LD s0, 48(sp)
  LD s2, 56(sp)
  FLD fs0, 64(sp)
  ADDI sp, sp, 80
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
  ADDI sp, sp, -64
  SD ra, 0(sp)
  FSD fs3, 8(sp)
  FSD fs1, 16(sp)
  SD s1, 24(sp)
  FSD fs2, 32(sp)
  SD s0, 40(sp)
  SD s2, 48(sp)
  FSD fs0, 56(sp)
  FSGNJ.D fs0, fa0, fa0
  ADD s0, a0, zero
  SLT s1, s0, zero
  BNE s1, zero, bb27
  JAL zero, bb28
bb27:
  SUB s1, zero, s0
  FSGNJ.S fa0, fs0, fs0
  ADD a0, s1, zero
  CALL my_pow
  FSGNJ.D fs1, fa0, fa0
  ADDI s1, zero, 1
  FCVT.S.W fs2, s1
  FDIV.S fs3, fs2, fs1
  FSGNJ.S fa0, fs3, fs3
  LD ra, 0(sp)
  FLD fs3, 8(sp)
  FLD fs1, 16(sp)
  LD s1, 24(sp)
  FLD fs2, 32(sp)
  LD s0, 40(sp)
  LD s2, 48(sp)
  FLD fs0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb28:
  LA s1, .CONSTANT.7.5
  FLW fs1, 0(s1)
  LA s1, .CONSTANT.7.5
  FLW fs2, 0(s1)
  FSGNJ.S fs3, fs1, fs2
  ADD s1, s0, zero
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb29
bb29:
  XOR s0, s1, zero
  SLTU s2, zero, s0
  BNE s2, zero, bb30
  JAL zero, bb31
bb30:
  ADDI s0, zero, 2
  REMW s2, s1, s0
  XOR s0, s2, zero
  SLTU s2, zero, s0
  BNE s2, zero, bb32
  JAL zero, bb34
bb31:
  FSGNJ.S fa0, fs3, fs3
  LD ra, 0(sp)
  FLD fs3, 8(sp)
  FLD fs1, 16(sp)
  LD s1, 24(sp)
  FLD fs2, 32(sp)
  LD s0, 40(sp)
  LD s2, 48(sp)
  FLD fs0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb32:
  FMUL.S fs0, fs3, fs1
  FSGNJ.S fs2, fs0, fs0
  JAL zero, bb33
bb33:
  FMUL.S fs0, fs1, fs1
  ADDI s0, zero, 2
  DIVW s2, s1, s0
  FSGNJ.S fs3, fs2, fs2
  ADD s1, s2, zero
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb29
bb34:
  FSGNJ.S fs2, fs3, fs3
  JAL zero, bb33
main:
  ADDI sp, sp, -64
  SD s3, 0(sp)
  SD ra, 8(sp)
  FSD fs1, 16(sp)
  FSD fs0, 24(sp)
  SD s2, 32(sp)
  SD s1, 40(sp)
  FSD fs2, 48(sp)
  SD s0, 56(sp)
  CALL getint
  ADD s0, a0, zero
  ADD s1, s0, zero
  JAL zero, bb36
bb36:
  XOR s0, s1, zero
  SLTU s2, zero, s0
  BNE s2, zero, bb37
  JAL zero, bb38
bb37:
  CALL getfloat
  FSGNJ.D fs0, fa0, fa0
  CALL getfloat
  FSGNJ.D fs1, fa0, fa0
  FSGNJ.S fa0, fs0, fs0
  CALL my_fabs
  FSGNJ.D fs2, fa0, fa0
  FSGNJ.S fa0, fs2, fs2
  CALL putfloat
  ADDI a0, zero, 32
  CALL putch
  FSGNJ.S fa0, fs0, fs0
  ADDI a0, zero, 2
  CALL my_pow
  FSGNJ.D fs2, fa0, fa0
  FSGNJ.S fa0, fs2, fs2
  CALL putfloat
  ADDI a0, zero, 32
  CALL putch
  FSGNJ.S fa0, fs0, fs0
  CALL my_sqrt
  FSGNJ.D fs2, fa0, fa0
  FSGNJ.S fa0, fs2, fs2
  CALL putfloat
  ADDI a0, zero, 32
  CALL putch
  FSGNJ.S fa0, fs0, fs0
  CALL my_exp
  FSGNJ.D fs2, fa0, fa0
  FSGNJ.S fa0, fs2, fs2
  CALL putfloat
  ADDI a0, zero, 32
  CALL putch
  FCVT.S.L fs2, zero
  FLT.S s0, fs2, fs0
  BNE s0, zero, bb39
  JAL zero, bb41
bb38:
  ADD a0, zero, zero
  LD s3, 0(sp)
  LD ra, 8(sp)
  FLD fs1, 16(sp)
  FLD fs0, 24(sp)
  LD s2, 32(sp)
  LD s1, 40(sp)
  FLD fs2, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb39:
  FSGNJ.S fa0, fs0, fs0
  CALL my_ln
  FSGNJ.D fs2, fa0, fa0
  FSGNJ.S fa0, fs2, fs2
  CALL putfloat
  JAL zero, bb40
bb40:
  ADDI a0, zero, 32
  CALL putch
  FCVT.S.L fs2, zero
  FLT.S s0, fs2, fs0
  BNE s0, zero, bb42
  JAL zero, bb43
bb41:
  ADDI a0, zero, 45
  CALL putch
  JAL zero, bb40
bb42:
  FCVT.S.L fs2, zero
  FLT.S s0, fs2, fs1
  ADD s2, s0, zero
  JAL zero, bb44
bb43:
  ADD s2, zero, zero
  JAL zero, bb44
bb44:
  BNE s2, zero, bb45
  JAL zero, bb47
bb45:
  FSGNJ.S fa0, fs0, fs0
  FSGNJ.S fa1, fs1, fs1
  CALL my_log
  FSGNJ.D fs2, fa0, fa0
  FSGNJ.S fa0, fs2, fs2
  CALL putfloat
  JAL zero, bb46
bb46:
  ADDI a0, zero, 32
  CALL putch
  FCVT.S.L fs2, zero
  FLT.S s0, fs2, fs0
  BNE s0, zero, bb48
  JAL zero, bb50
bb47:
  ADDI a0, zero, 45
  CALL putch
  JAL zero, bb46
bb48:
  FSGNJ.S fa0, fs0, fs0
  FSGNJ.S fa1, fs1, fs1
  CALL my_powf
  FSGNJ.D fs2, fa0, fa0
  FSGNJ.S fa0, fs2, fs2
  CALL putfloat
  JAL zero, bb49
bb49:
  ADDI a0, zero, 10
  CALL putch
  ADDI s0, zero, 1
  SUBW s3, s1, s0
  ADD s1, s3, zero
  JAL zero, bb36
bb50:
  ADDI a0, zero, 45
  CALL putch
  JAL zero, bb49
my_fabs:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs1, 16(sp)
  FSD fs0, 24(sp)
  FSGNJ.D fs0, fa0, fa0
  FCVT.S.L fs1, zero
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb52
  JAL zero, bb53
bb52:
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs1, 16(sp)
  FLD fs0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb53:
  FSGNJN.S fs1, fs0, fs0
  FSGNJ.S fa0, fs1, fs1
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs1, 16(sp)
  FLD fs0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
