.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss













.section .data
.CONSTANT.7.0:
.word 0x4700e814
.CONSTANT.7.1:
.word 0x358637bd
.CONSTANT.7.2:
.word 0x40000000
.CONSTANT.7.3:
.word 0x40533333
.CONSTANT.7.4:
.word 0x3e99999a
.CONSTANT.7.5:
.word 0x3f800000
.CONSTANT.7.6:
.word 0x41200000
.CONSTANT.7.7:
.word 0x4271e715
.CONSTANT.7.8:
.word 0x00000000
.CONSTANT.7.9:
.word 0x3fc00000
.CONSTANT.7.10:
.word 0x40490fdb
.CONSTANT.7.11:
.word 0x40b00000
.CONSTANT.7.12:
.word 0xc5716000
.section .text
main:   # loop depth 0
  ADDI sp, sp, -176
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
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
  LA a0, .CONSTANT.7.0
  LA s0, .CONSTANT.7.0
  LA s1, .CONSTANT.7.1
  ADDI s2, zero, 0
  FLW fs0, 0(a0)
  FCVT.S.W fs6, s2
  LA s2, .CONSTANT.7.1
  FLW fs1, 0(s0)
  FLW fs2, 0(s1)
  FSGNJ.S fs0, fs0, fs1
  FLT.S a0, fs0, fs6
  FLW fs3, 0(s2)
  FSGNJN.S fs1, fs0, fs0
  FSGNJ.S fs3, fs2, fs3
  BNE a0, zero, bb56
  # implict jump to bb1
bb1:   # loop depth 0
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb2
bb2:   # loop depth 0
  LA s0, .CONSTANT.7.2
  ADDI a0, zero, 1
  FCVT.S.W fs0, a0
  ADDI a0, zero, 2
  FLW fs2, 0(s0)
  FCVT.S.W fs4, a0
  FMUL.S fs0, fs0, fs2
  FLT.S a0, fs1, fs3
  FDIV.S fs0, fs0, fs4
  FCVT.W.S s0, fs0, rtz
  BNE a0, zero, bb55
  # implict jump to bb3
bb3:   # loop depth 0
  ADD a0, zero, zero
  # implict jump to bb4
bb4:   # loop depth 0
  BNE a0, zero, bb54
  # implict jump to bb5
bb5:   # loop depth 0
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 107
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  # implict jump to bb6
bb6:   # loop depth 0
  LA a0, .CONSTANT.7.7
  LA s1, .CONSTANT.7.7
  FLW fs0, 0(a0)
  FLW fs1, 0(s1)
  FSGNJ.S fs0, fs0, fs1
  FLT.S a0, fs0, fs6
  FSGNJN.S fs1, fs0, fs0
  BNE a0, zero, bb53
  # implict jump to bb7
bb7:   # loop depth 0
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb8
bb8:   # loop depth 0
  FLT.S a0, fs1, fs3
  BNE a0, zero, bb52
  # implict jump to bb9
bb9:   # loop depth 0
  ADD a0, zero, zero
  # implict jump to bb10
bb10:   # loop depth 0
  BNE a0, zero, bb51
  # implict jump to bb11
bb11:   # loop depth 0
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 107
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  # implict jump to bb12
bb12:   # loop depth 0
  LA a0, .CONSTANT.7.8
  LA s1, .CONSTANT.7.8
  FLW fs0, 0(a0)
  FLW fs1, 0(s1)
  FSGNJ.S fs2, fs0, fs1
  FLT.S a0, fs2, fs6
  FSGNJN.S fs0, fs2, fs2
  BNE a0, zero, bb50
  # implict jump to bb13
bb13:   # loop depth 0
  FSGNJ.S fs0, fs2, fs2
  # implict jump to bb14
bb14:   # loop depth 0
  FLT.S a0, fs0, fs3
  BNE a0, zero, bb49
  # implict jump to bb15
bb15:   # loop depth 0
  ADD a0, zero, zero
  # implict jump to bb16
bb16:   # loop depth 0
  SLTU a0, zero, a0
  XORI a0, a0, 1
  BNE a0, zero, bb48
  # implict jump to bb17
bb17:   # loop depth 0
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 107
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  # implict jump to bb18
bb18:   # loop depth 0
  LA a0, .CONSTANT.7.10
  LA s1, .CONSTANT.7.10
  LA s2, .CONSTANT.7.11
  ADDI s3, zero, 5
  FLW fs5, 0(a0)
  FCVT.S.W fs1, s3
  ADDI a0, zero, 25
  FLW fs7, 0(s1)
  FCVT.S.W fs0, a0
  FLW fs8, 0(s2)
  FSGNJ.S fs5, fs5, fs7
  FCVT.W.S a0, fs8, rtz
  FMUL.S fs7, fs5, fs1
  FMUL.S fs8, fs0, fs5
  FCVT.S.W fs0, a0
  MULW a0, a0, a0
  FMUL.S fs9, fs7, fs1
  FMUL.S fs1, fs5, fs0
  FCVT.S.W fs7, a0
  FMUL.S fs7, fs7, fs5
  FADD.S fs8, fs9, fs8
  FMUL.S fs0, fs1, fs0
  FDIV.S fs1, fs8, fs4
  FADD.S fs0, fs0, fs7
  FDIV.S fs0, fs0, fs4
  FSUB.S fs0, fs0, fs1
  FLT.S a0, fs0, fs6
  FSGNJN.S fs1, fs0, fs0
  BNE a0, zero, bb47
  # implict jump to bb19
bb19:   # loop depth 0
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb20
bb20:   # loop depth 0
  FLT.S a0, fs1, fs3
  BNE a0, zero, bb46
  # implict jump to bb21
bb21:   # loop depth 0
  ADD a0, zero, zero
  # implict jump to bb22
bb22:   # loop depth 0
  SLTU a0, zero, a0
  XORI a0, a0, 1
  BNE a0, zero, bb45
  # implict jump to bb23
bb23:   # loop depth 0
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 107
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  # implict jump to bb24
bb24:   # loop depth 0
  LA a0, .CONSTANT.7.12
  LA s1, .CONSTANT.7.12
  FLW fs0, 0(a0)
  FLW fs1, 0(s1)
  FSGNJ.S fs0, fs0, fs1
  FLT.S a0, fs0, fs6
  FSGNJN.S fs1, fs0, fs0
  BNE a0, zero, bb44
  # implict jump to bb25
bb25:   # loop depth 0
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb26
bb26:   # loop depth 0
  FLT.S a0, fs1, fs3
  BNE a0, zero, bb43
  # implict jump to bb27
bb27:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb28
bb28:   # loop depth 0
  BNE s0, zero, bb42
  # implict jump to bb29
bb29:   # loop depth 0
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 107
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  # implict jump to bb30
bb30:   # loop depth 0
  LA a0, .CONSTANT.7.9
  FLW fs0, 0(a0)
  FEQ.S a0, fs0, fs2
  XORI a0, a0, 1
  BNE a0, zero, bb41
  # implict jump to bb31
bb31:   # loop depth 0
  LA a0, .CONSTANT.7.3
  FLW fs0, 0(a0)
  FEQ.S a0, fs0, fs2
  XORI a0, a0, 1
  XORI a0, a0, 1
  SLTU a0, zero, a0
  XORI a0, a0, 1
  BNE a0, zero, bb40
  # implict jump to bb32
bb32:   # loop depth 0
  FEQ.S a0, fs2, fs2
  XORI a0, a0, 1
  BNE a0, zero, bb39
  # implict jump to bb33
bb33:   # loop depth 0
  LA a0, .CONSTANT.7.4
  FLW fs0, 0(a0)
  FEQ.S a0, fs0, fs2
  XORI a0, a0, 1
  BNE a0, zero, bb38
  # implict jump to bb34
bb34:   # loop depth 0
  LA s0, .CONSTANT.7.5
  LA s1, .CONSTANT.7.6
  ADDI a0, sp, 136
  ADD a0, a0, zero
  LA s3, .CONSTANT.7.6
  FLW fs0, 0(s0)
  ADD s0, zero, zero
  ADDI s2, zero, 1
  FSW fs0, 136(sp)
  FSW fs4, 140(sp)
  FSW fs2, 144(sp)
  FSW fs2, 148(sp)
  FSW fs2, 152(sp)
  FSW fs2, 156(sp)
  FSW fs2, 160(sp)
  FSW fs2, 164(sp)
  FSW fs2, 168(sp)
  FSW fs2, 172(sp)
  CALL getfarray
  FLW fs0, 0(s1)
  ADD s1, a0, zero
  FLW fs1, 0(s3)
  FSGNJN.S fs0, fs0, fs1
  FSGNJN.S fs0, fs0, fs0
  # implict jump to bb35
bb35:   # loop depth 1
  CALL getfloat
  SLLIW s3, s0, 2
  ADDI t6, sp, 136
  ADD s4, t6, s3
  FCVT.W.S s3, fa0, rtz
  FMUL.S fs1, fs5, fa0
  FLW fs2, 0(s4)
  FCVT.S.W fs7, s2
  LUI s5, 244141
  ADDIW s0, s0, 1
  FADD.S fs6, fs2, fa0
  ADDIW s5, s5, -1536
  FCVT.S.W fs2, s3
  MULW s2, s3, s3
  FMUL.S fa0, fs1, fa0
  FMUL.S fs1, fs5, fs2
  FCVT.S.W fs3, s2
  FMUL.S fs7, fs7, fs0
  FSW fs6, 0(s4)
  FMUL.S fs3, fs3, fs5
  FMUL.S fs1, fs1, fs2
  CALL putfloat
  FCVT.W.S s2, fs7, rtz
  ADDI a0, zero, 32
  CALL putch
  FADD.S fs1, fs1, fs3
  SLT s3, s2, s5
  FDIV.S fs1, fs1, fs4
  FCVT.W.S a0, fs1, rtz
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  BNE s3, zero, bb37
  # implict jump to bb36
bb36:   # loop depth 0
  ADDI a1, sp, 136
  ADD a1, a1, zero
  ADD a0, s1, zero
  CALL putfarray
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
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
  ADDI sp, sp, 176
  JALR zero, 0(ra)
bb37:   # loop depth 1
  JAL zero, bb35
bb38:   # loop depth 0
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 107
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb34
bb39:   # loop depth 0
  ADDI a0, zero, 101
  CALL putch
  ADDI a0, zero, 114
  CALL putch
  ADDI a0, zero, 114
  CALL putch
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 114
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb33
bb40:   # loop depth 0
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 107
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb32
bb41:   # loop depth 0
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 107
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb31
bb42:   # loop depth 0
  ADDI a0, zero, 101
  CALL putch
  ADDI a0, zero, 114
  CALL putch
  ADDI a0, zero, 114
  CALL putch
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 114
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb30
bb43:   # loop depth 0
  JAL zero, bb28
bb44:   # loop depth 0
  JAL zero, bb26
bb45:   # loop depth 0
  ADDI a0, zero, 101
  CALL putch
  ADDI a0, zero, 114
  CALL putch
  ADDI a0, zero, 114
  CALL putch
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 114
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb24
bb46:   # loop depth 0
  ADD a0, s0, zero
  JAL zero, bb22
bb47:   # loop depth 0
  JAL zero, bb20
bb48:   # loop depth 0
  ADDI a0, zero, 101
  CALL putch
  ADDI a0, zero, 114
  CALL putch
  ADDI a0, zero, 114
  CALL putch
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 114
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb18
bb49:   # loop depth 0
  ADD a0, s0, zero
  JAL zero, bb16
bb50:   # loop depth 0
  JAL zero, bb14
bb51:   # loop depth 0
  ADDI a0, zero, 101
  CALL putch
  ADDI a0, zero, 114
  CALL putch
  ADDI a0, zero, 114
  CALL putch
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 114
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb12
bb52:   # loop depth 0
  ADD a0, s0, zero
  JAL zero, bb10
bb53:   # loop depth 0
  JAL zero, bb8
bb54:   # loop depth 0
  ADDI a0, zero, 101
  CALL putch
  ADDI a0, zero, 114
  CALL putch
  ADDI a0, zero, 114
  CALL putch
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 114
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb6
bb55:   # loop depth 0
  ADD a0, s0, zero
  JAL zero, bb4
bb56:   # loop depth 0
  JAL zero, bb2
