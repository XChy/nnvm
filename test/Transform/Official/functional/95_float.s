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
  ADDI sp, sp, -160
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  FSD fs0, 64(sp)
  FSD fs1, 72(sp)
  FSD fs2, 80(sp)
  FSD fs3, 88(sp)
  FSD fs4, 96(sp)
  FSD fs5, 104(sp)
  FSD fs6, 112(sp)
  ADDI s0, zero, 0
  FCVT.S.W fs1, s0
  LA s0, .CONSTANT.7.0
  FLW fs2, 0(s0)
  FLT.S s0, fs2, fs1
  BNE s0, zero, bb59
  # implict jump to bb1
bb1:
  LA s0, .CONSTANT.7.0
  FLW fs2, 0(s0)
  LA s0, .CONSTANT.7.0
  FLW fs3, 0(s0)
  FSGNJ.S fs2, fs2, fs3
  # implict jump to bb2
bb2:
  LA s0, .CONSTANT.7.9
  FLW fs3, 0(s0)
  FLT.S s0, fs2, fs3
  BNE s0, zero, bb58
  # implict jump to bb3
bb3:
  ADD s0, zero, zero
  # implict jump to bb4
bb4:
  BNE s0, zero, bb57
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
  LA s0, .CONSTANT.7.7
  FLW fs2, 0(s0)
  FLT.S s0, fs2, fs1
  BNE s0, zero, bb56
  # implict jump to bb7
bb7:
  LA s0, .CONSTANT.7.7
  FLW fs2, 0(s0)
  LA s0, .CONSTANT.7.7
  FLW fs3, 0(s0)
  FSGNJ.S fs2, fs2, fs3
  # implict jump to bb8
bb8:
  LA s0, .CONSTANT.7.9
  FLW fs3, 0(s0)
  FLT.S s0, fs2, fs3
  BNE s0, zero, bb55
  # implict jump to bb9
bb9:
  ADD s0, zero, zero
  # implict jump to bb10
bb10:
  BNE s0, zero, bb54
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
  LA s0, .CONSTANT.7.2
  FLW fs2, 0(s0)
  FLT.S s0, fs2, fs1
  BNE s0, zero, bb53
  # implict jump to bb13
bb13:
  LA s0, .CONSTANT.7.2
  FLW fs2, 0(s0)
  LA s0, .CONSTANT.7.2
  FLW fs3, 0(s0)
  FSGNJ.S fs2, fs2, fs3
  # implict jump to bb14
bb14:
  LA s0, .CONSTANT.7.9
  FLW fs3, 0(s0)
  FLT.S s0, fs2, fs3
  BNE s0, zero, bb52
  # implict jump to bb15
bb15:
  ADD s0, zero, zero
  # implict jump to bb16
bb16:
  SLTU s0, zero, s0
  XORI s0, s0, 1
  BNE s0, zero, bb51
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
  LA s0, .CONSTANT.7.11
  FLW fs2, 0(s0)
  FCVT.W.S s0, fs2, rtz
  FCVT.S.W fs2, s0
  LA s1, .CONSTANT.7.6
  FLW fs3, 0(s1)
  FMUL.S fs3, fs3, fs2
  FMUL.S fs2, fs3, fs2
  MULW s0, s0, s0
  FCVT.S.W fs3, s0
  LA s0, .CONSTANT.7.6
  FLW fs4, 0(s0)
  FMUL.S fs3, fs3, fs4
  FADD.S fs2, fs2, fs3
  ADDI s0, zero, 2
  FCVT.S.W fs0, s0
  FDIV.S fs2, fs2, fs0
  ADDI s0, zero, 5
  FCVT.S.W fs3, s0
  LA s0, .CONSTANT.7.6
  FLW fs4, 0(s0)
  FMUL.S fs4, fs4, fs3
  FMUL.S fs3, fs4, fs3
  ADDI s0, zero, 25
  FCVT.S.W fs4, s0
  LA s0, .CONSTANT.7.6
  FLW fs5, 0(s0)
  FMUL.S fs4, fs4, fs5
  FADD.S fs3, fs3, fs4
  FDIV.S fs3, fs3, fs0
  FSUB.S fs2, fs2, fs3
  FLT.S s0, fs2, fs1
  BNE s0, zero, bb50
  # implict jump to bb19
bb19:
  FSGNJ.S fs3, fs2, fs2
  # implict jump to bb20
bb20:
  LA s0, .CONSTANT.7.9
  FLW fs2, 0(s0)
  FLT.S s0, fs3, fs2
  BNE s0, zero, bb49
  # implict jump to bb21
bb21:
  ADD s0, zero, zero
  # implict jump to bb22
bb22:
  SLTU s0, zero, s0
  XORI s0, s0, 1
  BNE s0, zero, bb48
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
  LA s0, .CONSTANT.7.12
  FLW fs2, 0(s0)
  FLT.S s0, fs2, fs1
  BNE s0, zero, bb47
  # implict jump to bb25
bb25:
  LA s0, .CONSTANT.7.12
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.12
  FLW fs2, 0(s0)
  FSGNJ.S fs1, fs1, fs2
  # implict jump to bb26
bb26:
  LA s0, .CONSTANT.7.9
  FLW fs2, 0(s0)
  FLT.S s0, fs1, fs2
  BNE s0, zero, bb46
  # implict jump to bb27
bb27:
  ADD s0, zero, zero
  # implict jump to bb28
bb28:
  BNE s0, zero, bb45
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
  LA s0, .CONSTANT.7.8
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.2
  FLW fs2, 0(s0)
  FEQ.S s0, fs1, fs2
  XORI s0, s0, 1
  BNE s0, zero, bb44
  # implict jump to bb31
bb31:
  LA s0, .CONSTANT.7.1
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.2
  FLW fs2, 0(s0)
  FEQ.S s0, fs1, fs2
  XORI s0, s0, 1
  XORI s0, s0, 1
  SLTU s0, zero, s0
  XORI s0, s0, 1
  BNE s0, zero, bb43
  # implict jump to bb32
bb32:
  LA s0, .CONSTANT.7.2
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.2
  FLW fs2, 0(s0)
  FEQ.S s0, fs1, fs2
  XORI s0, s0, 1
  BNE s0, zero, bb42
  # implict jump to bb33
bb33:
  ADD s0, zero, zero
  # implict jump to bb34
bb34:
  BNE s0, zero, bb41
  # implict jump to bb35
bb35:
  LA s0, .CONSTANT.7.3
  FLW fs1, 0(s0)
  LA s0, .CONSTANT.7.2
  FLW fs2, 0(s0)
  FEQ.S s0, fs1, fs2
  XORI s0, s0, 1
  BNE s0, zero, bb40
  # implict jump to bb36
bb36:
  LA s0, .CONSTANT.7.4
  FLW fs1, 0(s0)
  FSW fs1, 120(sp)
  FSW fs0, 124(sp)
  LA s0, .CONSTANT.7.2
  FLW fs1, 0(s0)
  FSW fs1, 128(sp)
  LA s0, .CONSTANT.7.2
  FLW fs1, 0(s0)
  FSW fs1, 132(sp)
  LA s0, .CONSTANT.7.2
  FLW fs1, 0(s0)
  FSW fs1, 136(sp)
  LA s0, .CONSTANT.7.2
  FLW fs1, 0(s0)
  FSW fs1, 140(sp)
  LA s0, .CONSTANT.7.2
  FLW fs1, 0(s0)
  FSW fs1, 144(sp)
  LA s0, .CONSTANT.7.2
  FLW fs1, 0(s0)
  FSW fs1, 148(sp)
  LA s0, .CONSTANT.7.2
  FLW fs1, 0(s0)
  FSW fs1, 152(sp)
  LA s0, .CONSTANT.7.2
  FLW fs1, 0(s0)
  FSW fs1, 156(sp)
  ADDI a0, sp, 120
  ADD a0, a0, zero
  CALL getfarray
  ADD s0, a0, zero
  LA s1, .CONSTANT.7.5
  FLW fs1, 0(s1)
  LA s1, .CONSTANT.7.5
  FLW fs2, 0(s1)
  FSGNJN.S fs1, fs1, fs2
  FSGNJN.S fs1, fs1, fs1
  ADDI s1, zero, 1
  ADD s2, zero, zero
  # implict jump to bb37
bb37:
  ADD s3, s2, zero
  ADD s4, s1, zero
  CALL getfloat
  FSGNJ.D fs2, fa0, fa0
  LA s5, .CONSTANT.7.6
  FLW fs3, 0(s5)
  FMUL.S fs3, fs3, fs2
  FMUL.S fs3, fs3, fs2
  FCVT.W.S s5, fs2, rtz
  FCVT.S.W fs4, s5
  LA s6, .CONSTANT.7.6
  FLW fs5, 0(s6)
  FMUL.S fs5, fs5, fs4
  FMUL.S fs4, fs5, fs4
  MULW s5, s5, s5
  FCVT.S.W fs5, s5
  LA s5, .CONSTANT.7.6
  FLW fs6, 0(s5)
  FMUL.S fs5, fs5, fs6
  FADD.S fs4, fs4, fs5
  FDIV.S fs4, fs4, fs0
  SLLIW s5, s3, 2
  ADDI t5, sp, 120
  ADD s5, t5, s5
  FLW fs5, 0(s5)
  FADD.S fs2, fs5, fs2
  FSW fs2, 0(s5)
  FSGNJ.S fa0, fs3, fs3
  CALL putfloat
  ADDI a0, zero, 32
  CALL putch
  FCVT.W.S s5, fs4, rtz
  ADD a0, s5, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  FCVT.S.W fs2, s4
  FMUL.S fs2, fs2, fs1
  FCVT.W.S s4, fs2, rtz
  ADDIW s3, s3, 1
  LUI s5, 244141
  ADDIW s5, s5, -1536
  SLT s5, s4, s5
  BNE s5, zero, bb39
  # implict jump to bb38
bb38:
  ADD a0, s0, zero
  ADDI a1, sp, 120
  ADD a1, a1, zero
  CALL putfarray
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  FLD fs0, 64(sp)
  FLD fs1, 72(sp)
  FLD fs2, 80(sp)
  FLD fs3, 88(sp)
  FLD fs4, 96(sp)
  FLD fs5, 104(sp)
  FLD fs6, 112(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb39:
  ADD s1, s4, zero
  ADD s2, s3, zero
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
  ADDI s0, zero, 1
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
  ADDI s1, zero, 1
  FCVT.S.W fs1, s1
  LA s1, .CONSTANT.7.10
  FLW fs2, 0(s1)
  FMUL.S fs1, fs1, fs2
  FDIV.S fs1, fs1, fs0
  FCVT.W.S s1, fs1, rtz
  ADD s0, s1, zero
  JAL zero, bb28
bb47:
  LA s0, .CONSTANT.7.12
  FLW fs2, 0(s0)
  LA s0, .CONSTANT.7.12
  FLW fs3, 0(s0)
  FSGNJN.S fs2, fs2, fs3
  FSGNJ.S fs1, fs2, fs2
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
  ADDI s1, zero, 1
  FCVT.S.W fs2, s1
  LA s1, .CONSTANT.7.10
  FLW fs3, 0(s1)
  FMUL.S fs2, fs2, fs3
  FDIV.S fs2, fs2, fs0
  FCVT.W.S s1, fs2, rtz
  ADD s0, s1, zero
  JAL zero, bb22
bb50:
  FSGNJN.S fs2, fs2, fs2
  FSGNJ.S fs3, fs2, fs2
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
  ADDI s1, zero, 1
  FCVT.S.W fs2, s1
  LA s1, .CONSTANT.7.10
  FLW fs3, 0(s1)
  FMUL.S fs2, fs2, fs3
  ADDI s1, zero, 2
  FCVT.S.W fs3, s1
  FDIV.S fs2, fs2, fs3
  FCVT.W.S s1, fs2, rtz
  ADD s0, s1, zero
  JAL zero, bb16
bb53:
  LA s0, .CONSTANT.7.2
  FLW fs3, 0(s0)
  LA s0, .CONSTANT.7.2
  FLW fs4, 0(s0)
  FSGNJN.S fs3, fs3, fs4
  FSGNJ.S fs2, fs3, fs3
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
  ADDI s1, zero, 1
  FCVT.S.W fs2, s1
  LA s1, .CONSTANT.7.10
  FLW fs3, 0(s1)
  FMUL.S fs2, fs2, fs3
  ADDI s1, zero, 2
  FCVT.S.W fs3, s1
  FDIV.S fs2, fs2, fs3
  FCVT.W.S s1, fs2, rtz
  ADD s0, s1, zero
  JAL zero, bb10
bb56:
  LA s0, .CONSTANT.7.7
  FLW fs3, 0(s0)
  LA s0, .CONSTANT.7.7
  FLW fs4, 0(s0)
  FSGNJN.S fs3, fs3, fs4
  FSGNJ.S fs2, fs3, fs3
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
  ADDI s1, zero, 1
  FCVT.S.W fs2, s1
  LA s1, .CONSTANT.7.10
  FLW fs3, 0(s1)
  FMUL.S fs2, fs2, fs3
  ADDI s1, zero, 2
  FCVT.S.W fs3, s1
  FDIV.S fs2, fs2, fs3
  FCVT.W.S s1, fs2, rtz
  ADD s0, s1, zero
  JAL zero, bb4
bb59:
  LA s0, .CONSTANT.7.0
  FLW fs3, 0(s0)
  LA s0, .CONSTANT.7.0
  FLW fs4, 0(s0)
  FSGNJN.S fs3, fs3, fs4
  FSGNJ.S fs2, fs3, fs3
  JAL zero, bb2
