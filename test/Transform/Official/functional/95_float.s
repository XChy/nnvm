.global main
.section .bss













.section .data
.CONSTANT.7.0:
.word 0x4700e814
.CONSTANT.7.1:
.word 0x40533333
.CONSTANT.7.2:
.word 0x00000000
.CONSTANT.7.3:
.word 0x3e99999a
.CONSTANT.7.4:
.word 0x3f800000
.CONSTANT.7.5:
.word 0x41200000
.CONSTANT.7.6:
.word 0x40490fdb
.CONSTANT.7.7:
.word 0x4271e715
.CONSTANT.7.8:
.word 0x3fc00000
.CONSTANT.7.9:
.word 0x358637bd
.CONSTANT.7.10:
.word 0x40000000
.CONSTANT.7.11:
.word 0x40b00000
.CONSTANT.7.12:
.word 0xc5716000
.section .text
main:
  ADDI sp, sp, -144
  FSD fs6, 0(sp)
  SD ra, 8(sp)
  SD s0, 16(sp)
  SD s1, 24(sp)
  SD s2, 32(sp)
  SD s3, 40(sp)
  SD s4, 48(sp)
  FSD fs0, 56(sp)
  FSD fs1, 64(sp)
  FSD fs2, 72(sp)
  FSD fs3, 80(sp)
  FSD fs4, 88(sp)
  FSD fs5, 96(sp)
  ADDI a0, zero, 0
  FCVT.S.W fs3, a0
  LA a0, .CONSTANT.7.0
  FLW fs0, 0(a0)
  FLT.S a0, fs0, fs3
  BNE a0, zero, bb59
  # implict jump to bb1
bb1:
  LA a0, .CONSTANT.7.0
  FLW fs0, 0(a0)
  LA a0, .CONSTANT.7.0
  FLW fs1, 0(a0)
  FSGNJ.S fs0, fs0, fs1
  # implict jump to bb2
bb2:
  LA a0, .CONSTANT.7.9
  FLW fs1, 0(a0)
  FLT.S a0, fs0, fs1
  ADDI s0, zero, 1
  FCVT.S.W fs1, s0
  ADDI s0, zero, 2
  FCVT.S.W fs2, s0
  BNE a0, zero, bb58
  # implict jump to bb3
bb3:
  ADD a0, zero, zero
  # implict jump to bb4
bb4:
  BNE a0, zero, bb57
  # implict jump to bb5
bb5:
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 107
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  # implict jump to bb6
bb6:
  LA a0, .CONSTANT.7.7
  FLW fs0, 0(a0)
  FLT.S a0, fs0, fs3
  BNE a0, zero, bb56
  # implict jump to bb7
bb7:
  LA a0, .CONSTANT.7.7
  FLW fs0, 0(a0)
  LA a0, .CONSTANT.7.7
  FLW fs4, 0(a0)
  FSGNJ.S fs0, fs0, fs4
  # implict jump to bb8
bb8:
  LA a0, .CONSTANT.7.9
  FLW fs4, 0(a0)
  FLT.S a0, fs0, fs4
  BNE a0, zero, bb55
  # implict jump to bb9
bb9:
  ADD a0, zero, zero
  # implict jump to bb10
bb10:
  BNE a0, zero, bb54
  # implict jump to bb11
bb11:
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 107
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  # implict jump to bb12
bb12:
  LA a0, .CONSTANT.7.2
  FLW fs0, 0(a0)
  FLT.S a0, fs0, fs3
  BNE a0, zero, bb53
  # implict jump to bb13
bb13:
  LA a0, .CONSTANT.7.2
  FLW fs0, 0(a0)
  LA a0, .CONSTANT.7.2
  FLW fs4, 0(a0)
  FSGNJ.S fs0, fs0, fs4
  # implict jump to bb14
bb14:
  LA a0, .CONSTANT.7.9
  FLW fs4, 0(a0)
  FLT.S a0, fs0, fs4
  BNE a0, zero, bb52
  # implict jump to bb15
bb15:
  ADD a0, zero, zero
  # implict jump to bb16
bb16:
  SLTU a0, zero, a0
  XORI a0, a0, 1
  BNE a0, zero, bb51
  # implict jump to bb17
bb17:
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 107
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  # implict jump to bb18
bb18:
  LA a0, .CONSTANT.7.11
  FLW fs0, 0(a0)
  FCVT.W.S a0, fs0, rtz
  FCVT.S.W fs0, a0
  LA s0, .CONSTANT.7.6
  FLW fs4, 0(s0)
  FMUL.S fs4, fs4, fs0
  FMUL.S fs0, fs4, fs0
  MULW a0, a0, a0
  FCVT.S.W fs4, a0
  LA a0, .CONSTANT.7.6
  FLW fs5, 0(a0)
  FMUL.S fs4, fs4, fs5
  FADD.S fs0, fs0, fs4
  FDIV.S fs0, fs0, fs2
  ADDI a0, zero, 5
  FCVT.S.W fs4, a0
  LA a0, .CONSTANT.7.6
  FLW fs5, 0(a0)
  FMUL.S fs5, fs5, fs4
  FMUL.S fs4, fs5, fs4
  ADDI a0, zero, 25
  FCVT.S.W fs5, a0
  LA a0, .CONSTANT.7.6
  FLW fs6, 0(a0)
  FMUL.S fs5, fs5, fs6
  FADD.S fs4, fs4, fs5
  FDIV.S fs4, fs4, fs2
  FSUB.S fs0, fs0, fs4
  FLT.S a0, fs0, fs3
  BNE a0, zero, bb50
  # implict jump to bb19
bb19:
  # implict jump to bb20
bb20:
  LA a0, .CONSTANT.7.9
  FLW fs4, 0(a0)
  FLT.S a0, fs0, fs4
  BNE a0, zero, bb49
  # implict jump to bb21
bb21:
  ADD a0, zero, zero
  # implict jump to bb22
bb22:
  SLTU a0, zero, a0
  XORI a0, a0, 1
  BNE a0, zero, bb48
  # implict jump to bb23
bb23:
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 107
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  # implict jump to bb24
bb24:
  LA a0, .CONSTANT.7.12
  FLW fs0, 0(a0)
  FLT.S a0, fs0, fs3
  BNE a0, zero, bb47
  # implict jump to bb25
bb25:
  LA a0, .CONSTANT.7.12
  FLW fs0, 0(a0)
  LA a0, .CONSTANT.7.12
  FLW fs3, 0(a0)
  FSGNJ.S fs0, fs0, fs3
  # implict jump to bb26
bb26:
  LA a0, .CONSTANT.7.9
  FLW fs3, 0(a0)
  FLT.S a0, fs0, fs3
  BNE a0, zero, bb46
  # implict jump to bb27
bb27:
  ADD a0, zero, zero
  # implict jump to bb28
bb28:
  BNE a0, zero, bb45
  # implict jump to bb29
bb29:
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 107
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  # implict jump to bb30
bb30:
  LA a0, .CONSTANT.7.8
  FLW fs0, 0(a0)
  LA a0, .CONSTANT.7.2
  FLW fs1, 0(a0)
  FEQ.S a0, fs0, fs1
  XORI a0, a0, 1
  BNE a0, zero, bb44
  # implict jump to bb31
bb31:
  LA a0, .CONSTANT.7.1
  FLW fs0, 0(a0)
  LA a0, .CONSTANT.7.2
  FLW fs1, 0(a0)
  FEQ.S a0, fs0, fs1
  XORI a0, a0, 1
  XORI a0, a0, 1
  SLTU a0, zero, a0
  XORI a0, a0, 1
  BNE a0, zero, bb43
  # implict jump to bb32
bb32:
  LA a0, .CONSTANT.7.2
  FLW fs0, 0(a0)
  LA a0, .CONSTANT.7.2
  FLW fs1, 0(a0)
  FEQ.S a0, fs0, fs1
  XORI a0, a0, 1
  BNE a0, zero, bb42
  # implict jump to bb33
bb33:
  ADD a0, zero, zero
  # implict jump to bb34
bb34:
  BNE a0, zero, bb41
  # implict jump to bb35
bb35:
  LA a0, .CONSTANT.7.3
  FLW fs0, 0(a0)
  LA a0, .CONSTANT.7.2
  FLW fs1, 0(a0)
  FEQ.S a0, fs0, fs1
  XORI a0, a0, 1
  BNE a0, zero, bb40
  # implict jump to bb36
bb36:
  LA a0, .CONSTANT.7.4
  FLW fs0, 0(a0)
  FSW fs0, 104(sp)
  FSW fs2, 108(sp)
  LA a0, .CONSTANT.7.2
  FLW fs0, 0(a0)
  FSW fs0, 112(sp)
  LA a0, .CONSTANT.7.2
  FLW fs0, 0(a0)
  FSW fs0, 116(sp)
  LA a0, .CONSTANT.7.2
  FLW fs0, 0(a0)
  FSW fs0, 120(sp)
  LA a0, .CONSTANT.7.2
  FLW fs0, 0(a0)
  FSW fs0, 124(sp)
  LA a0, .CONSTANT.7.2
  FLW fs0, 0(a0)
  FSW fs0, 128(sp)
  LA a0, .CONSTANT.7.2
  FLW fs0, 0(a0)
  FSW fs0, 132(sp)
  LA a0, .CONSTANT.7.2
  FLW fs0, 0(a0)
  FSW fs0, 136(sp)
  LA a0, .CONSTANT.7.2
  FLW fs0, 0(a0)
  FSW fs0, 140(sp)
  ADDI a0, sp, 104
  ADD a0, a0, zero
  CALL getfarray
  ADD s2, a0, zero
  LA s0, .CONSTANT.7.5
  FLW fs0, 0(s0)
  LA s0, .CONSTANT.7.5
  FLW fs1, 0(s0)
  FSGNJN.S fs0, fs0, fs1
  FSGNJN.S fs1, fs0, fs0
  ADDI s1, zero, 1
  ADD s0, zero, zero
  # implict jump to bb37
bb37:
  CALL getfloat
  LA s3, .CONSTANT.7.6
  FLW fs0, 0(s3)
  FMUL.S fs0, fs0, fa0
  FMUL.S fs0, fs0, fa0
  FCVT.W.S s3, fa0, rtz
  FCVT.S.W fs3, s3
  LA s4, .CONSTANT.7.6
  FLW fs4, 0(s4)
  FMUL.S fs4, fs4, fs3
  FMUL.S fs3, fs4, fs3
  MULW s3, s3, s3
  FCVT.S.W fs4, s3
  LA s3, .CONSTANT.7.6
  FLW fs5, 0(s3)
  FMUL.S fs4, fs4, fs5
  FADD.S fs3, fs3, fs4
  FDIV.S fs3, fs3, fs2
  SLLIW s3, s0, 2
  ADDI t6, sp, 104
  ADD s3, t6, s3
  FLW fs4, 0(s3)
  FADD.S fa0, fs4, fa0
  FSW fa0, 0(s3)
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  ADDI a0, zero, 32
  CALL putch
  FCVT.W.S a0, fs3, rtz
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  FCVT.S.W fs0, s1
  FMUL.S fs0, fs0, fs1
  FCVT.W.S s1, fs0, rtz
  ADDIW s0, s0, 1
  LUI s3, 244141
  ADDIW s3, s3, -1536
  SLT s3, s1, s3
  BNE s3, zero, bb39
  # implict jump to bb38
bb38:
  ADD a0, s2, zero
  ADDI a1, sp, 104
  ADD a1, a1, zero
  CALL putfarray
  ADD a0, zero, zero
  FLD fs6, 0(sp)
  LD ra, 8(sp)
  LD s0, 16(sp)
  LD s1, 24(sp)
  LD s2, 32(sp)
  LD s3, 40(sp)
  LD s4, 48(sp)
  FLD fs0, 56(sp)
  FLD fs1, 64(sp)
  FLD fs2, 72(sp)
  FLD fs3, 80(sp)
  FLD fs4, 88(sp)
  FLD fs5, 96(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb39:
  JAL zero, bb37
bb40:
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 107
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb36
bb41:
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
  JAL zero, bb35
bb42:
  ADDI a0, zero, 1
  JAL zero, bb34
bb43:
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 107
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb32
bb44:
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 107
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb31
bb45:
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
bb46:
  LA a0, .CONSTANT.7.10
  FLW fs0, 0(a0)
  FMUL.S fs0, fs1, fs0
  FDIV.S fs0, fs0, fs2
  FCVT.W.S a0, fs0, rtz
  JAL zero, bb28
bb47:
  LA a0, .CONSTANT.7.12
  FLW fs0, 0(a0)
  LA a0, .CONSTANT.7.12
  FLW fs3, 0(a0)
  FSGNJN.S fs0, fs0, fs3
  JAL zero, bb26
bb48:
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
bb49:
  LA a0, .CONSTANT.7.10
  FLW fs0, 0(a0)
  FMUL.S fs0, fs1, fs0
  FDIV.S fs0, fs0, fs2
  FCVT.W.S a0, fs0, rtz
  JAL zero, bb22
bb50:
  FSGNJN.S fs0, fs0, fs0
  JAL zero, bb20
bb51:
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
bb52:
  LA a0, .CONSTANT.7.10
  FLW fs0, 0(a0)
  FMUL.S fs0, fs1, fs0
  FDIV.S fs0, fs0, fs2
  FCVT.W.S a0, fs0, rtz
  JAL zero, bb16
bb53:
  LA a0, .CONSTANT.7.2
  FLW fs0, 0(a0)
  LA a0, .CONSTANT.7.2
  FLW fs4, 0(a0)
  FSGNJN.S fs0, fs0, fs4
  JAL zero, bb14
bb54:
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
bb55:
  LA a0, .CONSTANT.7.10
  FLW fs0, 0(a0)
  FMUL.S fs0, fs1, fs0
  FDIV.S fs0, fs0, fs2
  FCVT.W.S a0, fs0, rtz
  JAL zero, bb10
bb56:
  LA a0, .CONSTANT.7.7
  FLW fs0, 0(a0)
  LA a0, .CONSTANT.7.7
  FLW fs4, 0(a0)
  FSGNJN.S fs0, fs0, fs4
  JAL zero, bb8
bb57:
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
bb58:
  LA a0, .CONSTANT.7.10
  FLW fs0, 0(a0)
  FMUL.S fs0, fs1, fs0
  FDIV.S fs0, fs0, fs2
  FCVT.W.S a0, fs0, rtz
  JAL zero, bb4
bb59:
  LA a0, .CONSTANT.7.0
  FLW fs0, 0(a0)
  LA a0, .CONSTANT.7.0
  FLW fs1, 0(a0)
  FSGNJN.S fs0, fs0, fs1
  JAL zero, bb2
