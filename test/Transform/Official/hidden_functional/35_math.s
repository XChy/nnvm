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
  BNE s0, zero, bb2
  # implict jump to bb1
bb1:
  FCVT.W.S s0, fs0, rtz
  FCVT.S.W fs1, s0
  FSUB.S fs1, fs0, fs1
  LA s1, .CONSTANT.7.0
  FLW fs2, 0(s1)
  LA s1, .CONSTANT.7.0
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
bb2:
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
  LA s0, .CONSTANT.7.1
  FLW fs1, 0(s0)
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb5
  # implict jump to bb4
bb4:
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
bb5:
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
  BNE s1, zero, bb21
  # implict jump to bb7
bb7:
  XORI s2, s0, 2
  SLTIU s2, s2, 1
  BNE s2, zero, bb20
  # implict jump to bb8
bb8:
  ADDI s2, zero, 0
  FCVT.S.W fs8, s2
  # implict jump to bb9
bb9:
  FLW ft4, 0(sp)
  FLW ft3, 4(sp)
  FSUB.S fs1, ft4, ft3
  FDIV.S fs6, fs1, fs5
  FLW ft4, 4(sp)
  FADD.S fs6, ft4, fs6
  BNE s1, zero, bb19
  # implict jump to bb10
bb10:
  XORI s1, s0, 2
  SLTIU s1, s1, 1
  BNE s1, zero, bb18
  # implict jump to bb11
bb11:
  ADDI s1, zero, 0
  FCVT.S.W fs7, s1
  # implict jump to bb12
bb12:
  FADD.S fs1, fs8, fs7
  FSUB.S fs3, fs1, fs3
  ADDI s1, zero, 0
  FCVT.S.W fs4, s1
  FLT.S s1, fs4, fs3
  BNE s1, zero, bb17
  # implict jump to bb13
bb13:
  FSGNJN.S fs4, fs3, fs3
  # implict jump to bb14
bb14:
  ADDI s1, zero, 15
  FCVT.S.W fs6, s1
  FMUL.S fs6, fs6, fs2
  FLE.S s1, fs4, fs6
  BNE s1, zero, bb16
  # implict jump to bb15
bb15:
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
bb16:
  LA s0, .CONSTANT.7.2
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
bb17:
  FSGNJ.S fs4, fs3, fs3
  JAL zero, bb14
bb18:
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
  JAL zero, bb12
bb19:
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
  JAL zero, bb12
bb20:
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
  JAL zero, bb9
bb21:
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
  JAL zero, bb9
my_sqrt:
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  FSD fs0, 32(sp)
  FSD fs1, 40(sp)
  FSD fs2, 48(sp)
  FSD fs3, 56(sp)
  FSD fs4, 64(sp)
  FSD fs5, 72(sp)
  FSGNJ.D fs0, fa0, fa0
  ADDI s0, zero, 100
  FCVT.S.W fs1, s0
  FLT.S s0, fs1, fs0
  BNE s0, zero, bb28
  # implict jump to bb23
bb23:
  ADDI s0, zero, 8
  FCVT.S.W fs2, s0
  FDIV.S fs2, fs0, fs2
  LA s0, .CONSTANT.7.4
  FLW fs3, 0(s0)
  FADD.S fs2, fs2, fs3
  ADDI s0, zero, 2
  FCVT.S.W fs3, s0
  FMUL.S fs4, fs3, fs0
  ADDI s0, zero, 4
  FCVT.S.W fs5, s0
  FADD.S fs5, fs5, fs0
  FDIV.S fs4, fs4, fs5
  FADD.S fs2, fs2, fs4
  ADDI s0, zero, 10
  # implict jump to bb24
bb24:
  ADD s1, s0, zero
  FSGNJ.S fs4, fs2, fs2
  FDIV.S fs5, fs0, fs4
  FADD.S fs4, fs4, fs5
  FDIV.S fs4, fs4, fs3
  ADDI s2, zero, 1
  SUBW s1, s1, s2
  BNE s1, zero, bb27
  # implict jump to bb25
bb25:
  # implict jump to bb26
bb26:
  FSGNJ.S fa0, fs4, fs4
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  FLD fs0, 32(sp)
  FLD fs1, 40(sp)
  FLD fs2, 48(sp)
  FLD fs3, 56(sp)
  FLD fs4, 64(sp)
  FLD fs5, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb27:
  FSGNJ.S fs2, fs4, fs4
  ADD s0, s1, zero
  JAL zero, bb24
bb28:
  FDIV.S fs0, fs0, fs1
  FSGNJ.S fa0, fs0, fs0
  CALL my_sqrt
  FSGNJ.D fs0, fa0, fa0
  LA s0, .CONSTANT.7.3
  FLW fs1, 0(s0)
  FMUL.S fs0, fs1, fs0
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  FLD fs0, 32(sp)
  FLD fs1, 40(sp)
  FLD fs2, 48(sp)
  FLD fs3, 56(sp)
  FLD fs4, 64(sp)
  FLD fs5, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
my_pow:
  ADDI sp, sp, -96
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
  FSGNJ.D fs0, fa0, fa0
  ADD s0, a0, zero
  BLT s0, zero, bb40
  # implict jump to bb30
bb30:
  BNE s0, zero, bb33
  # implict jump to bb31
bb31:
  LA s1, .CONSTANT.7.5
  FLW fs1, 0(s1)
  LA s1, .CONSTANT.7.5
  FLW fs2, 0(s1)
  FSGNJ.S fs1, fs1, fs2
  # implict jump to bb32
bb32:
  FSGNJ.S fa0, fs1, fs1
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
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb33:
  FSGNJ.S fs2, fs0, fs0
  ADD s1, s0, zero
  LA s2, .CONSTANT.7.5
  FLW fs3, 0(s2)
  LA s2, .CONSTANT.7.5
  FLW fs4, 0(s2)
  FSGNJ.S fs3, fs3, fs4
  # implict jump to bb34
bb34:
  FSGNJ.S fs4, fs3, fs3
  ADD s2, s1, zero
  FSGNJ.S fs5, fs2, fs2
  ADDI s3, zero, 2
  REMW s3, s2, s3
  BNE s3, zero, bb39
  # implict jump to bb35
bb35:
  FSGNJ.S fs6, fs4, fs4
  # implict jump to bb36
bb36:
  FMUL.S fs4, fs5, fs5
  SRAIW s3, s2, 31
  SRLIW s3, s3, 31
  ADD s2, s2, s3
  SRAIW s2, s2, 1
  BNE s2, zero, bb38
  # implict jump to bb37
bb37:
  FSGNJ.S fs1, fs6, fs6
  JAL zero, bb32
bb38:
  FSGNJ.S fs2, fs4, fs4
  ADD s1, s2, zero
  FSGNJ.S fs3, fs6, fs6
  JAL zero, bb34
bb39:
  FMUL.S fs4, fs4, fs5
  FSGNJ.S fs6, fs4, fs4
  JAL zero, bb36
bb40:
  SUB s0, zero, s0
  FSGNJ.S fa0, fs0, fs0
  ADD a0, s0, zero
  CALL my_pow
  FSGNJ.D fs0, fa0, fa0
  ADDI s0, zero, 1
  FCVT.S.W fs1, s0
  FDIV.S fs0, fs1, fs0
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
  ADDI sp, sp, 96
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -144
  SD ra, 0(sp)
  SD s3, 8(sp)
  FSD fs4, 16(sp)
  SD s1, 24(sp)
  SD s2, 32(sp)
  FSD fs0, 40(sp)
  FSD fs1, 48(sp)
  FSD fs2, 56(sp)
  FSD fs3, 64(sp)
  SD s0, 72(sp)
  SD s4, 80(sp)
  FSD fs5, 88(sp)
  FSD fs6, 96(sp)
  FSD fs7, 104(sp)
  FSD fs8, 112(sp)
  FSD fs9, 120(sp)
  FSD fs10, 128(sp)
  CALL getint
  ADD s0, a0, zero
  BNE s0, zero, bb43
  # implict jump to bb42
bb42:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  FLD fs4, 16(sp)
  LD s1, 24(sp)
  LD s2, 32(sp)
  FLD fs0, 40(sp)
  FLD fs1, 48(sp)
  FLD fs2, 56(sp)
  FLD fs3, 64(sp)
  LD s0, 72(sp)
  LD s4, 80(sp)
  FLD fs5, 88(sp)
  FLD fs6, 96(sp)
  FLD fs7, 104(sp)
  FLD fs8, 112(sp)
  FLD fs9, 120(sp)
  FLD fs10, 128(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb43:
  FCVT.S.L fs0, zero
  # implict jump to bb44
bb44:
  ADD s1, s0, zero
  CALL getfloat
  FSGNJ.D fs1, fa0, fa0
  CALL getfloat
  FSGNJ.D fs2, fa0, fa0
  FLT.S s2, fs0, fs1
  BNE s2, zero, bb60
  # implict jump to bb45
bb45:
  FSGNJN.S fs3, fs1, fs1
  # implict jump to bb46
bb46:
  FSGNJ.S fa0, fs3, fs3
  CALL putfloat
  ADDI a0, zero, 32
  CALL putch
  FSGNJ.S fa0, fs1, fs1
  ADDI a0, zero, 2
  CALL my_pow
  FSGNJ.D fs3, fa0, fa0
  FSGNJ.S fa0, fs3, fs3
  CALL putfloat
  ADDI a0, zero, 32
  CALL putch
  FSGNJ.S fa0, fs1, fs1
  CALL my_sqrt
  FSGNJ.D fs3, fa0, fa0
  FSGNJ.S fa0, fs3, fs3
  CALL putfloat
  ADDI a0, zero, 32
  CALL putch
  FSGNJ.S fa0, fs1, fs1
  CALL my_exp
  FSGNJ.D fs3, fa0, fa0
  FSGNJ.S fa0, fs3, fs3
  CALL putfloat
  ADDI a0, zero, 32
  CALL putch
  BNE s2, zero, bb59
  # implict jump to bb47
bb47:
  ADDI a0, zero, 45
  CALL putch
  # implict jump to bb48
bb48:
  ADDI a0, zero, 32
  CALL putch
  BNE s2, zero, bb58
  # implict jump to bb49
bb49:
  ADD s3, zero, zero
  # implict jump to bb50
bb50:
  BNE s3, zero, bb57
  # implict jump to bb51
bb51:
  ADDI a0, zero, 45
  CALL putch
  # implict jump to bb52
bb52:
  ADDI a0, zero, 32
  CALL putch
  BNE s2, zero, bb56
  # implict jump to bb53
bb53:
  ADDI a0, zero, 45
  CALL putch
  # implict jump to bb54
bb54:
  ADDI a0, zero, 10
  CALL putch
  ADDI s2, zero, 1
  SUBW s1, s1, s2
  BNE s1, zero, bb55
  JAL zero, bb42
bb55:
  ADD s0, s1, zero
  JAL zero, bb44
bb56:
  ADDI s2, zero, 1
  FCVT.S.W fs3, s2
  FSUB.S fs4, fs1, fs3
  ADDI s2, zero, 2
  FCVT.S.W fs5, s2
  FDIV.S fs5, fs4, fs5
  FADD.S fs5, fs3, fs5
  FDIV.S fs6, fs3, fs3
  FDIV.S fs5, fs3, fs5
  ADDI s2, zero, 4
  FCVT.S.W fs7, s2
  FMUL.S fs5, fs7, fs5
  FADD.S fs5, fs6, fs5
  FDIV.S fs6, fs3, fs1
  FADD.S fs5, fs5, fs6
  FMUL.S fs4, fs5, fs4
  ADDI s2, zero, 6
  FCVT.S.W fs5, s2
  FDIV.S fs4, fs4, fs5
  FSGNJ.S fa0, fs3, fs3
  FSGNJ.S fa1, fs1, fs1
  LA s2, .CONSTANT.7.6
  FLW fs1, 0(s2)
  LA s2, .CONSTANT.7.6
  FLW fs3, 0(s2)
  FSGNJ.S fa2, fs1, fs3
  FSGNJ.S fa3, fs4, fs4
  ADDI a0, zero, 1
  CALL asr5
  FSGNJ.D fs1, fa0, fa0
  FMUL.S fs1, fs2, fs1
  FSGNJ.S fa0, fs1, fs1
  CALL my_exp
  FSGNJ.D fs1, fa0, fa0
  FSGNJ.S fa0, fs1, fs1
  CALL putfloat
  JAL zero, bb54
bb57:
  ADDI s3, zero, 1
  FCVT.S.W fs3, s3
  FSUB.S fs4, fs2, fs3
  ADDI s3, zero, 2
  FCVT.S.W fs5, s3
  FDIV.S fs6, fs4, fs5
  FADD.S fs6, fs3, fs6
  FDIV.S fs7, fs3, fs3
  FDIV.S fs6, fs3, fs6
  ADDI s3, zero, 4
  FCVT.S.W fs8, s3
  FMUL.S fs6, fs8, fs6
  FADD.S fs6, fs7, fs6
  FDIV.S fs9, fs3, fs2
  FADD.S fs6, fs6, fs9
  FMUL.S fs4, fs6, fs4
  ADDI s3, zero, 6
  FCVT.S.W fs6, s3
  FDIV.S fs4, fs4, fs6
  FSGNJ.S fa0, fs3, fs3
  FSGNJ.S fa1, fs2, fs2
  LA s3, .CONSTANT.7.6
  FLW fs9, 0(s3)
  LA s3, .CONSTANT.7.6
  FLW fs10, 0(s3)
  FSGNJ.S fa2, fs9, fs10
  FSGNJ.S fa3, fs4, fs4
  ADDI a0, zero, 1
  CALL asr5
  FSGNJ.D fs4, fa0, fa0
  FSUB.S fs9, fs1, fs3
  FDIV.S fs5, fs9, fs5
  FADD.S fs5, fs3, fs5
  FDIV.S fs5, fs3, fs5
  FMUL.S fs5, fs8, fs5
  FADD.S fs5, fs7, fs5
  FDIV.S fs7, fs3, fs1
  FADD.S fs5, fs5, fs7
  FMUL.S fs5, fs5, fs9
  FDIV.S fs5, fs5, fs6
  FSGNJ.S fa0, fs3, fs3
  FSGNJ.S fa1, fs1, fs1
  LA s3, .CONSTANT.7.6
  FLW fs3, 0(s3)
  LA s3, .CONSTANT.7.6
  FLW fs6, 0(s3)
  FSGNJ.S fa2, fs3, fs6
  FSGNJ.S fa3, fs5, fs5
  ADDI a0, zero, 1
  CALL asr5
  FSGNJ.D fs3, fa0, fa0
  FDIV.S fs3, fs4, fs3
  FSGNJ.S fa0, fs3, fs3
  CALL putfloat
  JAL zero, bb52
bb58:
  FLT.S s4, fs0, fs2
  ADD s3, s4, zero
  JAL zero, bb50
bb59:
  ADDI s3, zero, 1
  FCVT.S.W fs3, s3
  FSUB.S fs4, fs1, fs3
  ADDI s3, zero, 2
  FCVT.S.W fs5, s3
  FDIV.S fs5, fs4, fs5
  FADD.S fs5, fs3, fs5
  FDIV.S fs6, fs3, fs3
  FDIV.S fs5, fs3, fs5
  ADDI s3, zero, 4
  FCVT.S.W fs7, s3
  FMUL.S fs5, fs7, fs5
  FADD.S fs5, fs6, fs5
  FDIV.S fs6, fs3, fs1
  FADD.S fs5, fs5, fs6
  FMUL.S fs4, fs5, fs4
  ADDI s3, zero, 6
  FCVT.S.W fs5, s3
  FDIV.S fs4, fs4, fs5
  FSGNJ.S fa0, fs3, fs3
  FSGNJ.S fa1, fs1, fs1
  LA s3, .CONSTANT.7.6
  FLW fs3, 0(s3)
  LA s3, .CONSTANT.7.6
  FLW fs5, 0(s3)
  FSGNJ.S fa2, fs3, fs5
  FSGNJ.S fa3, fs4, fs4
  ADDI a0, zero, 1
  CALL asr5
  FSGNJ.D fs3, fa0, fa0
  FSGNJ.S fa0, fs3, fs3
  CALL putfloat
  JAL zero, bb48
bb60:
  FSGNJ.S fs3, fs1, fs1
  JAL zero, bb46
