.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global newPow
.global main
.section .bss
my_y2:
.space 552960
imgOut:
.space 552960
my_y1:
.space 552960
imgIn:
.space 552960










.section .data




alpha:
.word 0x3e800000
h:
.word 0x0000010e
w:
.word 0x00000200
.CONSTANT.7.0:
.word 0x3f800000
.CONSTANT.7.1:
.word 0x3f000000
.CONSTANT.7.2:
.word 0x40000000
.CONSTANT.7.3:
.word 0x3e800000
.CONSTANT.7.4:
.word 0x00000000
.CONSTANT.7.5:
.word 0xbf400000
.CONSTANT.7.6:
.word 0x3fa00000
.section .text
newPow:   # loop depth 0
  ADDI sp, sp, -32
  SD ra, 0(sp)
  FSD fs0, 8(sp)
  FSD fs1, 16(sp)
  LA t0, .CONSTANT.7.0
  LA t1, .CONSTANT.7.0
  FSGNJ.D fs0, fa0, fa0
  FLW ft0, 0(t0)
  FLW ft1, 0(t1)
  FSGNJ.S fs1, ft0, ft1
  BLT a0, zero, bb6
  # implict jump to bb1
bb1:   # loop depth 0
  BEQ a0, zero, bb5
  # implict jump to bb2
bb2:   # loop depth 0
  BLT zero, a0, bb4
  # implict jump to bb3
bb3:   # loop depth 0
  unimp
bb4:   # loop depth 0
  FSGNJ.S fa0, fs0, fs0
  ADDIW a0, a0, -1
  CALL newPow
  FMUL.S fa0, fs0, fa0
  LD ra, 0(sp)
  FLD fs0, 8(sp)
  FLD fs1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb5:   # loop depth 0
  FSGNJ.S fa0, fs1, fs1
  LD ra, 0(sp)
  FLD fs0, 8(sp)
  FLD fs1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb6:   # loop depth 0
  FSGNJ.S fa0, fs0, fs0
  SUBW a0, zero, a0
  CALL newPow
  FDIV.S fa0, fs1, fa0
  LD ra, 0(sp)
  FLD fs0, 8(sp)
  FLD fs1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
main:   # loop depth 0
  ADDI sp, sp, -144
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  FSD fs0, 72(sp)
  FSD fs1, 80(sp)
  FSD fs2, 88(sp)
  FSD fs3, 96(sp)
  FSD fs4, 104(sp)
  FSD fs5, 112(sp)
  FSD fs6, 120(sp)
  FSD fs7, 128(sp)
  FSD fs8, 136(sp)
  LA t0, .CONSTANT.7.1
  LA t1, .CONSTANT.7.1
  LA t2, .CONSTANT.7.2
  LA a0, .CONSTANT.7.2
  FLW ft0, 0(t0)
  LA t0, .CONSTANT.7.3
  LA a1, .CONSTANT.7.3
  ADDI a2, zero, 256
  FLW ft1, 0(t1)
  FCVT.S.W ft2, a2
  LA t1, .CONSTANT.7.0
  LA a2, .CONSTANT.7.0
  FLW ft3, 0(t2)
  FSGNJ.S fs4, ft0, ft1
  LA t2, .CONSTANT.7.4
  LA a3, .CONSTANT.7.4
  FLW ft0, 0(a0)
  FDIV.S fs7, fs4, ft2
  LA s2, imgIn
  LA s5, w
  FLW ft1, 0(t0)
  FSGNJ.S fs3, ft3, ft0
  ADD a0, s2, zero
  LA s4, h
  FLW ft0, 0(a1)
  FSGNJN.S ft3, fs3, fs3
  LA s6, .CONSTANT.7.5
  LA s7, .CONSTANT.7.6
  FSGNJ.S ft0, ft1, ft0
  FLW ft4, 0(t1)
  ADDI t0, zero, 1
  LA s3, my_y1
  FSGNJN.S ft1, ft0, ft0
  FLW ft5, 0(a2)
  FMUL.S ft0, ft3, ft0
  FDIV.S fs6, ft1, ft2
  FLW fs0, 0(t2)
  FSGNJ.S fs2, ft4, ft5
  FCVT.W.S s0, ft1, rtz
  FLW fs5, 0(a3)
  FCVT.S.W fs1, t0
  FDIV.S fs8, ft0, ft2
  CALL getfarray
  ADDI a0, zero, 156
  FSGNJ.S fs0, fs0, fs5
  CALL _sysy_starttime
  LW s1, 0(s5)
  FSGNJ.S fa0, fs3, fs3
  ADD a0, s0, zero
  LW s0, 0(s4)
  FLW fs3, 0(s6)
  FLW fs5, 0(s7)
  CALL newPow
  FADD.S ft0, fs7, fs2
  FMUL.S ft1, ft0, ft0
  FADD.S ft0, fs6, fs2
  FMUL.S ft1, ft1, ft1
  FADD.S ft2, fs8, fs2
  FMUL.S ft0, ft0, ft0
  FMUL.S ft1, ft1, ft1
  FMUL.S ft2, ft2, ft2
  FMUL.S ft0, ft0, ft0
  FMUL.S ft1, ft1, ft1
  FMUL.S ft2, ft2, ft2
  FMUL.S ft0, ft0, ft0
  FMUL.S ft1, ft1, ft1
  FMUL.S ft2, ft2, ft2
  FMUL.S ft0, ft0, ft0
  FMUL.S ft1, ft1, ft1
  FMUL.S ft2, ft2, ft2
  FMUL.S ft0, ft0, ft0
  FMUL.S ft1, ft1, ft1
  FMUL.S ft2, ft2, ft2
  FMUL.S ft0, ft0, ft0
  FMUL.S ft3, ft1, ft1
  FMUL.S ft1, ft2, ft2
  FMUL.S ft0, ft0, ft0
  FMUL.S ft1, ft1, ft1
  FMUL.S ft0, ft0, ft0
  FMUL.S ft4, ft1, ft1
  FMUL.S ft2, ft0, fs4
  FSUB.S ft1, fs2, ft0
  FSGNJN.S ft5, ft4, ft4
  FADD.S ft2, ft2, fs2
  FMUL.S ft1, ft1, ft1
  FSUB.S ft2, ft2, ft3
  FDIV.S fa1, ft1, ft2
  FMUL.S ft0, fa1, ft0
  FSGNJN.S ft1, fa1, fa1
  FMUL.S ft6, ft1, ft4
  FMUL.S ft7, ft0, fs5
  FMUL.S fa2, ft0, fs3
  BLT zero, s1, bb49
  # implict jump to bb8
bb8:   # loop depth 0
  LA t2, my_y2
  BLT zero, s1, bb42
  # implict jump to bb9
bb9:   # loop depth 0
  LA s2, imgOut
  BLT zero, s1, bb35
  # implict jump to bb10
bb10:   # loop depth 0
  BLT zero, s0, bb28
  # implict jump to bb11
bb11:   # loop depth 0
  BLT zero, s0, bb21
  # implict jump to bb12
bb12:   # loop depth 0
  BLT zero, s1, bb14
  # implict jump to bb13
bb13:   # loop depth 0
  ADDI a0, zero, 158
  CALL _sysy_stoptime
  LW t0, 0(s5)
  ADD a1, s2, zero
  LW t1, 0(s4)
  MULW a0, t0, t1
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
  LD s7, 64(sp)
  FLD fs0, 72(sp)
  FLD fs1, 80(sp)
  FLD fs2, 88(sp)
  FLD fs3, 96(sp)
  FLD fs4, 104(sp)
  FLD fs5, 112(sp)
  FLD fs6, 120(sp)
  FLD fs7, 128(sp)
  FLD fs8, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb14:   # loop depth 0
  ADD t0, zero, zero
  ADD a0, zero, zero
  # implict jump to bb15
bb15:   # loop depth 1
  BLT zero, s0, bb18
  # implict jump to bb16
bb16:   # loop depth 1
  ADDIW a0, a0, 1080
  ADDIW t0, t0, 1
  BLT t0, s1, bb17
  JAL zero, bb13
bb17:   # loop depth 1
  JAL zero, bb15
bb18:   # loop depth 1
  ADD t1, zero, zero
  ADD a3, t2, a0
  ADD a2, s3, a0
  ADD a1, s2, a0
  # implict jump to bb19
bb19:   # loop depth 2
  SH2ADD a4, t1, a2
  SH2ADD a5, t1, a3
  FLW ft0, 0(a4)
  SH2ADD a4, t1, a1
  ADDIW t1, t1, 1
  FLW ft1, 0(a5)
  FADD.S ft0, ft0, ft1
  FMUL.S ft0, fs1, ft0
  FSW ft0, 0(a4)
  BLT t1, s0, bb20
  ADDIW a0, a0, 1080
  ADDIW t0, t0, 1
  BLT t0, s1, bb17
  JAL zero, bb13
bb20:   # loop depth 2
  JAL zero, bb19
bb21:   # loop depth 0
  ADD t1, zero, zero
  ADDIW a1, s1, -1
  # implict jump to bb22
bb22:   # loop depth 1
  BGE a1, zero, bb25
  # implict jump to bb23
bb23:   # loop depth 1
  ADDIW t1, t1, 1
  BLT t1, s0, bb24
  JAL zero, bb12
bb24:   # loop depth 1
  JAL zero, bb22
bb25:   # loop depth 1
  ADDI t0, zero, 1080
  FSGNJ.S ft0, fs0, fs0
  MULW t0, a1, t0
  FSGNJ.S ft1, fs0, fs0
  FSGNJ.S ft2, fs0, fs0
  ADD a0, a1, zero
  FSGNJ.S ft4, fs0, fs0
  SH2ADD a3, t1, s2
  SH2ADD a2, t1, t2
  # implict jump to bb26
bb26:   # loop depth 2
  FSGNJ.S ft3, ft4, ft4
  ADD a4, a2, t0
  FMUL.S ft4, ft7, ft3
  ADD a5, a3, t0
  FMUL.S fa1, ft6, ft2
  FSGNJ.S ft2, ft1, ft1
  ADDIW t0, t0, -1080
  ADDIW a0, a0, -1
  FMUL.S ft1, fa0, ft2
  FMUL.S fa2, ft5, ft0
  FADD.S ft0, ft4, fa1
  FADD.S ft0, ft0, ft1
  FADD.S ft1, ft0, fa2
  FSW ft1, 0(a4)
  FLW ft4, 0(a5)
  BGE a0, zero, bb27
  ADDIW t1, t1, 1
  BLT t1, s0, bb24
  JAL zero, bb12
bb27:   # loop depth 2
  FSGNJ.S ft0, ft2, ft2
  FSGNJ.S ft2, ft3, ft3
  JAL zero, bb26
bb28:   # loop depth 0
  ADD t1, zero, zero
  # implict jump to bb29
bb29:   # loop depth 1
  BLT zero, s1, bb32
  # implict jump to bb30
bb30:   # loop depth 1
  ADDIW t1, t1, 1
  BLT t1, s0, bb31
  JAL zero, bb11
bb31:   # loop depth 1
  JAL zero, bb29
bb32:   # loop depth 1
  FSGNJ.S ft0, fs0, fs0
  ADD a0, zero, zero
  FSGNJ.S ft1, fs0, fs0
  ADD t0, zero, zero
  FSGNJ.S ft2, fs0, fs0
  SH2ADD a2, t1, s2
  SH2ADD a1, t1, s3
  # implict jump to bb33
bb33:   # loop depth 2
  ADD a3, a2, t0
  FSGNJ.S ft4, ft1, ft1
  FLW ft3, 0(a3)
  FMUL.S ft1, fa2, ft0
  FMUL.S fa3, fa0, ft4
  ADD a3, a1, t0
  FMUL.S ft0, fa1, ft3
  ADDIW t0, t0, 1080
  ADDIW a0, a0, 1
  FMUL.S ft2, ft5, ft2
  FADD.S ft0, ft0, ft1
  FADD.S ft0, ft0, fa3
  FADD.S ft1, ft0, ft2
  FSW ft1, 0(a3)
  BLT a0, s1, bb34
  ADDIW t1, t1, 1
  BLT t1, s0, bb31
  JAL zero, bb11
bb34:   # loop depth 2
  FSGNJ.S ft0, ft3, ft3
  FSGNJ.S ft2, ft4, ft4
  JAL zero, bb33
bb35:   # loop depth 0
  ADD a0, zero, zero
  ADD t1, zero, zero
  # implict jump to bb36
bb36:   # loop depth 1
  BLT zero, s0, bb39
  # implict jump to bb37
bb37:   # loop depth 1
  ADDIW t1, t1, 1080
  ADDIW a0, a0, 1
  BLT a0, s1, bb38
  JAL zero, bb10
bb38:   # loop depth 1
  JAL zero, bb36
bb39:   # loop depth 1
  ADD t0, zero, zero
  ADD a3, t2, t1
  ADD a2, s3, t1
  ADD a1, s2, t1
  # implict jump to bb40
bb40:   # loop depth 2
  SH2ADD a4, t0, a2
  SH2ADD a5, t0, a3
  FLW ft0, 0(a4)
  SH2ADD a4, t0, a1
  ADDIW t0, t0, 1
  FLW ft1, 0(a5)
  FADD.S ft0, ft0, ft1
  FMUL.S ft0, fs1, ft0
  FSW ft0, 0(a4)
  BLT t0, s0, bb41
  ADDIW t1, t1, 1080
  ADDIW a0, a0, 1
  BLT a0, s1, bb38
  JAL zero, bb10
bb41:   # loop depth 2
  JAL zero, bb40
bb42:   # loop depth 0
  ADD a0, zero, zero
  ADD a1, zero, zero
  ADDIW t0, s0, -1
  # implict jump to bb43
bb43:   # loop depth 1
  BGE t0, zero, bb46
  # implict jump to bb44
bb44:   # loop depth 1
  ADDIW a1, a1, 1080
  ADDIW a0, a0, 1
  BLT a0, s1, bb45
  JAL zero, bb9
bb45:   # loop depth 1
  JAL zero, bb43
bb46:   # loop depth 1
  FSGNJ.S ft0, fs0, fs0
  ADD t1, t0, zero
  FSGNJ.S ft1, fs0, fs0
  ADD a3, s2, a1
  FSGNJ.S ft2, fs0, fs0
  ADD a2, t2, a1
  FSGNJ.S ft3, fs0, fs0
  # implict jump to bb47
bb47:   # loop depth 2
  SH2ADD a4, t1, a2
  FMUL.S ft4, ft7, ft3
  SH2ADD a5, t1, a3
  FMUL.S ft2, ft6, ft2
  ADDIW t1, t1, -1
  FMUL.S fa3, fa0, ft1
  FMUL.S fa4, ft5, ft0
  FADD.S ft0, ft4, ft2
  FADD.S ft0, ft0, fa3
  FADD.S ft2, ft0, fa4
  FSW ft2, 0(a4)
  FLW ft4, 0(a5)
  BGE t1, zero, bb48
  ADDIW a1, a1, 1080
  ADDIW a0, a0, 1
  BLT a0, s1, bb45
  JAL zero, bb9
bb48:   # loop depth 2
  FSGNJ.S ft0, ft1, ft1
  FSGNJ.S ft1, ft2, ft2
  FSGNJ.S ft2, ft3, ft3
  FSGNJ.S ft3, ft4, ft4
  JAL zero, bb47
bb49:   # loop depth 0
  ADD t1, zero, zero
  ADD t2, zero, zero
  # implict jump to bb50
bb50:   # loop depth 1
  BLT zero, s0, bb53
  # implict jump to bb51
bb51:   # loop depth 1
  ADDIW t2, t2, 1080
  ADDIW t1, t1, 1
  BLT t1, s1, bb52
  JAL zero, bb8
bb52:   # loop depth 1
  JAL zero, bb50
bb53:   # loop depth 1
  FSGNJ.S ft0, fs0, fs0
  ADD t0, zero, zero
  FSGNJ.S ft1, fs0, fs0
  ADD a1, s2, t2
  FSGNJ.S ft3, fs0, fs0
  ADD a0, s3, t2
  # implict jump to bb54
bb54:   # loop depth 2
  SH2ADD a2, t0, a1
  FSGNJ.S ft4, ft0, ft0
  FLW ft2, 0(a2)
  FMUL.S ft1, fa2, ft1
  FMUL.S fa3, fa0, ft4
  SH2ADD a2, t0, a0
  FMUL.S ft0, fa1, ft2
  ADDIW t0, t0, 1
  FMUL.S ft3, ft5, ft3
  FADD.S ft0, ft0, ft1
  FADD.S ft0, ft0, fa3
  FADD.S ft0, ft0, ft3
  FSW ft0, 0(a2)
  BLT t0, s0, bb55
  ADDIW t2, t2, 1080
  ADDIW t1, t1, 1
  BLT t1, s1, bb52
  JAL zero, bb8
bb55:   # loop depth 2
  FSGNJ.S ft1, ft2, ft2
  FSGNJ.S ft3, ft4, ft4
  JAL zero, bb54
