.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
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
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  FSD fs0, 24(sp)
  FSD fs1, 32(sp)
  FSD fs2, 40(sp)
  ADDI s0, zero, 0
  FCVT.S.W fs0, s0
  FLT.S s0, fa0, fs0
  BNE s0, zero, bb2
  # implict jump to bb1
bb1:   # loop depth 0
  FCVT.W.S a0, fa0, rtz
  LA s0, .CONSTANT.7.0
  LA s1, .CONSTANT.7.0
  FLW fs1, 0(s0)
  FCVT.S.W fs0, a0
  FLW fs2, 0(s1)
  FSUB.S fs0, fa0, fs0
  FSGNJ.S fa0, fs1, fs2
  CALL my_pow
  FSGNJ.D fs1, fa0, fa0
  FSGNJ.S fa0, fs0, fs0
  CALL eee
  FMUL.S fa0, fs1, fa0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  FLD fs0, 24(sp)
  FLD fs1, 32(sp)
  FLD fs2, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb2:   # loop depth 0
  FSGNJN.S fa0, fa0, fa0
  ADDI s0, zero, 1
  FCVT.S.W fs0, s0
  CALL my_exp
  FDIV.S fa0, fs0, fa0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  FLD fs0, 24(sp)
  FLD fs1, 32(sp)
  FLD fs2, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
eee:   # loop depth 0
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  FSD fs0, 24(sp)
  FSD fs1, 32(sp)
  FSD fs2, 40(sp)
  FSD fs3, 48(sp)
  FSD fs4, 56(sp)
  FSD fs5, 64(sp)
  LA s0, .CONSTANT.7.1
  FSGNJ.D fs0, fa0, fa0
  ADDI s1, zero, 2
  FLW fa0, 0(s0)
  FCVT.S.W fs1, s1
  FLT.S s0, fa0, fs0
  BNE s0, zero, bb5
  # implict jump to bb4
bb4:   # loop depth 0
  FMUL.S fs2, fs0, fs0
  ADDI s0, zero, 6
  FSGNJ.S fa0, fs0, fs0
  ADDI a0, zero, 3
  FCVT.S.W fs3, s0
  ADDI s0, zero, 24
  FCVT.S.W fs4, s0
  ADDI s1, zero, 120
  ADDI s0, zero, 1
  CALL my_pow
  FDIV.S fs2, fs2, fs1
  ADDI a0, zero, 4
  FDIV.S fs3, fa0, fs3
  FSGNJ.S fa0, fs0, fs0
  FCVT.S.W fs5, s1
  FCVT.S.W fs1, s0
  CALL my_pow
  ADDI a0, zero, 5
  FDIV.S fs4, fa0, fs4
  FSGNJ.S fa0, fs0, fs0
  FADD.S fs0, fs1, fs0
  CALL my_pow
  FDIV.S ft1, fa0, fs5
  FADD.S ft0, fs0, fs2
  FADD.S ft0, ft0, fs3
  FADD.S ft0, ft0, fs4
  FADD.S fa0, ft0, ft1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  FLD fs0, 24(sp)
  FLD fs1, 32(sp)
  FLD fs2, 40(sp)
  FLD fs3, 48(sp)
  FLD fs4, 56(sp)
  FLD fs5, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb5:   # loop depth 0
  FDIV.S fa0, fs0, fs1
  CALL eee
  FMUL.S fa0, fa0, fa0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  FLD fs0, 24(sp)
  FLD fs1, 32(sp)
  FLD fs2, 40(sp)
  FLD fs3, 48(sp)
  FLD fs4, 56(sp)
  FLD fs5, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
asr5:   # loop depth 0
  ADDI sp, sp, -192
  SD ra, 48(sp)
  SD s0, 56(sp)
  SD s1, 64(sp)
  SD s2, 72(sp)
  SD s3, 80(sp)
  SD s4, 88(sp)
  FSD fs0, 96(sp)
  FSD fs1, 104(sp)
  FSD fs3, 112(sp)
  FSD fs4, 120(sp)
  FSD fs5, 128(sp)
  FSD fs6, 136(sp)
  FSD fs7, 144(sp)
  FSD fs8, 152(sp)
  FSD fs9, 160(sp)
  FSD fs10, 168(sp)
  FSD fs11, 176(sp)
  FSGNJ.D fs9, fa1, fa1
  ADDI s0, zero, 2
  FSGNJ.D fs5, fa0, fa0
  ADDI s2, zero, 0
  FSUB.S fa0, fs9, fs5
  ADDI s1, zero, 6
  FCVT.S.W fs10, s0
  ADDI s4, zero, 4
  ADDI s3, zero, 1
  ADD s0, a0, zero
  FCVT.S.W fs8, s2
  XORI s2, s0, 2
  FCVT.S.W fs0, s1
  FSW fs0, 12(sp)
  XORI s1, s0, 1
  FDIV.S fs0, fa0, fs10
  SLTIU s2, s2, 1
  FCVT.S.W fa0, s4
  FSW fa0, 8(sp)
  SLTIU s1, s1, 1
  FCVT.S.W fs11, s3
  FSGNJ.D fa0, fa3, fa3
  FSW fa0, 40(sp)
  FSGNJ.D fa0, fa2, fa2
  FSW fa0, 36(sp)
  FADD.S fs4, fs5, fs0
  FSUB.S fs7, fs4, fs5
  FMUL.S fa0, fs4, fs4
  FSW fa0, 16(sp)
  FDIV.S fa0, fs7, fs10
  FADD.S fa0, fs5, fa0
  BNE s1, zero, bb21
  # implict jump to bb7
bb7:   # loop depth 0
  BNE s2, zero, bb20
  # implict jump to bb8
bb8:   # loop depth 0
  FSGNJ.S fs6, fs8, fs8
  # implict jump to bb9
bb9:   # loop depth 0
  FSUB.S fa0, fs9, fs4
  FSW fa0, 20(sp)
  FLW fa0, 20(sp)
  FDIV.S fa0, fa0, fs10
  FADD.S fa0, fs4, fa0
  BNE s1, zero, bb19
  # implict jump to bb10
bb10:   # loop depth 0
  BNE s2, zero, bb18
  # implict jump to bb11
bb11:   # loop depth 0
  FSGNJ.S fs0, fs8, fs8
  # implict jump to bb12
bb12:   # loop depth 0
  FADD.S fa2, fs6, fs0
  FLW fa0, 40(sp)
  FSUB.S fa1, fa2, fa0
  FLT.S a0, fs8, fa1
  FSGNJN.S fa0, fa1, fa1
  BNE a0, zero, bb17
  # implict jump to bb13
bb13:   # loop depth 0
  # implict jump to bb14
bb14:   # loop depth 0
  ADDI a0, zero, 15
  FCVT.S.W fa3, a0
  FLW fs1, 36(sp)
  FMUL.S fa3, fa3, fs1
  FLE.S a0, fa0, fa3
  BNE a0, zero, bb16
  # implict jump to bb15
bb15:   # loop depth 0
  FLW fa0, 36(sp)
  FDIV.S fs1, fa0, fs10
  ADD a0, s0, zero
  FSGNJ.S fa3, fs6, fs6
  FSGNJ.S fa1, fs4, fs4
  FSGNJ.S fa0, fs5, fs5
  FSGNJ.S fa2, fs1, fs1
  CALL asr5
  FSGNJ.S fa3, fs0, fs0
  ADD a0, s0, zero
  FSGNJ.S fa2, fs1, fs1
  FSGNJ.S fa1, fs9, fs9
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.S fa0, fs4, fs4
  CALL asr5
  FADD.S fa0, fs0, fa0
  LD ra, 48(sp)
  LD s0, 56(sp)
  LD s1, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  FLD fs0, 96(sp)
  FLD fs1, 104(sp)
  FLD fs3, 112(sp)
  FLD fs4, 120(sp)
  FLD fs5, 128(sp)
  FLD fs6, 136(sp)
  FLD fs7, 144(sp)
  FLD fs8, 152(sp)
  FLD fs9, 160(sp)
  FLD fs10, 168(sp)
  FLD fs11, 176(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb16:   # loop depth 0
  LA t0, .CONSTANT.7.2
  FLW ft0, 0(t0)
  FDIV.S ft0, fa1, ft0
  FADD.S fa0, fa2, ft0
  LD ra, 48(sp)
  LD s0, 56(sp)
  LD s1, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  FLD fs0, 96(sp)
  FLD fs1, 104(sp)
  FLD fs3, 112(sp)
  FLD fs4, 120(sp)
  FLD fs5, 128(sp)
  FLD fs6, 136(sp)
  FLD fs7, 144(sp)
  FLD fs8, 152(sp)
  FLD fs9, 160(sp)
  FLD fs10, 168(sp)
  FLD fs11, 176(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb17:   # loop depth 0
  FSGNJ.S fa0, fa1, fa1
  JAL zero, bb14
bb18:   # loop depth 0
  FMUL.S fs0, fa0, fa0
  FLW fa0, 16(sp)
  FSUB.S fa0, fs11, fa0
  FMUL.S fs1, fs9, fs9
  FSW fs1, 32(sp)
  FSUB.S fs3, fs11, fs0
  FLW fs0, 32(sp)
  FSUB.S fs7, fs11, fs0
  CALL my_sqrt
  FSW fa0, 0(sp)
  FSGNJ.S fa0, fs3, fs3
  FLW fs0, 0(sp)
  FDIV.S fs0, fs11, fs0
  CALL my_sqrt
  FDIV.S fa0, fs11, fa0
  FSW fa0, 4(sp)
  FSGNJ.S fa0, fs7, fs7
  CALL my_sqrt
  FDIV.S fa1, fs11, fa0
  FLW fa0, 4(sp)
  FLW fa2, 8(sp)
  FMUL.S fa0, fa2, fa0
  FADD.S fa0, fs0, fa0
  FADD.S fa0, fa0, fa1
  FLW fa1, 20(sp)
  FMUL.S fa0, fa0, fa1
  FLW fa1, 12(sp)
  FDIV.S fs0, fa0, fa1
  JAL zero, bb12
bb19:   # loop depth 0
  FDIV.S fa1, fs11, fa0
  FDIV.S fa0, fs11, fs4
  FDIV.S fa2, fs11, fs9
  FLW fa3, 8(sp)
  FMUL.S fa1, fa3, fa1
  FADD.S fa0, fa0, fa1
  FADD.S fa0, fa0, fa2
  FLW fa1, 20(sp)
  FMUL.S fa0, fa0, fa1
  FLW fa1, 12(sp)
  FDIV.S fs0, fa0, fa1
  JAL zero, bb12
bb20:   # loop depth 0
  FMUL.S fs0, fs5, fs5
  FMUL.S fs3, fa0, fa0
  FLW fa0, 16(sp)
  FSUB.S fs6, fs11, fa0
  FSUB.S fa0, fs11, fs0
  FSUB.S fs3, fs11, fs3
  CALL my_sqrt
  FSW fa0, 24(sp)
  FSGNJ.S fa0, fs3, fs3
  FLW fs0, 24(sp)
  FDIV.S fs0, fs11, fs0
  CALL my_sqrt
  FDIV.S fa0, fs11, fa0
  FSW fa0, 28(sp)
  FSGNJ.S fa0, fs6, fs6
  CALL my_sqrt
  FDIV.S fs6, fs11, fa0
  FLW fa0, 28(sp)
  FLW fs1, 8(sp)
  FMUL.S fa0, fs1, fa0
  FADD.S fa0, fs0, fa0
  FADD.S fa0, fa0, fs6
  FMUL.S fa0, fa0, fs7
  FLW fs0, 12(sp)
  FDIV.S fs6, fa0, fs0
  JAL zero, bb9
bb21:   # loop depth 0
  FDIV.S fs0, fs11, fa0
  FDIV.S fa0, fs11, fs5
  FDIV.S fs3, fs11, fs4
  FLW fs1, 8(sp)
  FMUL.S fs0, fs1, fs0
  FADD.S fa0, fa0, fs0
  FADD.S fa0, fa0, fs3
  FMUL.S fa0, fa0, fs7
  FLW fs0, 12(sp)
  FDIV.S fs6, fa0, fs0
  JAL zero, bb9
my_sqrt:   # loop depth 0
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs0, 16(sp)
  ADDI s0, zero, 100
  FCVT.S.W fs0, s0
  FLT.S s0, fs0, fa0
  BNE s0, zero, bb27
  # implict jump to bb23
bb23:   # loop depth 0
  ADDI t2, zero, 4
  ADDI t1, zero, 2
  ADDI t0, zero, 8
  FCVT.S.W ft2, t2
  FCVT.S.W ft1, t1
  LA t1, .CONSTANT.7.4
  FCVT.S.W ft0, t0
  ADDI t0, zero, 10
  FADD.S ft3, ft2, fa0
  FLW ft4, 0(t1)
  FMUL.S ft2, ft1, fa0
  FDIV.S ft0, fa0, ft0
  FDIV.S ft2, ft2, ft3
  FADD.S ft0, ft0, ft4
  FADD.S ft0, ft0, ft2
  # implict jump to bb24
bb24:   # loop depth 1
  ADDIW t0, t0, -1
  FDIV.S ft2, fa0, ft0
  FADD.S ft0, ft0, ft2
  FDIV.S ft0, ft0, ft1
  BNE t0, zero, bb26
  # implict jump to bb25
bb25:   # loop depth 0
  FSGNJ.S fa0, ft0, ft0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb26:   # loop depth 1
  JAL zero, bb24
bb27:   # loop depth 0
  FDIV.S fa0, fa0, fs0
  LA s0, .CONSTANT.7.3
  CALL my_sqrt
  FLW ft0, 0(s0)
  FMUL.S fa0, ft0, fa0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
my_pow:   # loop depth 0
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs0, 16(sp)
  BLT a0, zero, bb39
  # implict jump to bb29
bb29:   # loop depth 0
  LA t0, .CONSTANT.7.5
  LA t1, .CONSTANT.7.5
  FLW ft0, 0(t0)
  FLW ft1, 0(t1)
  FSGNJ.S ft0, ft0, ft1
  BNE a0, zero, bb32
  # implict jump to bb30
bb30:   # loop depth 0
  FSGNJ.S fa0, ft0, ft0
  # implict jump to bb31
bb31:   # loop depth 0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb32:   # loop depth 0
  FSGNJ.S ft1, fa0, fa0
  # implict jump to bb33
bb33:   # loop depth 1
  FSGNJ.S fa0, ft0, ft0
  ANDI t0, a0, 1
  FMUL.S ft0, fa0, ft1
  BNE t0, zero, bb38
  # implict jump to bb34
bb34:   # loop depth 1
  # implict jump to bb35
bb35:   # loop depth 1
  FMUL.S ft1, ft1, ft1
  SRAIW t0, a0, 31
  SRLIW t0, t0, 31
  ADD t0, a0, t0
  SRAIW a0, t0, 1
  BNE a0, zero, bb37
  # implict jump to bb36
bb36:   # loop depth 0
  JAL zero, bb31
bb37:   # loop depth 1
  FSGNJ.S ft0, fa0, fa0
  JAL zero, bb33
bb38:   # loop depth 1
  FSGNJ.S fa0, ft0, ft0
  JAL zero, bb35
bb39:   # loop depth 0
  SUB a0, zero, a0
  ADDI s0, zero, 1
  FCVT.S.W fs0, s0
  CALL my_pow
  FDIV.S fa0, fs0, fa0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
main:   # loop depth 0
  ADDI sp, sp, -160
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
  CALL getint
  ADD s0, a0, zero
  BNE s0, zero, bb42
  # implict jump to bb41
bb41:   # loop depth 0
  ADD a0, zero, zero
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
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb42:   # loop depth 0
  ADDI s2, zero, 1
  LA s1, .CONSTANT.7.6
  FCVT.S.W fs1, s2
  LA s2, .CONSTANT.7.6
  FLW fs0, 0(s1)
  FCVT.S.L fs2, zero
  FSW fs2, 4(sp)
  FDIV.S fs9, fs1, fs1
  ADDI s3, zero, 6
  FLW fs2, 0(s2)
  ADDI s2, zero, 4
  ADDI s1, zero, 2
  FCVT.S.W fs8, s3
  FCVT.S.W fs7, s2
  FCVT.S.W fs6, s1
  FSGNJ.S fs4, fs0, fs2
  # implict jump to bb43
bb43:   # loop depth 1
  CALL getfloat
  FSGNJ.D fs2, fa0, fa0
  FLW fs0, 4(sp)
  FLT.S s1, fs0, fs2
  FSGNJN.S fs0, fs2, fs2
  CALL getfloat
  FSGNJ.D fs3, fa0, fa0
  BNE s1, zero, bb56
  # implict jump to bb44
bb44:   # loop depth 1
  # implict jump to bb45
bb45:   # loop depth 1
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  ADDI a0, zero, 32
  CALL putch
  FSGNJ.S fa0, fs2, fs2
  ADDI a0, zero, 2
  CALL my_pow
  CALL putfloat
  ADDI a0, zero, 32
  CALL putch
  FSGNJ.S fa0, fs2, fs2
  CALL my_sqrt
  CALL putfloat
  ADDI a0, zero, 32
  CALL putch
  FSGNJ.S fa0, fs2, fs2
  CALL my_exp
  CALL putfloat
  ADDI a0, zero, 32
  CALL putch
  BNE s1, zero, bb55
  # implict jump to bb46
bb46:   # loop depth 1
  ADDI a0, zero, 45
  CALL putch
  # implict jump to bb47
bb47:   # loop depth 1
  FLW fs0, 4(sp)
  FLT.S s2, fs0, fs3
  ADDI a0, zero, 32
  CALL putch
  AND a0, s1, s2
  BNE a0, zero, bb54
  # implict jump to bb48
bb48:   # loop depth 1
  ADDI a0, zero, 45
  CALL putch
  # implict jump to bb49
bb49:   # loop depth 1
  ADDI a0, zero, 32
  CALL putch
  BNE s1, zero, bb53
  # implict jump to bb50
bb50:   # loop depth 1
  ADDI a0, zero, 45
  CALL putch
  # implict jump to bb51
bb51:   # loop depth 1
  ADDI a0, zero, 10
  ADDIW s0, s0, -1
  CALL putch
  BNE s0, zero, bb52
  JAL zero, bb41
bb52:   # loop depth 1
  JAL zero, bb43
bb53:   # loop depth 1
  FSUB.S fa3, fs2, fs1
  ADDI a0, zero, 1
  FDIV.S fs10, fs1, fs2
  FSGNJ.S fa2, fs4, fs4
  FSGNJ.S fa1, fs2, fs2
  FSGNJ.S fa0, fs1, fs1
  FDIV.S fs0, fa3, fs6
  FADD.S fs0, fs1, fs0
  FDIV.S fs0, fs1, fs0
  FMUL.S fs0, fs7, fs0
  FADD.S fs0, fs9, fs0
  FADD.S fs0, fs0, fs10
  FMUL.S fa3, fs0, fa3
  FDIV.S fa3, fa3, fs8
  CALL asr5
  FMUL.S fa0, fs3, fa0
  CALL my_exp
  CALL putfloat
  JAL zero, bb51
bb54:   # loop depth 1
  FSUB.S fa3, fs3, fs1
  ADDI a0, zero, 1
  FSUB.S fa0, fs2, fs1
  FSW fa0, 16(sp)
  FDIV.S fs10, fs1, fs3
  FDIV.S fa0, fs1, fs2
  FSW fa0, 0(sp)
  FSGNJ.S fa2, fs4, fs4
  FDIV.S fs0, fa3, fs6
  FLW fa0, 16(sp)
  FDIV.S fa0, fa0, fs6
  FSW fa0, 20(sp)
  FSGNJ.S fa1, fs3, fs3
  FSGNJ.S fa0, fs1, fs1
  FADD.S fs0, fs1, fs0
  FLW fs5, 20(sp)
  FADD.S fs5, fs1, fs5
  FSW fs5, 24(sp)
  FDIV.S fs0, fs1, fs0
  FLW fs5, 24(sp)
  FDIV.S fs5, fs1, fs5
  FSW fs5, 28(sp)
  FMUL.S fs0, fs7, fs0
  FLW fs5, 28(sp)
  FMUL.S fs5, fs7, fs5
  FSW fs5, 12(sp)
  FADD.S fs0, fs9, fs0
  FLW fs5, 12(sp)
  FADD.S fs5, fs9, fs5
  FSW fs5, 8(sp)
  FADD.S fs0, fs0, fs10
  FLW fs5, 0(sp)
  FLW fs10, 8(sp)
  FADD.S fs10, fs10, fs5
  FMUL.S fa3, fs0, fa3
  FLW fs0, 16(sp)
  FMUL.S fs0, fs10, fs0
  FDIV.S fa3, fa3, fs8
  FDIV.S fs0, fs0, fs8
  CALL asr5
  FSGNJ.S fa3, fs0, fs0
  ADDI a0, zero, 1
  FSGNJ.S fa2, fs4, fs4
  FSGNJ.S fa1, fs2, fs2
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.S fa0, fs1, fs1
  CALL asr5
  FDIV.S fa0, fs0, fa0
  CALL putfloat
  JAL zero, bb49
bb55:   # loop depth 1
  FSUB.S fa3, fs2, fs1
  ADDI a0, zero, 1
  FDIV.S fs10, fs1, fs2
  FSGNJ.S fa2, fs4, fs4
  FSGNJ.S fa1, fs2, fs2
  FSGNJ.S fa0, fs1, fs1
  FDIV.S fs0, fa3, fs6
  FADD.S fs0, fs1, fs0
  FDIV.S fs0, fs1, fs0
  FMUL.S fs0, fs7, fs0
  FADD.S fs0, fs9, fs0
  FADD.S fs0, fs0, fs10
  FMUL.S fa3, fs0, fa3
  FDIV.S fa3, fa3, fs8
  CALL asr5
  CALL putfloat
  JAL zero, bb47
bb56:   # loop depth 1
  FSGNJ.S fs0, fs2, fs2
  JAL zero, bb45
