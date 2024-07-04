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
  ADDI sp, sp, -48
  SD ra, 16(sp)
  FSD fs2, 24(sp)
  FSD fs1, 32(sp)
  FSD fs0, 40(sp)
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.D fs1, fa1, fa1
  FSW fs0, 8(sp)
  FSW fs1, 0(sp)
  FSGNJ.S fa0, fs0, fs0
  CALL my_ln
  FSGNJ.D fs0, fa0, fa0
  FMUL.S fs2, fs1, fs0
  FSGNJ.S fa0, fs2, fs2
  CALL my_exp
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.S fa0, fs0, fs0
  LD ra, 16(sp)
  FLD fs2, 24(sp)
  FLD fs1, 32(sp)
  FLD fs0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
my_log:
  ADDI sp, sp, -48
  SD ra, 16(sp)
  FSD fs2, 24(sp)
  FSD fs1, 32(sp)
  FSD fs0, 40(sp)
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.D fs1, fa1, fa1
  FSW fs0, 8(sp)
  FSW fs1, 0(sp)
  FSGNJ.S fa0, fs1, fs1
  CALL my_ln
  FSGNJ.D fs0, fa0, fa0
  FLW fs1, 8(sp)
  FSGNJ.S fa0, fs1, fs1
  CALL my_ln
  FSGNJ.D fs1, fa0, fa0
  FDIV.S fs2, fs0, fs1
  FSGNJ.S fa0, fs2, fs2
  LD ra, 16(sp)
  FLD fs2, 24(sp)
  FLD fs1, 32(sp)
  FLD fs0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
my_ln:
  ADDI sp, sp, -48
  SD ra, 8(sp)
  FSD fs1, 16(sp)
  SD s0, 24(sp)
  FSD fs0, 32(sp)
  FSGNJ.D fs0, fa0, fa0
  FSW fs0, 0(sp)
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
  LD ra, 8(sp)
  FLD fs1, 16(sp)
  LD s0, 24(sp)
  FLD fs0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
my_exp:
  ADDI sp, sp, -80
  SD s1, 32(sp)
  SD ra, 40(sp)
  FSD fs1, 48(sp)
  FSD fs2, 56(sp)
  SD s0, 64(sp)
  FSD fs0, 72(sp)
  FSGNJ.D fs0, fa0, fa0
  FSW fs0, 24(sp)
  ADDI s0, zero, 0
  FCVT.S.W fs1, s0
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb4
  JAL zero, bb5
bb4:
  FLW fs0, 24(sp)
  FSGNJN.S fs1, fs0, fs0
  FSGNJ.S fa0, fs1, fs1
  CALL my_exp
  FSGNJ.D fs0, fa0, fa0
  ADDI s0, zero, 1
  FCVT.S.W fs1, s0
  FDIV.S fs2, fs1, fs0
  FSGNJ.S fa0, fs2, fs2
  LD s1, 32(sp)
  LD ra, 40(sp)
  FLD fs1, 48(sp)
  FLD fs2, 56(sp)
  LD s0, 64(sp)
  FLD fs0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb5:
  FLW fs0, 24(sp)
  FCVT.W.S s0, fs0, rtz
  SW s0, 16(sp)
  FLW fs0, 24(sp)
  FCVT.S.W fs1, s0
  FSUB.S fs2, fs0, fs1
  FSW fs2, 24(sp)
  LA s1, e
  FLW fs0, 0(s1)
  FSGNJ.S fa0, fs0, fs0
  ADD a0, s0, zero
  CALL my_pow
  FSGNJ.D fs0, fa0, fa0
  FSW fs0, 8(sp)
  FLW fs0, 24(sp)
  FSGNJ.S fa0, fs0, fs0
  CALL eee
  FSGNJ.D fs0, fa0, fa0
  FSW fs0, 0(sp)
  FLW fs1, 8(sp)
  FMUL.S fs2, fs1, fs0
  FSGNJ.S fa0, fs2, fs2
  LD s1, 32(sp)
  LD ra, 40(sp)
  FLD fs1, 48(sp)
  FLD fs2, 56(sp)
  LD s0, 64(sp)
  FLD fs0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
eee:
  ADDI sp, sp, -64
  FSD fs3, 16(sp)
  SD ra, 24(sp)
  FSD fs2, 32(sp)
  FSD fs1, 40(sp)
  SD s0, 48(sp)
  FSD fs0, 56(sp)
  FSGNJ.D fs0, fa0, fa0
  FSW fs0, 8(sp)
  LA s0, .CONSTANT.7.1
  FLW fs1, 0(s0)
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb7
  JAL zero, bb8
bb7:
  FLW fs0, 8(sp)
  ADDI s0, zero, 2
  FCVT.S.W fs1, s0
  FDIV.S fs2, fs0, fs1
  FSGNJ.S fa0, fs2, fs2
  CALL eee
  FSGNJ.D fs0, fa0, fa0
  FSW fs0, 0(sp)
  FMUL.S fs1, fs0, fs0
  FSGNJ.S fa0, fs1, fs1
  FLD fs3, 16(sp)
  LD ra, 24(sp)
  FLD fs2, 32(sp)
  FLD fs1, 40(sp)
  LD s0, 48(sp)
  FLD fs0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb8:
  FLW fs0, 8(sp)
  ADDI s0, zero, 1
  FCVT.S.W fs1, s0
  FADD.S fs2, fs1, fs0
  FLW fs0, 8(sp)
  FLW fs1, 8(sp)
  FMUL.S fs3, fs0, fs1
  ADDI s0, zero, 2
  FCVT.S.W fs0, s0
  FDIV.S fs1, fs3, fs0
  FADD.S fs0, fs2, fs1
  FLW fs1, 8(sp)
  FSGNJ.S fa0, fs1, fs1
  ADDI a0, zero, 3
  CALL my_pow
  FSGNJ.D fs1, fa0, fa0
  ADDI s0, zero, 6
  FCVT.S.W fs2, s0
  FDIV.S fs3, fs1, fs2
  FADD.S fs1, fs0, fs3
  FLW fs0, 8(sp)
  FSGNJ.S fa0, fs0, fs0
  ADDI a0, zero, 4
  CALL my_pow
  FSGNJ.D fs0, fa0, fa0
  ADDI s0, zero, 24
  FCVT.S.W fs2, s0
  FDIV.S fs3, fs0, fs2
  FADD.S fs0, fs1, fs3
  FLW fs1, 8(sp)
  FSGNJ.S fa0, fs1, fs1
  ADDI a0, zero, 5
  CALL my_pow
  FSGNJ.D fs1, fa0, fa0
  ADDI s0, zero, 120
  FCVT.S.W fs2, s0
  FDIV.S fs3, fs1, fs2
  FADD.S fs1, fs0, fs3
  FSGNJ.S fa0, fs1, fs1
  FLD fs3, 16(sp)
  LD ra, 24(sp)
  FLD fs2, 32(sp)
  FLD fs1, 40(sp)
  LD s0, 48(sp)
  FLD fs0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
asr4:
  ADDI sp, sp, -80
  SD ra, 32(sp)
  FSD fs3, 40(sp)
  SD s0, 48(sp)
  FSD fs2, 56(sp)
  FSD fs1, 64(sp)
  FSD fs0, 72(sp)
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.D fs1, fa1, fa1
  FSGNJ.D fs2, fa2, fa2
  ADD s0, a0, zero
  FSW fs0, 24(sp)
  FSW fs1, 16(sp)
  FSW fs2, 8(sp)
  SW s0, 0(sp)
  FSGNJ.S fa0, fs0, fs0
  FSGNJ.S fa1, fs1, fs1
  ADD a0, s0, zero
  CALL simpson
  FSGNJ.D fs3, fa0, fa0
  LW s0, 0(sp)
  FSGNJ.S fa0, fs0, fs0
  FSGNJ.S fa1, fs1, fs1
  FSGNJ.S fa2, fs2, fs2
  FSGNJ.S fa3, fs3, fs3
  ADD a0, s0, zero
  CALL asr5
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.S fa0, fs0, fs0
  LD ra, 32(sp)
  FLD fs3, 40(sp)
  LD s0, 48(sp)
  FLD fs2, 56(sp)
  FLD fs1, 64(sp)
  FLD fs0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
asr5:
  ADDI sp, sp, -144
  FSD fs5, 64(sp)
  FSD fs4, 72(sp)
  FSD fs0, 80(sp)
  FSD fs1, 88(sp)
  FSD fs2, 96(sp)
  FSD fs3, 104(sp)
  SD ra, 112(sp)
  SD s0, 120(sp)
  SD s1, 128(sp)
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.D fs1, fa1, fa1
  FSGNJ.D fs2, fa2, fa2
  FSGNJ.D fs3, fa3, fa3
  ADD s0, a0, zero
  FSW fs0, 56(sp)
  FSW fs1, 48(sp)
  FSW fs2, 40(sp)
  FSW fs3, 32(sp)
  SW s0, 24(sp)
  FSUB.S fs2, fs1, fs0
  ADDI s1, zero, 2
  FCVT.S.W fs1, s1
  FDIV.S fs3, fs2, fs1
  FADD.S fs1, fs0, fs3
  FSW fs1, 16(sp)
  FSGNJ.S fa0, fs0, fs0
  FSGNJ.S fa1, fs1, fs1
  ADD a0, s0, zero
  CALL simpson
  FSGNJ.D fs0, fa0, fa0
  FSW fs0, 8(sp)
  FLW fs0, 16(sp)
  FLW fs1, 48(sp)
  LW s0, 24(sp)
  FSGNJ.S fa0, fs0, fs0
  FSGNJ.S fa1, fs1, fs1
  ADD a0, s0, zero
  CALL simpson
  FSGNJ.D fs0, fa0, fa0
  FSW fs0, 0(sp)
  FLW fs1, 8(sp)
  FADD.S fs2, fs1, fs0
  FLW fs0, 32(sp)
  FSUB.S fs1, fs2, fs0
  FSGNJ.S fa0, fs1, fs1
  CALL my_fabs
  FSGNJ.D fs0, fa0, fa0
  FLW fs1, 40(sp)
  ADDI s0, zero, 15
  FCVT.S.W fs2, s0
  FMUL.S fs3, fs2, fs1
  FLE.S s0, fs0, fs3
  BNE s0, zero, bb11
  JAL zero, bb12
bb11:
  FLW fs0, 8(sp)
  FLW fs1, 0(sp)
  FADD.S fs2, fs0, fs1
  FLW fs0, 8(sp)
  FLW fs1, 0(sp)
  FADD.S fs3, fs0, fs1
  FLW fs0, 32(sp)
  FSUB.S fs1, fs3, fs0
  LA s0, .CONSTANT.7.2
  FLW fs0, 0(s0)
  FDIV.S fs3, fs1, fs0
  FADD.S fs0, fs2, fs3
  FSGNJ.S fa0, fs0, fs0
  FLD fs5, 64(sp)
  FLD fs4, 72(sp)
  FLD fs0, 80(sp)
  FLD fs1, 88(sp)
  FLD fs2, 96(sp)
  FLD fs3, 104(sp)
  LD ra, 112(sp)
  LD s0, 120(sp)
  LD s1, 128(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb12:
  FLW fs0, 56(sp)
  FLW fs1, 16(sp)
  FLW fs2, 40(sp)
  ADDI s0, zero, 2
  FCVT.S.W fs3, s0
  FDIV.S fs4, fs2, fs3
  FLW fs2, 8(sp)
  LW s0, 24(sp)
  FSGNJ.S fa0, fs0, fs0
  FSGNJ.S fa1, fs1, fs1
  FSGNJ.S fa2, fs4, fs4
  FSGNJ.S fa3, fs2, fs2
  ADD a0, s0, zero
  CALL asr5
  FSGNJ.D fs0, fa0, fa0
  FLW fs1, 16(sp)
  FLW fs2, 48(sp)
  FLW fs3, 40(sp)
  ADDI s0, zero, 2
  FCVT.S.W fs4, s0
  FDIV.S fs5, fs3, fs4
  FLW fs3, 0(sp)
  LW s0, 24(sp)
  FSGNJ.S fa0, fs1, fs1
  FSGNJ.S fa1, fs2, fs2
  FSGNJ.S fa2, fs5, fs5
  FSGNJ.S fa3, fs3, fs3
  ADD a0, s0, zero
  CALL asr5
  FSGNJ.D fs1, fa0, fa0
  FADD.S fs2, fs0, fs1
  FSGNJ.S fa0, fs2, fs2
  FLD fs5, 64(sp)
  FLD fs4, 72(sp)
  FLD fs0, 80(sp)
  FLD fs1, 88(sp)
  FLD fs2, 96(sp)
  FLD fs3, 104(sp)
  LD ra, 112(sp)
  LD s0, 120(sp)
  LD s1, 128(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
simpson:
  ADDI sp, sp, -96
  SD ra, 32(sp)
  FSD fs3, 40(sp)
  SD s1, 48(sp)
  FSD fs2, 56(sp)
  SD s0, 64(sp)
  FSD fs1, 72(sp)
  FSD fs0, 80(sp)
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.D fs1, fa1, fa1
  ADD s0, a0, zero
  FSW fs0, 24(sp)
  FSW fs1, 16(sp)
  SW s0, 8(sp)
  FSUB.S fs2, fs1, fs0
  ADDI s1, zero, 2
  FCVT.S.W fs1, s1
  FDIV.S fs3, fs2, fs1
  FADD.S fs1, fs0, fs3
  FSW fs1, 0(sp)
  XORI s1, s0, 1
  SLTIU s0, s1, 1
  BNE s0, zero, bb14
  JAL zero, bb15
bb14:
  FLW fs0, 24(sp)
  FSGNJ.S fa0, fs0, fs0
  CALL F1
  FSGNJ.D fs0, fa0, fa0
  FLW fs1, 0(sp)
  FSGNJ.S fa0, fs1, fs1
  CALL F1
  FSGNJ.D fs1, fa0, fa0
  ADDI s0, zero, 4
  FCVT.S.W fs2, s0
  FMUL.S fs3, fs2, fs1
  FADD.S fs1, fs0, fs3
  FLW fs0, 16(sp)
  FSGNJ.S fa0, fs0, fs0
  CALL F1
  FSGNJ.D fs0, fa0, fa0
  FADD.S fs2, fs1, fs0
  FLW fs0, 16(sp)
  FLW fs1, 24(sp)
  FSUB.S fs3, fs0, fs1
  FMUL.S fs0, fs2, fs3
  ADDI s0, zero, 6
  FCVT.S.W fs1, s0
  FDIV.S fs2, fs0, fs1
  FSGNJ.S fa0, fs2, fs2
  LD ra, 32(sp)
  FLD fs3, 40(sp)
  LD s1, 48(sp)
  FLD fs2, 56(sp)
  LD s0, 64(sp)
  FLD fs1, 72(sp)
  FLD fs0, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb15:
  LW s0, 8(sp)
  XORI s1, s0, 2
  SLTIU s0, s1, 1
  BNE s0, zero, bb16
  JAL zero, bb17
bb16:
  FLW fs0, 24(sp)
  FSGNJ.S fa0, fs0, fs0
  CALL F2
  FSGNJ.D fs0, fa0, fa0
  FLW fs1, 0(sp)
  FSGNJ.S fa0, fs1, fs1
  CALL F2
  FSGNJ.D fs1, fa0, fa0
  ADDI s0, zero, 4
  FCVT.S.W fs2, s0
  FMUL.S fs3, fs2, fs1
  FADD.S fs1, fs0, fs3
  FLW fs0, 16(sp)
  FSGNJ.S fa0, fs0, fs0
  CALL F2
  FSGNJ.D fs0, fa0, fa0
  FADD.S fs2, fs1, fs0
  FLW fs0, 16(sp)
  FLW fs1, 24(sp)
  FSUB.S fs3, fs0, fs1
  FMUL.S fs0, fs2, fs3
  ADDI s0, zero, 6
  FCVT.S.W fs1, s0
  FDIV.S fs2, fs0, fs1
  FSGNJ.S fa0, fs2, fs2
  LD ra, 32(sp)
  FLD fs3, 40(sp)
  LD s1, 48(sp)
  FLD fs2, 56(sp)
  LD s0, 64(sp)
  FLD fs1, 72(sp)
  FLD fs0, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb17:
  ADDI s0, zero, 0
  FCVT.S.W fs0, s0
  FSGNJ.S fa0, fs0, fs0
  LD ra, 32(sp)
  FLD fs3, 40(sp)
  LD s1, 48(sp)
  FLD fs2, 56(sp)
  LD s0, 64(sp)
  FLD fs1, 72(sp)
  FLD fs0, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
F2:
  ADDI sp, sp, -48
  SD ra, 8(sp)
  FSD fs2, 16(sp)
  SD s0, 24(sp)
  FSD fs1, 32(sp)
  FSD fs0, 40(sp)
  FSGNJ.D fs0, fa0, fa0
  FSW fs0, 0(sp)
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
  LD ra, 8(sp)
  FLD fs2, 16(sp)
  LD s0, 24(sp)
  FLD fs1, 32(sp)
  FLD fs0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
my_sqrt:
  ADDI sp, sp, -96
  SD s1, 24(sp)
  FSD fs4, 32(sp)
  FSD fs3, 40(sp)
  SD ra, 48(sp)
  FSD fs1, 56(sp)
  FSD fs2, 64(sp)
  SD s0, 72(sp)
  SD s2, 80(sp)
  FSD fs0, 88(sp)
  FSGNJ.D fs0, fa0, fa0
  FSW fs0, 16(sp)
  ADDI s0, zero, 100
  FCVT.S.W fs1, s0
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb20
  JAL zero, bb21
bb20:
  FLW fs0, 16(sp)
  ADDI s0, zero, 100
  FCVT.S.W fs1, s0
  FDIV.S fs2, fs0, fs1
  FSGNJ.S fa0, fs2, fs2
  CALL my_sqrt
  FSGNJ.D fs0, fa0, fa0
  LA s0, .CONSTANT.7.3
  FLW fs1, 0(s0)
  FMUL.S fs2, fs1, fs0
  FSGNJ.S fa0, fs2, fs2
  LD s1, 24(sp)
  FLD fs4, 32(sp)
  FLD fs3, 40(sp)
  LD ra, 48(sp)
  FLD fs1, 56(sp)
  FLD fs2, 64(sp)
  LD s0, 72(sp)
  LD s2, 80(sp)
  FLD fs0, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb21:
  FLW fs0, 16(sp)
  ADDI s0, zero, 8
  FCVT.S.W fs1, s0
  FDIV.S fs2, fs0, fs1
  LA s0, .CONSTANT.7.4
  FLW fs0, 0(s0)
  FADD.S fs1, fs2, fs0
  FLW fs0, 16(sp)
  ADDI s0, zero, 2
  FCVT.S.W fs2, s0
  FMUL.S fs3, fs2, fs0
  FLW fs0, 16(sp)
  ADDI s0, zero, 4
  FCVT.S.W fs2, s0
  FADD.S fs4, fs2, fs0
  FDIV.S fs0, fs3, fs4
  FADD.S fs2, fs1, fs0
  FSW fs2, 8(sp)
  ADDI s0, zero, 10
  SW s0, 0(sp)
  JAL zero, bb22
bb22:
  LW s0, 0(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb23
  JAL zero, bb24
bb23:
  FLW fs0, 8(sp)
  FLW fs1, 16(sp)
  FLW fs2, 8(sp)
  FDIV.S fs3, fs1, fs2
  FADD.S fs1, fs0, fs3
  ADDI s0, zero, 2
  FCVT.S.W fs0, s0
  FDIV.S fs2, fs1, fs0
  FSW fs2, 8(sp)
  LW s0, 0(sp)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  SW s2, 0(sp)
  JAL zero, bb22
bb24:
  FLW fs0, 8(sp)
  FSGNJ.S fa0, fs0, fs0
  LD s1, 24(sp)
  FLD fs4, 32(sp)
  FLD fs3, 40(sp)
  LD ra, 48(sp)
  FLD fs1, 56(sp)
  FLD fs2, 64(sp)
  LD s0, 72(sp)
  LD s2, 80(sp)
  FLD fs0, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
F1:
  ADDI sp, sp, -48
  SD ra, 8(sp)
  FSD fs1, 16(sp)
  FSD fs2, 24(sp)
  SD s0, 32(sp)
  FSD fs0, 40(sp)
  FSGNJ.D fs0, fa0, fa0
  FSW fs0, 0(sp)
  ADDI s0, zero, 1
  FCVT.S.W fs1, s0
  FDIV.S fs2, fs1, fs0
  FSGNJ.S fa0, fs2, fs2
  LD ra, 8(sp)
  FLD fs1, 16(sp)
  FLD fs2, 24(sp)
  LD s0, 32(sp)
  FLD fs0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
my_pow:
  ADDI sp, sp, -80
  SD ra, 24(sp)
  FSD fs1, 32(sp)
  SD s1, 40(sp)
  FSD fs2, 48(sp)
  SD s0, 56(sp)
  SD s2, 64(sp)
  FSD fs0, 72(sp)
  FSGNJ.D fs0, fa0, fa0
  ADD s0, a0, zero
  FSW fs0, 16(sp)
  SW s0, 8(sp)
  SLT s1, s0, zero
  BNE s1, zero, bb27
  JAL zero, bb28
bb27:
  FLW fs0, 16(sp)
  LW s0, 8(sp)
  SUB s1, zero, s0
  FSGNJ.S fa0, fs0, fs0
  ADD a0, s1, zero
  CALL my_pow
  FSGNJ.D fs0, fa0, fa0
  ADDI s0, zero, 1
  FCVT.S.W fs1, s0
  FDIV.S fs2, fs1, fs0
  FSGNJ.S fa0, fs2, fs2
  LD ra, 24(sp)
  FLD fs1, 32(sp)
  LD s1, 40(sp)
  FLD fs2, 48(sp)
  LD s0, 56(sp)
  LD s2, 64(sp)
  FLD fs0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb28:
  LA s0, .CONSTANT.7.5
  FLW fs0, 0(s0)
  FSW fs0, 0(sp)
  JAL zero, bb29
bb29:
  LW s0, 8(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb30
  JAL zero, bb31
bb30:
  LW s0, 8(sp)
  ADDI s1, zero, 2
  REMW s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb32
  JAL zero, bb33
bb31:
  FLW fs0, 0(sp)
  FSGNJ.S fa0, fs0, fs0
  LD ra, 24(sp)
  FLD fs1, 32(sp)
  LD s1, 40(sp)
  FLD fs2, 48(sp)
  LD s0, 56(sp)
  LD s2, 64(sp)
  FLD fs0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb32:
  FLW fs0, 0(sp)
  FLW fs1, 16(sp)
  FMUL.S fs2, fs0, fs1
  FSW fs2, 0(sp)
  JAL zero, bb33
bb33:
  FLW fs0, 16(sp)
  FLW fs1, 16(sp)
  FMUL.S fs2, fs0, fs1
  FSW fs2, 16(sp)
  LW s0, 8(sp)
  ADDI s1, zero, 2
  DIVW s2, s0, s1
  SW s2, 8(sp)
  JAL zero, bb29
main:
  ADDI sp, sp, -80
  SD ra, 32(sp)
  FSD fs1, 40(sp)
  SD s2, 48(sp)
  FSD fs0, 56(sp)
  SD s1, 64(sp)
  SD s0, 72(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 24(sp)
  JAL zero, bb35
bb35:
  LW s0, 24(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb36
  JAL zero, bb37
bb36:
  CALL getfloat
  FSGNJ.D fs0, fa0, fa0
  FSW fs0, 16(sp)
  CALL getfloat
  FSGNJ.D fs0, fa0, fa0
  FSW fs0, 8(sp)
  FLW fs0, 16(sp)
  FSGNJ.S fa0, fs0, fs0
  CALL my_fabs
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  ADDI a0, zero, 32
  CALL putch
  FLW fs0, 16(sp)
  FSGNJ.S fa0, fs0, fs0
  ADDI a0, zero, 2
  CALL my_pow
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  ADDI a0, zero, 32
  CALL putch
  FLW fs0, 16(sp)
  FSGNJ.S fa0, fs0, fs0
  CALL my_sqrt
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  ADDI a0, zero, 32
  CALL putch
  FLW fs0, 16(sp)
  FSGNJ.S fa0, fs0, fs0
  CALL my_exp
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  ADDI a0, zero, 32
  CALL putch
  FLW fs0, 16(sp)
  FCVT.S.L fs1, zero
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb38
  JAL zero, bb40
bb37:
  ADD a0, zero, zero
  LD ra, 32(sp)
  FLD fs1, 40(sp)
  LD s2, 48(sp)
  FLD fs0, 56(sp)
  LD s1, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb38:
  FLW fs0, 16(sp)
  FSGNJ.S fa0, fs0, fs0
  CALL my_ln
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  JAL zero, bb39
bb39:
  ADDI a0, zero, 32
  CALL putch
  FLW fs0, 16(sp)
  FCVT.S.L fs1, zero
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb41
  JAL zero, bb42
bb40:
  ADDI a0, zero, 45
  CALL putch
  JAL zero, bb39
bb41:
  FLW fs0, 8(sp)
  FCVT.S.L fs1, zero
  FLT.S s0, fs1, fs0
  SB s0, 0(sp)
  JAL zero, bb43
bb42:
  ADDI s0, zero, 0
  SB s0, 0(sp)
  JAL zero, bb43
bb43:
  LB s0, 0(sp)
  BNE s0, zero, bb44
  JAL zero, bb46
bb44:
  FLW fs0, 16(sp)
  FLW fs1, 8(sp)
  FSGNJ.S fa0, fs0, fs0
  FSGNJ.S fa1, fs1, fs1
  CALL my_log
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  JAL zero, bb45
bb45:
  ADDI a0, zero, 32
  CALL putch
  FLW fs0, 16(sp)
  FCVT.S.L fs1, zero
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb47
  JAL zero, bb49
bb46:
  ADDI a0, zero, 45
  CALL putch
  JAL zero, bb45
bb47:
  FLW fs0, 16(sp)
  FLW fs1, 8(sp)
  FSGNJ.S fa0, fs0, fs0
  FSGNJ.S fa1, fs1, fs1
  CALL my_powf
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  JAL zero, bb48
bb48:
  ADDI a0, zero, 10
  CALL putch
  LW s0, 24(sp)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  SW s2, 24(sp)
  JAL zero, bb35
bb49:
  ADDI a0, zero, 45
  CALL putch
  JAL zero, bb48
my_fabs:
  ADDI sp, sp, -48
  SD ra, 8(sp)
  SD s0, 16(sp)
  FSD fs1, 24(sp)
  FSD fs0, 32(sp)
  FSGNJ.D fs0, fa0, fa0
  FSW fs0, 0(sp)
  FCVT.S.L fs1, zero
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb51
  JAL zero, bb52
bb51:
  FLW fs0, 0(sp)
  FSGNJ.S fa0, fs0, fs0
  LD ra, 8(sp)
  LD s0, 16(sp)
  FLD fs1, 24(sp)
  FLD fs0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb52:
  FLW fs0, 0(sp)
  FSGNJN.S fs1, fs0, fs0
  FSGNJ.S fa0, fs1, fs1
  LD ra, 8(sp)
  LD s0, 16(sp)
  FLD fs1, 24(sp)
  FLD fs0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
