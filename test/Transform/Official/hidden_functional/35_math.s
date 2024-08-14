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
  ADDI sp, sp, -32
  SD ra, 0(sp)
  FSD fs0, 8(sp)
  FSD fs1, 16(sp)
  ADDI t0, zero, 0
  FCVT.S.W ft0, t0
  FLT.S t0, fa0, ft0
  BNE t0, zero, bb2
  # implict jump to bb1
bb1:   # loop depth 0
  FCVT.W.S a0, fa0, rtz
  LA t0, .CONSTANT.7.0
  LA t1, .CONSTANT.7.0
  FLW ft1, 0(t0)
  FCVT.S.W ft0, a0
  FLW ft2, 0(t1)
  FSUB.S fs0, fa0, ft0
  FSGNJ.S fa0, ft1, ft2
  CALL my_pow
  FSGNJ.D fs1, fa0, fa0
  FSGNJ.S fa0, fs0, fs0
  CALL eee
  FMUL.S fa0, fs1, fa0
  LD ra, 0(sp)
  FLD fs0, 8(sp)
  FLD fs1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb2:   # loop depth 0
  FSGNJN.S fa0, fa0, fa0
  ADDI t0, zero, 1
  FCVT.S.W fs0, t0
  CALL my_exp
  FDIV.S fa0, fs0, fa0
  LD ra, 0(sp)
  FLD fs0, 8(sp)
  FLD fs1, 16(sp)
  ADDI sp, sp, 32
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
  FSD fs6, 72(sp)
  LA t0, .CONSTANT.7.1
  FSGNJ.D fs0, fa0, fa0
  ADDI t1, zero, 2
  FLW ft0, 0(t0)
  FCVT.S.W fs1, t1
  FLT.S t0, ft0, fs0
  BNE t0, zero, bb5
  # implict jump to bb4
bb4:   # loop depth 0
  FMUL.S fs2, fs0, fs0
  ADDI t0, zero, 6
  FSGNJ.S fa0, fs0, fs0
  ADDI a0, zero, 3
  FCVT.S.W fs3, t0
  ADDI t0, zero, 24
  FCVT.S.W fs6, t0
  ADDI s1, zero, 120
  ADDI s0, zero, 1
  CALL my_pow
  FDIV.S fs5, fs2, fs1
  ADDI a0, zero, 4
  FDIV.S fs2, fa0, fs3
  FSGNJ.S fa0, fs0, fs0
  FCVT.S.W fs4, s1
  FCVT.S.W fs1, s0
  CALL my_pow
  ADDI a0, zero, 5
  FDIV.S fs3, fa0, fs6
  FSGNJ.S fa0, fs0, fs0
  FADD.S fs0, fs1, fs0
  CALL my_pow
  FDIV.S ft1, fa0, fs4
  FADD.S ft0, fs0, fs5
  FADD.S ft0, ft0, fs2
  FADD.S ft0, ft0, fs3
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
  FLD fs6, 72(sp)
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
  FLD fs6, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
asr5:   # loop depth 0
  ADDI sp, sp, -160
  SD ra, 40(sp)
  SD s0, 48(sp)
  SD s1, 56(sp)
  SD s2, 64(sp)
  FSD fs0, 72(sp)
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
  FSGNJ.D fs8, fa1, fa1
  ADDI t0, zero, 2
  FSGNJ.D fs3, fa0, fa0
  ADDI a1, zero, 0
  FSUB.S ft0, fs8, fs3
  ADDI t2, zero, 6
  FCVT.S.W fs9, t0
  ADDI t1, zero, 4
  ADDI t0, zero, 1
  ADD s0, a0, zero
  FCVT.S.W fs5, a1
  XORI s2, s0, 2
  FCVT.S.W ft1, t2
  FSW ft1, 8(sp)
  XORI s1, s0, 1
  FDIV.S ft1, ft0, fs9
  SLTIU ra, s2, 1
  FCVT.S.W fs11, t1
  SLTIU ra, s1, 1
  FCVT.S.W fs10, t0
  FSW fa3, 24(sp)
  FSW fa2, 28(sp)
  FADD.S fs6, fs3, ft1
  FSUB.S fs7, fs6, fs3
  FMUL.S ft0, fs6, fs6
  FSW ft0, 12(sp)
  FDIV.S ft0, fs7, fs9
  FADD.S ft0, fs3, ft0
  BEQ s1, zero, bb21
  # implict jump to bb7
bb7:   # loop depth 0
  BEQ s2, zero, bb20
  # implict jump to bb8
bb8:   # loop depth 0
  FSGNJ.S fs4, fs5, fs5
  # implict jump to bb9
bb9:   # loop depth 0
  FSUB.S ft0, fs8, fs6
  FSW ft0, 16(sp)
  FLW ft0, 16(sp)
  FDIV.S ft0, ft0, fs9
  FADD.S ft0, fs6, ft0
  BEQ s1, zero, bb19
  # implict jump to bb10
bb10:   # loop depth 0
  BEQ s2, zero, bb18
  # implict jump to bb11
bb11:   # loop depth 0
  FSGNJ.S fs2, fs5, fs5
  # implict jump to bb12
bb12:   # loop depth 0
  FADD.S ft2, fs4, fs2
  FLW ft0, 24(sp)
  FSUB.S ft1, ft2, ft0
  FLT.S t0, fs5, ft1
  FSGNJN.S ft0, ft1, ft1
  BNE t0, zero, bb17
  # implict jump to bb13
bb13:   # loop depth 0
  # implict jump to bb14
bb14:   # loop depth 0
  ADDI t0, zero, 15
  FCVT.S.W ft3, t0
  FLW ft4, 28(sp)
  FMUL.S ft3, ft3, ft4
  FLE.S t0, ft0, ft3
  BNE t0, zero, bb16
  # implict jump to bb15
bb15:   # loop depth 0
  FLW ft0, 28(sp)
  FDIV.S fs0, ft0, fs9
  ADD a0, s0, zero
  FSGNJ.S fa3, fs4, fs4
  FSGNJ.S fa1, fs6, fs6
  FSGNJ.S fa0, fs3, fs3
  FSGNJ.S fa2, fs0, fs0
  CALL asr5
  FSGNJ.S fa3, fs2, fs2
  ADD a0, s0, zero
  FSGNJ.S fa2, fs0, fs0
  FSGNJ.S fa1, fs8, fs8
  FSGNJ.D fs0, fa0, fa0
  FSGNJ.S fa0, fs6, fs6
  CALL asr5
  FADD.S fa0, fs0, fa0
  LD ra, 40(sp)
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s2, 64(sp)
  FLD fs0, 72(sp)
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
  FDIV.S ft0, ft1, ft0
  FADD.S fa0, ft2, ft0
  LD ra, 40(sp)
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s2, 64(sp)
  FLD fs0, 72(sp)
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
  FSGNJ.S ft0, ft1, ft1
  JAL zero, bb14
bb18:   # loop depth 0
  FMUL.S ft1, ft0, ft0
  FLW ft0, 12(sp)
  FSUB.S fa0, fs10, ft0
  FMUL.S ft2, fs8, fs8
  FSUB.S fs2, fs10, ft1
  FSUB.S fs7, fs10, ft2
  CALL my_sqrt
  FSGNJ.D ft0, fa0, fa0
  FSGNJ.S fa0, fs2, fs2
  FDIV.S ft0, fs10, ft0
  FSW ft0, 4(sp)
  CALL my_sqrt
  FDIV.S ft0, fs10, fa0
  FSW ft0, 32(sp)
  FSGNJ.S fa0, fs7, fs7
  CALL my_sqrt
  FDIV.S ft1, fs10, fa0
  FLW ft0, 32(sp)
  FMUL.S ft0, fs11, ft0
  FLW ft2, 4(sp)
  FADD.S ft0, ft2, ft0
  FADD.S ft0, ft0, ft1
  FLW ft1, 16(sp)
  FMUL.S ft0, ft0, ft1
  FLW ft1, 8(sp)
  FDIV.S fs2, ft0, ft1
  JAL zero, bb12
bb19:   # loop depth 0
  FDIV.S ft1, fs10, ft0
  FDIV.S ft0, fs10, fs6
  FDIV.S ft2, fs10, fs8
  FMUL.S ft1, fs11, ft1
  FADD.S ft0, ft0, ft1
  FADD.S ft0, ft0, ft2
  FLW ft1, 16(sp)
  FMUL.S ft0, ft0, ft1
  FLW ft1, 8(sp)
  FDIV.S fs2, ft0, ft1
  JAL zero, bb12
bb20:   # loop depth 0
  FMUL.S ft1, fs3, fs3
  FMUL.S ft2, ft0, ft0
  FLW ft0, 12(sp)
  FSUB.S fs2, fs10, ft0
  FSUB.S fa0, fs10, ft1
  FSUB.S fs4, fs10, ft2
  CALL my_sqrt
  FSGNJ.D ft0, fa0, fa0
  FSGNJ.S fa0, fs4, fs4
  FDIV.S ft0, fs10, ft0
  FSW ft0, 0(sp)
  CALL my_sqrt
  FDIV.S ft0, fs10, fa0
  FSW ft0, 20(sp)
  FSGNJ.S fa0, fs2, fs2
  CALL my_sqrt
  FDIV.S ft1, fs10, fa0
  FLW ft0, 20(sp)
  FMUL.S ft0, fs11, ft0
  FLW ft2, 0(sp)
  FADD.S ft0, ft2, ft0
  FADD.S ft0, ft0, ft1
  FMUL.S ft0, ft0, fs7
  FLW ft1, 8(sp)
  FDIV.S fs4, ft0, ft1
  JAL zero, bb9
bb21:   # loop depth 0
  FDIV.S ft1, fs10, ft0
  FDIV.S ft0, fs10, fs3
  FDIV.S ft2, fs10, fs6
  FMUL.S ft1, fs11, ft1
  FADD.S ft0, ft0, ft1
  FADD.S ft0, ft0, ft2
  FMUL.S ft0, ft0, fs7
  FLW ft1, 8(sp)
  FDIV.S fs4, ft0, ft1
  JAL zero, bb9
my_sqrt:   # loop depth 0
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SD s0, 8(sp)
  ADDI t0, zero, 100
  FCVT.S.W ft0, t0
  FLT.S t0, ft0, fa0
  BNE t0, zero, bb27
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
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb26:   # loop depth 1
  JAL zero, bb24
bb27:   # loop depth 0
  FDIV.S fa0, fa0, ft0
  LA s0, .CONSTANT.7.3
  CALL my_sqrt
  FLW ft0, 0(s0)
  FMUL.S fa0, ft0, fa0
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
my_pow:   # loop depth 0
  ADDI sp, sp, -16
  SD ra, 0(sp)
  FSD fs0, 8(sp)
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
  # implict jump to bb31
bb31:   # loop depth 0
  FSGNJ.S fa0, ft0, ft0
  LD ra, 0(sp)
  FLD fs0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb32:   # loop depth 0
  # implict jump to bb33
bb33:   # loop depth 1
  ANDI t0, a0, 1
  FMUL.S ft1, ft0, fa0
  BNE t0, zero, bb38
  # implict jump to bb34
bb34:   # loop depth 1
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
  JAL zero, bb31
bb37:   # loop depth 1
  JAL zero, bb33
bb38:   # loop depth 1
  FSGNJ.S ft0, ft1, ft1
  JAL zero, bb35
bb39:   # loop depth 0
  SUB a0, zero, a0
  ADDI t0, zero, 1
  FCVT.S.W fs0, t0
  CALL my_pow
  FDIV.S fa0, fs0, fa0
  LD ra, 0(sp)
  FLD fs0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
main:   # loop depth 0
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s0, 16(sp)
  SD s1, 24(sp)
  FSD fs0, 32(sp)
  FSD fs1, 40(sp)
  FSD fs2, 48(sp)
  FSD fs3, 56(sp)
  FSD fs4, 64(sp)
  FSD fs5, 72(sp)
  FSD fs6, 80(sp)
  FSD fs7, 88(sp)
  FSD fs8, 96(sp)
  FSD fs9, 104(sp)
  CALL getint
  ADD s1, a0, zero
  BNE s1, zero, bb42
  # implict jump to bb41
bb41:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s0, 16(sp)
  LD s1, 24(sp)
  FLD fs0, 32(sp)
  FLD fs1, 40(sp)
  FLD fs2, 48(sp)
  FLD fs3, 56(sp)
  FLD fs4, 64(sp)
  FLD fs5, 72(sp)
  FLD fs6, 80(sp)
  FLD fs7, 88(sp)
  FLD fs8, 96(sp)
  FLD fs9, 104(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb42:   # loop depth 0
  ADDI t1, zero, 1
  LA t0, .CONSTANT.7.6
  FCVT.S.W fs0, t1
  LA t1, .CONSTANT.7.6
  FLW ft0, 0(t0)
  FCVT.S.L fs9, zero
  FDIV.S fs7, fs0, fs0
  ADDI t2, zero, 6
  FLW ft1, 0(t1)
  ADDI t1, zero, 4
  ADDI t0, zero, 2
  FCVT.S.W fs6, t2
  FCVT.S.W fs5, t1
  FCVT.S.W fs4, t0
  FSGNJ.S fs2, ft0, ft1
  # implict jump to bb43
bb43:   # loop depth 1
  CALL getfloat
  FSGNJ.D fs1, fa0, fa0
  FLT.S s0, fs9, fs1
  FSGNJN.S fs8, fs1, fs1
  CALL getfloat
  FSGNJ.D fs3, fa0, fa0
  BNE s0, zero, bb56
  # implict jump to bb44
bb44:   # loop depth 1
  # implict jump to bb45
bb45:   # loop depth 1
  FSGNJ.S fa0, fs8, fs8
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
  BNE s0, zero, bb55
  # implict jump to bb46
bb46:   # loop depth 1
  ADDI a0, zero, 45
  CALL putch
  # implict jump to bb47
bb47:   # loop depth 1
  FLT.S s2, fs9, fs3
  ADDI a0, zero, 32
  CALL putch
  AND t0, s0, s2
  BNE t0, zero, bb54
  # implict jump to bb48
bb48:   # loop depth 1
  ADDI a0, zero, 45
  CALL putch
  # implict jump to bb49
bb49:   # loop depth 1
  ADDI a0, zero, 32
  CALL putch
  BNE s0, zero, bb53
  # implict jump to bb50
bb50:   # loop depth 1
  ADDI a0, zero, 45
  CALL putch
  # implict jump to bb51
bb51:   # loop depth 1
  ADDI a0, zero, 10
  ADDIW s1, s1, -1
  CALL putch
  BNE s1, zero, bb52
  JAL zero, bb41
bb52:   # loop depth 1
  JAL zero, bb43
bb53:   # loop depth 1
  FSUB.S ft0, fs1, fs0
  ADDI a0, zero, 1
  FDIV.S ft2, fs0, fs1
  FSGNJ.S fa2, fs2, fs2
  FSGNJ.S fa1, fs1, fs1
  FSGNJ.S fa0, fs0, fs0
  FDIV.S ft1, ft0, fs4
  FADD.S ft1, fs0, ft1
  FDIV.S ft1, fs0, ft1
  FMUL.S ft1, fs5, ft1
  FADD.S ft1, fs7, ft1
  FADD.S ft1, ft1, ft2
  FMUL.S ft0, ft1, ft0
  FDIV.S fa3, ft0, fs6
  CALL asr5
  FMUL.S fa0, fs3, fa0
  CALL my_exp
  CALL putfloat
  JAL zero, bb51
bb54:   # loop depth 1
  FSUB.S ft0, fs3, fs0
  ADDI a0, zero, 1
  FSUB.S ft3, fs1, fs0
  FDIV.S ft2, fs0, fs3
  FDIV.S ft5, fs0, fs1
  FSGNJ.S fa2, fs2, fs2
  FDIV.S ft1, ft0, fs4
  FDIV.S ft4, ft3, fs4
  FSGNJ.S fa1, fs3, fs3
  FSGNJ.S fa0, fs0, fs0
  FADD.S ft1, fs0, ft1
  FADD.S ft4, fs0, ft4
  FDIV.S ft1, fs0, ft1
  FDIV.S ft4, fs0, ft4
  FMUL.S ft1, fs5, ft1
  FMUL.S ft4, fs5, ft4
  FADD.S ft1, fs7, ft1
  FADD.S ft4, fs7, ft4
  FADD.S ft1, ft1, ft2
  FADD.S ft2, ft4, ft5
  FMUL.S ft0, ft1, ft0
  FMUL.S ft1, ft2, ft3
  FDIV.S fa3, ft0, fs6
  FDIV.S fs8, ft1, fs6
  CALL asr5
  FSGNJ.S fa3, fs8, fs8
  ADDI a0, zero, 1
  FSGNJ.S fa2, fs2, fs2
  FSGNJ.S fa1, fs1, fs1
  FSGNJ.D fs8, fa0, fa0
  FSGNJ.S fa0, fs0, fs0
  CALL asr5
  FDIV.S fa0, fs8, fa0
  CALL putfloat
  JAL zero, bb49
bb55:   # loop depth 1
  FSUB.S ft0, fs1, fs0
  ADDI a0, zero, 1
  FDIV.S ft2, fs0, fs1
  FSGNJ.S fa2, fs2, fs2
  FSGNJ.S fa1, fs1, fs1
  FSGNJ.S fa0, fs0, fs0
  FDIV.S ft1, ft0, fs4
  FADD.S ft1, fs0, ft1
  FDIV.S ft1, fs0, ft1
  FMUL.S ft1, fs5, ft1
  FADD.S ft1, fs7, ft1
  FADD.S ft1, ft1, ft2
  FMUL.S ft0, ft1, ft0
  FDIV.S fa3, ft0, fs6
  CALL asr5
  CALL putfloat
  JAL zero, bb47
bb56:   # loop depth 1
  FSGNJ.S fs8, fs1, fs1
  JAL zero, bb45
