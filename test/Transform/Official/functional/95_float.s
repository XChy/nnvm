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
  ADDI sp, sp, -144
  FSD fs5, 0(sp)
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
  LA t0, .CONSTANT.7.0
  LA t1, .CONSTANT.7.0
  LA t2, .CONSTANT.7.1
  ADDI a0, zero, 0
  FLW ft0, 0(t0)
  FCVT.S.W fs3, a0
  LA a0, .CONSTANT.7.1
  FLW ft1, 0(t1)
  FLW ft2, 0(t2)
  FSGNJ.S ft0, ft0, ft1
  FLT.S t0, ft0, fs3
  FLW ft3, 0(a0)
  FSGNJN.S ft1, ft0, ft0
  FSGNJ.S fs2, ft2, ft3
  BNE t0, zero, bb56
  # implict jump to bb1
bb1:   # loop depth 0
  FSGNJ.S ft1, ft0, ft0
  # implict jump to bb2
bb2:   # loop depth 0
  LA t1, .CONSTANT.7.2
  ADDI t0, zero, 1
  FCVT.S.W ft0, t0
  ADDI t0, zero, 2
  FLW ft2, 0(t1)
  FCVT.S.W fs4, t0
  FMUL.S ft0, ft0, ft2
  FLT.S t0, ft1, fs2
  FDIV.S ft0, ft0, fs4
  FCVT.W.S s0, ft0, rtz
  BNE t0, zero, bb55
  # implict jump to bb3
bb3:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb4
bb4:   # loop depth 0
  BNE t0, zero, bb54
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
  LA t0, .CONSTANT.7.7
  LA t1, .CONSTANT.7.7
  FLW ft0, 0(t0)
  FLW ft1, 0(t1)
  FSGNJ.S ft0, ft0, ft1
  FLT.S t0, ft0, fs3
  FSGNJN.S ft1, ft0, ft0
  BNE t0, zero, bb53
  # implict jump to bb7
bb7:   # loop depth 0
  FSGNJ.S ft1, ft0, ft0
  # implict jump to bb8
bb8:   # loop depth 0
  FLT.S t0, ft1, fs2
  BNE t0, zero, bb52
  # implict jump to bb9
bb9:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb10
bb10:   # loop depth 0
  BNE t0, zero, bb51
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
  LA t0, .CONSTANT.7.8
  LA t1, .CONSTANT.7.8
  FLW ft0, 0(t0)
  FLW ft1, 0(t1)
  FSGNJ.S fs1, ft0, ft1
  FLT.S t0, fs1, fs3
  FSGNJN.S ft0, fs1, fs1
  BNE t0, zero, bb50
  # implict jump to bb13
bb13:   # loop depth 0
  FSGNJ.S ft0, fs1, fs1
  # implict jump to bb14
bb14:   # loop depth 0
  FLT.S t0, ft0, fs2
  BNE t0, zero, bb49
  # implict jump to bb15
bb15:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb16
bb16:   # loop depth 0
  SLTU t0, zero, t0
  BEQ t0, zero, bb48
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
  LA t0, .CONSTANT.7.10
  LA t1, .CONSTANT.7.10
  LA t2, .CONSTANT.7.11
  ADDI a0, zero, 5
  FLW ft2, 0(t0)
  FCVT.S.W ft1, a0
  ADDI t0, zero, 25
  FLW ft3, 0(t1)
  FCVT.S.W ft0, t0
  FLW ft4, 0(t2)
  FSGNJ.S fs0, ft2, ft3
  FCVT.W.S t0, ft4, rtz
  FMUL.S ft2, fs0, ft1
  FMUL.S ft4, ft0, fs0
  FCVT.S.W ft0, t0
  MULW t0, t0, t0
  FMUL.S ft3, ft2, ft1
  FMUL.S ft1, fs0, ft0
  FCVT.S.W ft2, t0
  FMUL.S ft2, ft2, fs0
  FADD.S ft3, ft3, ft4
  FMUL.S ft0, ft1, ft0
  FDIV.S ft1, ft3, fs4
  FADD.S ft0, ft0, ft2
  FDIV.S ft0, ft0, fs4
  FSUB.S ft0, ft0, ft1
  FLT.S t0, ft0, fs3
  FSGNJN.S ft1, ft0, ft0
  BNE t0, zero, bb47
  # implict jump to bb19
bb19:   # loop depth 0
  FSGNJ.S ft1, ft0, ft0
  # implict jump to bb20
bb20:   # loop depth 0
  FLT.S t0, ft1, fs2
  BNE t0, zero, bb46
  # implict jump to bb21
bb21:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb22
bb22:   # loop depth 0
  SLTU t0, zero, t0
  BEQ t0, zero, bb45
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
  LA t0, .CONSTANT.7.12
  LA t1, .CONSTANT.7.12
  FLW ft0, 0(t0)
  FLW ft1, 0(t1)
  FSGNJ.S ft0, ft0, ft1
  FLT.S t0, ft0, fs3
  FSGNJN.S ft1, ft0, ft0
  BNE t0, zero, bb44
  # implict jump to bb25
bb25:   # loop depth 0
  FSGNJ.S ft1, ft0, ft0
  # implict jump to bb26
bb26:   # loop depth 0
  FLT.S t0, ft1, fs2
  BNE t0, zero, bb43
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
  LA t0, .CONSTANT.7.9
  FLW ft0, 0(t0)
  FEQ.S t0, ft0, fs1
  BEQ t0, zero, bb41
  # implict jump to bb31
bb31:   # loop depth 0
  LA t0, .CONSTANT.7.3
  FLW ft0, 0(t0)
  FEQ.S t0, ft0, fs1
  XORI t0, t0, 1
  XORI t0, t0, 1
  SLTU t0, zero, t0
  BEQ t0, zero, bb40
  # implict jump to bb32
bb32:   # loop depth 0
  FEQ.S t0, fs1, fs1
  BEQ t0, zero, bb39
  # implict jump to bb33
bb33:   # loop depth 0
  LA t0, .CONSTANT.7.4
  FLW ft0, 0(t0)
  FEQ.S t0, ft0, fs1
  BEQ t0, zero, bb38
  # implict jump to bb34
bb34:   # loop depth 0
  LA t0, .CONSTANT.7.5
  LA s0, .CONSTANT.7.6
  ADDI a0, sp, 96
  ADD a0, a0, zero
  LA s3, .CONSTANT.7.6
  FLW ft0, 0(t0)
  ADD s1, zero, zero
  ADDI s2, zero, 1
  FSW ft0, 96(sp)
  FSW fs4, 100(sp)
  FSW fs1, 104(sp)
  FSW fs1, 108(sp)
  FSW fs1, 112(sp)
  FSW fs1, 116(sp)
  FSW fs1, 120(sp)
  FSW fs1, 124(sp)
  FSW fs1, 128(sp)
  FSW fs1, 132(sp)
  CALL getfarray
  FLW ft0, 0(s0)
  ADD s4, a0, zero
  FLW ft1, 0(s3)
  FSGNJN.S ft0, ft0, ft1
  FSGNJN.S fs5, ft0, ft0
  # implict jump to bb35
bb35:   # loop depth 1
  CALL getfloat
  SLLIW t0, s1, 2
  ADDI t1, sp, 96
  ADD t1, t1, t0
  FCVT.W.S t0, fa0, rtz
  FMUL.S ft0, fs0, fa0
  FLW ft1, 0(t1)
  FCVT.S.W ft4, s2
  LUI s0, 244141
  ADDIW s1, s1, 1
  FADD.S ft3, ft1, fa0
  ADDIW s0, s0, -1536
  FCVT.S.W ft1, t0
  MULW t0, t0, t0
  FMUL.S fa0, ft0, fa0
  FMUL.S ft0, fs0, ft1
  FCVT.S.W ft2, t0
  FMUL.S fs3, ft4, fs5
  FSW ft3, 0(t1)
  FMUL.S fs2, ft2, fs0
  FMUL.S fs1, ft0, ft1
  CALL putfloat
  FCVT.W.S s2, fs3, rtz
  ADDI a0, zero, 32
  CALL putch
  FADD.S ft0, fs1, fs2
  SLT s0, s2, s0
  FDIV.S ft0, ft0, fs4
  FCVT.W.S a0, ft0, rtz
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  BNE s0, zero, bb37
  # implict jump to bb36
bb36:   # loop depth 0
  ADDI a1, sp, 96
  ADD a1, a1, zero
  ADD a0, s4, zero
  CALL putfarray
  ADD a0, zero, zero
  FLD fs5, 0(sp)
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
  ADDI sp, sp, 144
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
  ADD t0, s0, zero
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
  ADD t0, s0, zero
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
  ADD t0, s0, zero
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
  ADD t0, s0, zero
  JAL zero, bb4
bb56:   # loop depth 0
  JAL zero, bb2
