.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global kernel_deriche
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
.word 0x40000000
.CONSTANT.7.1:
.word 0x3f800000
.CONSTANT.7.2:
.word 0x00000000
.CONSTANT.7.3:
.word 0x3e800000
.section .text
kernel_deriche:   # loop depth 0
  ADDI sp, sp, -144
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
  FSD fs7, 120(sp)
  FSD fs8, 128(sp)
  ADDI t2, zero, 256
  LA t0, .CONSTANT.7.0
  FSGNJ.D ft0, fa0, fa0
  LA t1, .CONSTANT.7.0
  FCVT.S.W ft2, t2
  FSGNJN.S ft1, ft0, ft0
  FLW ft3, 0(t0)
  LA t2, .CONSTANT.7.1
  FDIV.S fs4, ft1, ft2
  LA a6, .CONSTANT.7.1
  FLW ft4, 0(t1)
  LA t1, .CONSTANT.7.2
  FCVT.W.S t0, ft1, rtz
  LA a7, .CONSTANT.7.2
  FSGNJ.S fa0, ft3, ft4
  FLW ft3, 0(t2)
  ADDI t2, zero, 1
  ADD s1, a0, zero
  FMUL.S fs3, ft0, fa0
  FLW ft4, 0(a6)
  FSGNJN.S ft1, fa0, fa0
  FSGNJ.S fs2, ft3, ft4
  FLW ft3, 0(t1)
  FMUL.S ft1, ft1, ft0
  ADD a0, t0, zero
  FADD.S fs7, ft0, fs2
  FLW ft4, 0(a7)
  FDIV.S fs5, fs3, ft2
  ADD s4, a5, zero
  FSUB.S fs6, ft0, fs2
  ADD s3, a4, zero
  FCVT.S.W fs1, t2
  ADD s2, a3, zero
  FDIV.S fs8, ft1, ft2
  ADD s5, a2, zero
  FSGNJ.S fs0, ft3, ft4
  ADD s0, a1, zero
  ADDI s6, zero, 0
  CALL newPow
  FADD.S ft0, fs4, fs2
  FMUL.S ft0, ft0, ft0
  FADD.S ft1, fs5, fs2
  FMUL.S ft0, ft0, ft0
  FADD.S ft2, fs8, fs2
  FMUL.S ft1, ft1, ft1
  FMUL.S ft0, ft0, ft0
  FMUL.S ft2, ft2, ft2
  FMUL.S ft1, ft1, ft1
  FMUL.S ft0, ft0, ft0
  FMUL.S ft2, ft2, ft2
  FMUL.S ft1, ft1, ft1
  FMUL.S ft0, ft0, ft0
  FMUL.S ft2, ft2, ft2
  FMUL.S ft1, ft1, ft1
  FMUL.S ft0, ft0, ft0
  FMUL.S ft2, ft2, ft2
  FMUL.S ft1, ft1, ft1
  FMUL.S ft0, ft0, ft0
  FMUL.S ft2, ft2, ft2
  FMUL.S ft1, ft1, ft1
  FMUL.S ft0, ft0, ft0
  FMUL.S ft4, ft2, ft2
  FMUL.S ft3, ft1, ft1
  FMUL.S ft2, fs3, ft0
  FSUB.S ft1, fs2, ft0
  FMUL.S ft4, ft4, ft4
  FMUL.S ft3, ft3, ft3
  FADD.S ft2, ft2, fs2
  FMUL.S ft1, ft1, ft1
  FMUL.S ft4, ft4, ft4
  FSUB.S ft2, ft2, ft3
  FSGNJN.S ft6, ft4, ft4
  FDIV.S fa1, ft1, ft2
  FMUL.S ft0, fa1, ft0
  FSGNJN.S ft1, fa1, fa1
  FMUL.S ft5, ft1, ft4
  FMUL.S ft7, ft0, fs7
  FMUL.S fa2, ft0, fs6
  BLT s6, s1, bb42
  # implict jump to bb1
bb1:   # loop depth 0
  BLT s6, s1, bb35
  # implict jump to bb2
bb2:   # loop depth 0
  BLT s6, s1, bb28
  # implict jump to bb3
bb3:   # loop depth 0
  BLT zero, s0, bb21
  # implict jump to bb4
bb4:   # loop depth 0
  BLT zero, s0, bb14
  # implict jump to bb5
bb5:   # loop depth 0
  BLT s6, s1, bb7
  # implict jump to bb6
bb6:   # loop depth 0
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
  FLD fs7, 120(sp)
  FLD fs8, 128(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb7:   # loop depth 0
  ADD t0, zero, zero
  ADD t2, zero, zero
  # implict jump to bb8
bb8:   # loop depth 1
  BLT zero, s0, bb11
  # implict jump to bb9
bb9:   # loop depth 1
  ADDIW t2, t2, 1080
  ADDIW t0, t0, 1
  BLT t0, s1, bb10
  JAL zero, bb6
bb10:   # loop depth 1
  JAL zero, bb8
bb11:   # loop depth 1
  ADD t1, zero, zero
  ADD a2, s4, t2
  ADD a1, s3, t2
  ADD a0, s2, t2
  # implict jump to bb12
bb12:   # loop depth 2
  SH2ADD a3, t1, a1
  SH2ADD a4, t1, a2
  FLW ft0, 0(a3)
  SH2ADD a3, t1, a0
  ADDIW t1, t1, 1
  FLW ft1, 0(a4)
  FADD.S ft0, ft0, ft1
  FMUL.S ft0, fs1, ft0
  FSW ft0, 0(a3)
  BLT t1, s0, bb13
  JAL zero, bb9
bb13:   # loop depth 2
  JAL zero, bb12
bb14:   # loop depth 0
  ADD t0, zero, zero
  ADDIW t2, s1, -1
  # implict jump to bb15
bb15:   # loop depth 1
  BGE t2, zero, bb18
  # implict jump to bb16
bb16:   # loop depth 1
  ADDIW t0, t0, 1
  BLT t0, s0, bb17
  JAL zero, bb5
bb17:   # loop depth 1
  JAL zero, bb15
bb18:   # loop depth 1
  FSGNJ.S ft1, fs0, fs0
  ADD t1, t2, zero
  FSGNJ.S ft0, fs0, fs0
  SH2ADD a1, t0, s2
  FSGNJ.S ft2, fs0, fs0
  SH2ADD a0, t0, s4
  FSGNJ.S ft4, fs0, fs0
  # implict jump to bb19
bb19:   # loop depth 2
  FSGNJ.S ft3, ft4, ft4
  ADDI a2, zero, 1080
  FMUL.S ft4, ft7, ft3
  MULW a2, t1, a2
  FMUL.S ft2, ft5, ft2
  ADDIW t1, t1, -1
  ADD a3, a0, a2
  FMUL.S fa1, fa0, ft0
  ADD a2, a1, a2
  FMUL.S fa2, ft6, ft1
  FADD.S ft1, ft4, ft2
  FADD.S ft1, ft1, fa1
  FADD.S ft2, ft1, fa2
  FSW ft2, 0(a3)
  FLW ft4, 0(a2)
  BGE t1, zero, bb20
  JAL zero, bb16
bb20:   # loop depth 2
  FSGNJ.S ft1, ft0, ft0
  FSGNJ.S ft0, ft2, ft2
  FSGNJ.S ft2, ft3, ft3
  JAL zero, bb19
bb21:   # loop depth 0
  ADD t1, zero, zero
  # implict jump to bb22
bb22:   # loop depth 1
  BLT s6, s1, bb25
  # implict jump to bb23
bb23:   # loop depth 1
  ADDIW t1, t1, 1
  BLT t1, s0, bb24
  JAL zero, bb4
bb24:   # loop depth 1
  JAL zero, bb22
bb25:   # loop depth 1
  FSGNJ.S ft0, fs0, fs0
  ADD t2, zero, zero
  FSGNJ.S ft1, fs0, fs0
  ADD t0, zero, zero
  FSGNJ.S ft2, fs0, fs0
  SH2ADD a1, t1, s2
  SH2ADD a0, t1, s3
  # implict jump to bb26
bb26:   # loop depth 2
  ADD a3, a1, t0
  FSGNJ.S ft3, ft1, ft1
  FLW ft1, 0(a3)
  FMUL.S ft4, fa2, ft0
  FMUL.S fa3, fa0, ft3
  ADD a2, a0, t0
  FMUL.S ft0, fa1, ft1
  ADDIW t0, t0, 1080
  ADDIW t2, t2, 1
  FMUL.S ft1, ft6, ft2
  FADD.S ft0, ft0, ft4
  FADD.S ft0, ft0, fa3
  FADD.S ft1, ft0, ft1
  FSW ft1, 0(a2)
  FLW ft0, 0(a3)
  BLT t2, s1, bb27
  JAL zero, bb23
bb27:   # loop depth 2
  FSGNJ.S ft2, ft3, ft3
  JAL zero, bb26
bb28:   # loop depth 0
  ADD t2, zero, zero
  ADD t1, zero, zero
  # implict jump to bb29
bb29:   # loop depth 1
  BLT zero, s0, bb32
  # implict jump to bb30
bb30:   # loop depth 1
  ADDIW t1, t1, 1080
  ADDIW t2, t2, 1
  BLT t2, s1, bb31
  JAL zero, bb3
bb31:   # loop depth 1
  JAL zero, bb29
bb32:   # loop depth 1
  ADD t0, zero, zero
  ADD a2, s4, t1
  ADD a1, s3, t1
  ADD a0, s2, t1
  # implict jump to bb33
bb33:   # loop depth 2
  SH2ADD a3, t0, a1
  SH2ADD a4, t0, a2
  FLW ft0, 0(a3)
  SH2ADD a3, t0, a0
  ADDIW t0, t0, 1
  FLW ft1, 0(a4)
  FADD.S ft0, ft0, ft1
  FMUL.S ft0, fs1, ft0
  FSW ft0, 0(a3)
  BLT t0, s0, bb34
  JAL zero, bb30
bb34:   # loop depth 2
  JAL zero, bb33
bb35:   # loop depth 0
  ADD t2, zero, zero
  ADD a0, zero, zero
  ADDIW t0, s0, -1
  # implict jump to bb36
bb36:   # loop depth 1
  BGE t0, zero, bb39
  # implict jump to bb37
bb37:   # loop depth 1
  ADDIW a0, a0, 1080
  ADDIW t2, t2, 1
  BLT t2, s1, bb38
  JAL zero, bb2
bb38:   # loop depth 1
  JAL zero, bb36
bb39:   # loop depth 1
  FSGNJ.S ft0, fs0, fs0
  ADD t1, t0, zero
  FSGNJ.S ft1, fs0, fs0
  ADD a2, s5, a0
  FSGNJ.S ft2, fs0, fs0
  ADD a1, s4, a0
  FSGNJ.S ft3, fs0, fs0
  # implict jump to bb40
bb40:   # loop depth 2
  SH2ADD a3, t1, a1
  FMUL.S ft4, ft7, ft3
  SH2ADD a4, t1, a2
  FMUL.S ft2, ft5, ft2
  ADDIW t1, t1, -1
  FMUL.S fa3, fa0, ft1
  FMUL.S fa4, ft6, ft0
  FADD.S ft0, ft4, ft2
  FADD.S ft0, ft0, fa3
  FADD.S ft2, ft0, fa4
  FSW ft2, 0(a3)
  FLW ft4, 0(a4)
  BGE t1, zero, bb41
  JAL zero, bb37
bb41:   # loop depth 2
  FSGNJ.S ft0, ft1, ft1
  FSGNJ.S ft1, ft2, ft2
  FSGNJ.S ft2, ft3, ft3
  FSGNJ.S ft3, ft4, ft4
  JAL zero, bb40
bb42:   # loop depth 0
  ADD t1, zero, zero
  ADD t2, zero, zero
  ADDI a4, zero, 0
  # implict jump to bb43
bb43:   # loop depth 1
  BLT a4, s0, bb46
  # implict jump to bb44
bb44:   # loop depth 1
  ADDIW t2, t2, 1080
  ADDIW t1, t1, 1
  BLT t1, s1, bb45
  JAL zero, bb1
bb45:   # loop depth 1
  JAL zero, bb43
bb46:   # loop depth 1
  FSGNJ.S ft0, fs0, fs0
  ADD t0, zero, zero
  FSGNJ.S ft1, fs0, fs0
  ADD a1, s5, t2
  FSGNJ.S ft2, fs0, fs0
  ADD a0, s3, t2
  # implict jump to bb47
bb47:   # loop depth 2
  SH2ADD a3, t0, a1
  FSGNJ.S ft3, ft0, ft0
  FLW ft0, 0(a3)
  FMUL.S ft1, fa2, ft1
  FMUL.S ft4, fa0, ft3
  SH2ADD a2, t0, a0
  FMUL.S ft0, fa1, ft0
  ADDIW t0, t0, 1
  FMUL.S ft2, ft6, ft2
  FADD.S ft0, ft0, ft1
  FADD.S ft0, ft0, ft4
  FADD.S ft0, ft0, ft2
  FSW ft0, 0(a2)
  FLW ft1, 0(a3)
  BLT t0, s0, bb48
  JAL zero, bb44
bb48:   # loop depth 2
  FSGNJ.S ft2, ft3, ft3
  JAL zero, bb47
newPow:   # loop depth 0
  ADDI sp, sp, -32
  SD ra, 0(sp)
  FSD fs0, 8(sp)
  FSD fs1, 16(sp)
  LA t0, .CONSTANT.7.1
  LA t1, .CONSTANT.7.1
  FSGNJ.D fs0, fa0, fa0
  FLW ft0, 0(t0)
  FLW ft1, 0(t1)
  FSGNJ.S fs1, ft0, ft1
  BLT a0, zero, bb55
  # implict jump to bb50
bb50:   # loop depth 0
  BEQ a0, zero, bb54
  # implict jump to bb51
bb51:   # loop depth 0
  BLT zero, a0, bb53
  # implict jump to bb52
bb52:   # loop depth 0
bb53:   # loop depth 0
  FSGNJ.S fa0, fs0, fs0
  ADDIW a0, a0, -1
  CALL newPow
  FMUL.S fa0, fs0, fa0
  LD ra, 0(sp)
  FLD fs0, 8(sp)
  FLD fs1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb54:   # loop depth 0
  FSGNJ.S fa0, fs1, fs1
  LD ra, 0(sp)
  FLD fs0, 8(sp)
  FLD fs1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb55:   # loop depth 0
  FSGNJ.S fa0, fs0, fs0
  SUB a0, zero, a0
  CALL newPow
  FDIV.S fa0, fs1, fa0
  LD ra, 0(sp)
  FLD fs0, 8(sp)
  FLD fs1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
main:   # loop depth 0
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  LA s1, imgIn
  LA s3, w
  LA s2, h
  LA s4, .CONSTANT.7.3
  ADD a0, s1, zero
  LA s5, .CONSTANT.7.3
  LA s7, my_y2
  LA s6, my_y1
  LA s0, imgOut
  CALL getfarray
  ADDI a0, zero, 156
  CALL _sysy_starttime
  LW a0, 0(s3)
  ADD a5, s7, zero
  ADD a4, s6, zero
  ADD a3, s0, zero
  ADD a2, s1, zero
  LW a1, 0(s2)
  FLW ft0, 0(s4)
  FLW ft1, 0(s5)
  FSGNJ.S fa0, ft0, ft1
  CALL kernel_deriche
  ADDI a0, zero, 158
  CALL _sysy_stoptime
  LW t0, 0(s3)
  ADD a1, s0, zero
  LW t1, 0(s2)
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
  ADDI sp, sp, 80
  JALR zero, 0(ra)
