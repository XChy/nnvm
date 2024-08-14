.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global my_sin_impl
.global main
.section .bss


image:
.space 4194304




.section .data
height:
.word 0x00000000
width:
.word 0x00000000

.CONSTANT.7.0:
.word 0x358637bd
.CONSTANT.7.1:
.word 0x40400000
.CONSTANT.7.2:
.word 0x40c90fdb
.CONSTANT.7.3:
.word 0x40490fdb
.section .text
my_sin_impl:   # loop depth 0
  ADDI sp, sp, -32
  SD ra, 0(sp)
  FSD fs0, 8(sp)
  FSD fs1, 16(sp)
  ADDI t0, zero, 0
  FCVT.S.W ft1, t0
  FSGNJN.S ft0, fa0, fa0
  FLT.S t0, ft1, fa0
  BNE t0, zero, bb5
  # implict jump to bb1
bb1:   # loop depth 0
  # implict jump to bb2
bb2:   # loop depth 0
  LA t0, .CONSTANT.7.0
  FLW ft1, 0(t0)
  FLE.S t0, ft0, ft1
  BNE t0, zero, bb4
  # implict jump to bb3
bb3:   # loop depth 0
  LA t0, .CONSTANT.7.1
  ADDI t1, zero, 4
  FCVT.S.W fs1, t1
  ADDI t1, zero, 3
  FLW ft0, 0(t0)
  FCVT.S.W fs0, t1
  FDIV.S fa0, fa0, ft0
  CALL my_sin_impl
  FMUL.S ft1, fs1, fa0
  FMUL.S ft0, fs0, fa0
  FMUL.S ft1, ft1, fa0
  FMUL.S ft1, ft1, fa0
  FSUB.S fa0, ft0, ft1
  LD ra, 0(sp)
  FLD fs0, 8(sp)
  FLD fs1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb4:   # loop depth 0
  LD ra, 0(sp)
  FLD fs0, 8(sp)
  FLD fs1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb5:   # loop depth 0
  FSGNJ.S ft0, fa0, fa0
  JAL zero, bb2
main:   # loop depth 0
  ADDI sp, sp, -128
  SD ra, 0(sp)
  SD s5, 8(sp)
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
  FSD fs6, 104(sp)
  FSD fs7, 112(sp)
  CALL getfloat
  FSGNJ.D fs2, fa0, fa0
  CALL getch
  CALL getch
  XORI t0, a0, 80
  BNE t0, zero, bb56
  # implict jump to bb7
bb7:   # loop depth 0
  CALL getch
  XORI t0, a0, 50
  SLTU t0, zero, t0
  # implict jump to bb8
bb8:   # loop depth 0
  BNE t0, zero, bb55
  # implict jump to bb9
bb9:   # loop depth 0
  LA s0, width
  CALL getint
  LA s3, height
  SW a0, 0(s0)
  LA s0, width
  ADDI s2, zero, 1024
  ADDI s1, zero, 1024
  CALL getint
  SW a0, 0(s3)
  SLT t1, s2, a0
  LW t0, 0(s0)
  SLT t0, s1, t0
  OR t0, t0, t1
  BNE t0, zero, bb54
  # implict jump to bb10
bb10:   # loop depth 0
  CALL getint
  XORI t0, a0, 255
  SLTU t0, zero, t0
  # implict jump to bb11
bb11:   # loop depth 0
  BNE t0, zero, bb53
  # implict jump to bb12
bb12:   # loop depth 0
  LA t0, height
  LW t0, 0(t0)
  BLT zero, t0, bb46
  # implict jump to bb13
bb13:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb14
bb14:   # loop depth 0
  BLT t0, zero, bb45
  # implict jump to bb15
bb15:   # loop depth 0
  ADDI a0, zero, 80
  LA s0, width
  LA s1, height
  LA s2, height
  CALL putch
  ADDI a0, zero, 50
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  LW a0, 0(s0)
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LW a0, 0(s1)
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDI a0, zero, 255
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW t0, 0(s2)
  BLT zero, t0, bb17
  # implict jump to bb16
bb16:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s5, 8(sp)
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
  FLD fs6, 104(sp)
  FLD fs7, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb17:   # loop depth 0
  LA t0, .CONSTANT.7.2
  LA t1, .CONSTANT.7.2
  LA t2, .CONSTANT.7.3
  LA a0, .CONSTANT.7.3
  FLW ft0, 0(t0)
  ADDI t0, zero, 2
  FCVT.S.W ft2, t0
  ADD t0, zero, zero
  FLW ft1, 0(t1)
  FLW ft3, 0(t2)
  FSGNJ.S fs0, ft0, ft1
  FLW ft4, 0(a0)
  FDIV.S ft1, fs2, fs0
  FSGNJN.S ft0, fs0, fs0
  FLT.S t1, fs0, fs2
  FSGNJ.S fs4, ft3, ft4
  FLT.S t2, fs2, ft0
  FDIV.S ft2, fs4, ft2
  FSGNJN.S fs6, fs4, fs4
  OR s0, t1, t2
  FCVT.W.S t1, ft1, rtz
  FADD.S fs3, fs2, ft2
  FCVT.S.W ft1, t1
  FMUL.S ft1, ft1, fs0
  FDIV.S ft2, fs3, fs0
  FLT.S t2, fs3, ft0
  FLT.S t1, fs0, fs3
  FSUB.S fs5, fs2, ft1
  OR s1, t1, t2
  FCVT.W.S t1, ft2, rtz
  FCVT.S.W ft0, t1
  FMUL.S ft0, ft0, fs0
  FSUB.S fs7, fs3, ft0
  # implict jump to bb18
bb18:   # loop depth 1
  LA t1, width
  ADD s2, t0, zero
  LW t0, 0(t1)
  BLT zero, t0, bb21
  # implict jump to bb19
bb19:   # loop depth 1
  LA s3, height
  ADDI a0, zero, 10
  ADDIW s2, s2, 1
  CALL putch
  LW t0, 0(s3)
  BLT s2, t0, bb20
  JAL zero, bb16
bb20:   # loop depth 1
  ADD t0, s2, zero
  JAL zero, bb18
bb21:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb22
bb22:   # loop depth 2
  ADD s3, t0, zero
  BNE s0, zero, bb44
  # implict jump to bb23
bb23:   # loop depth 2
  FSGNJ.S ft1, fs2, fs2
  # implict jump to bb24
bb24:   # loop depth 2
  FSUB.S ft0, ft1, fs0
  FLT.S t0, fs4, ft1
  BNE t0, zero, bb43
  # implict jump to bb25
bb25:   # loop depth 2
  FSGNJ.S ft0, ft1, ft1
  # implict jump to bb26
bb26:   # loop depth 2
  FADD.S fa0, ft0, fs0
  FLT.S t0, ft0, fs6
  BNE t0, zero, bb42
  # implict jump to bb27
bb27:   # loop depth 2
  FSGNJ.S fa0, ft0, ft0
  # implict jump to bb28
bb28:   # loop depth 2
  CALL my_sin_impl
  FSGNJ.D fs1, fa0, fa0
  BNE s1, zero, bb41
  # implict jump to bb29
bb29:   # loop depth 2
  FSGNJ.S ft1, fs3, fs3
  # implict jump to bb30
bb30:   # loop depth 2
  FSUB.S ft0, ft1, fs0
  FLT.S t0, fs4, ft1
  BNE t0, zero, bb40
  # implict jump to bb31
bb31:   # loop depth 2
  FSGNJ.S ft0, ft1, ft1
  # implict jump to bb32
bb32:   # loop depth 2
  FADD.S fa0, ft0, fs0
  FLT.S t0, ft0, fs6
  BNE t0, zero, bb39
  # implict jump to bb33
bb33:   # loop depth 2
  FSGNJ.S fa0, ft0, ft0
  # implict jump to bb34
bb34:   # loop depth 2
  LA s4, width
  LA s5, height
  CALL my_sin_impl
  LW t0, 0(s4)
  LW t2, 0(s5)
  SRAIW t1, t0, 31
  SRLIW t1, t1, 31
  ADD t1, t0, t1
  SRAIW a0, t2, 31
  SRAIW t1, t1, 1
  SRLIW a1, a0, 31
  SUBW a0, s3, t1
  ADD a1, t2, a1
  FCVT.S.W ft0, a0
  SRAIW a0, a1, 1
  FCVT.S.W ft3, t1
  SUBW t1, s2, a0
  FMUL.S ft1, ft0, fa0
  FCVT.S.W ft2, t1
  FMUL.S ft4, ft0, fs1
  FMUL.S ft0, ft2, fs1
  FMUL.S ft2, ft2, fa0
  FCVT.S.W ft5, a0
  FSUB.S ft0, ft1, ft0
  FADD.S ft1, ft4, ft2
  FADD.S ft0, ft0, ft3
  FADD.S ft1, ft1, ft5
  FCVT.W.S t1, ft0, rtz
  FCVT.W.S a0, ft1, rtz
  SLT a2, t1, t0
  SLT a1, t1, zero
  XORI a2, a2, 1
  SLT a4, a0, t2
  SLT a3, a0, zero
  OR t2, a1, a2
  XORI a1, a4, 1
  OR t2, t2, a3
  OR t2, t2, a1
  BNE t2, zero, bb38
  # implict jump to bb35
bb35:   # loop depth 2
  MULW t0, a0, t0
  LA t2, image
  ADDW t0, t0, t1
  SH2ADD t0, t0, t2
  LW a0, 0(t0)
  # implict jump to bb36
bb36:   # loop depth 2
  LA s4, width
  ADDIW s3, s3, 1
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LW t0, 0(s4)
  BLT s3, t0, bb37
  JAL zero, bb19
bb37:   # loop depth 2
  ADD t0, s3, zero
  JAL zero, bb22
bb38:   # loop depth 2
  ADD a0, zero, zero
  JAL zero, bb36
bb39:   # loop depth 2
  JAL zero, bb34
bb40:   # loop depth 2
  JAL zero, bb32
bb41:   # loop depth 2
  FSGNJ.S ft1, fs7, fs7
  JAL zero, bb30
bb42:   # loop depth 2
  JAL zero, bb28
bb43:   # loop depth 2
  JAL zero, bb26
bb44:   # loop depth 2
  FSGNJ.S ft1, fs5, fs5
  JAL zero, bb24
bb45:   # loop depth 0
  ADDI a0, zero, -1
  LD ra, 0(sp)
  LD s5, 8(sp)
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
  FLD fs6, 104(sp)
  FLD fs7, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb46:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb47
bb47:   # loop depth 1
  LA t1, width
  ADD s0, t0, zero
  LW t0, 0(t1)
  BLT zero, t0, bb50
  # implict jump to bb48
bb48:   # loop depth 1
  LA t1, height
  ADDIW t0, s0, 1
  LW t1, 0(t1)
  BLT t0, t1, bb49
  JAL zero, bb13
bb49:   # loop depth 1
  JAL zero, bb47
bb50:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb51
bb51:   # loop depth 2
  LA t1, width
  LA s4, image
  ADD s1, t0, zero
  LA s5, width
  LW t0, 0(t1)
  ADDIW s3, s1, 1
  MULW s2, s0, t0
  CALL getint
  ADDW t0, s2, s1
  SH2ADD t0, t0, s4
  SW a0, 0(t0)
  LW t0, 0(s5)
  BLT s3, t0, bb52
  JAL zero, bb48
bb52:   # loop depth 2
  ADD t0, s3, zero
  JAL zero, bb51
bb53:   # loop depth 0
  ADDI t0, zero, -1
  JAL zero, bb14
bb54:   # loop depth 0
  ADDI t0, zero, 1
  JAL zero, bb11
bb55:   # loop depth 0
  ADDI t0, zero, -1
  JAL zero, bb14
bb56:   # loop depth 0
  ADDI t0, zero, 1
  JAL zero, bb8
