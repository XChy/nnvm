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
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s5, a2, zero
  ADD s2, a3, zero
  ADD s3, a4, zero
  ADD s4, a5, zero
  LA a0, .CONSTANT.7.0
  FLW fs0, 0(a0)
  LA a0, .CONSTANT.7.0
  FLW fs1, 0(a0)
  FSGNJ.S fs5, fs0, fs1
  LA a0, .CONSTANT.7.1
  FLW fs0, 0(a0)
  LA a0, .CONSTANT.7.1
  FLW fs1, 0(a0)
  FSGNJ.S fs2, fs0, fs1
  LA a0, .CONSTANT.7.2
  FLW fs0, 0(a0)
  LA a0, .CONSTANT.7.2
  FLW fs1, 0(a0)
  FSGNJ.S fs0, fs0, fs1
  FSGNJN.S fs6, fa0, fa0
  ADDI a0, zero, 256
  FCVT.S.W fs7, a0
  FDIV.S fs1, fs6, fs7
  FADD.S fs1, fs2, fs1
  FMUL.S fs1, fs1, fs1
  FMUL.S fs1, fs1, fs1
  FMUL.S fs1, fs1, fs1
  FMUL.S fs1, fs1, fs1
  FMUL.S fs1, fs1, fs1
  FMUL.S fs1, fs1, fs1
  FMUL.S fs1, fs1, fs1
  FMUL.S fs1, fs1, fs1
  FSUB.S fs3, fs2, fs1
  FMUL.S fs3, fs3, fs3
  FMUL.S fs4, fs5, fa0
  FMUL.S fs8, fs4, fs1
  FADD.S fs8, fs2, fs8
  FDIV.S fs4, fs4, fs7
  FADD.S fs4, fs2, fs4
  FMUL.S fs4, fs4, fs4
  FMUL.S fs4, fs4, fs4
  FMUL.S fs4, fs4, fs4
  FMUL.S fs4, fs4, fs4
  FMUL.S fs4, fs4, fs4
  FMUL.S fs4, fs4, fs4
  FMUL.S fs4, fs4, fs4
  FMUL.S fs4, fs4, fs4
  FSUB.S fs4, fs8, fs4
  FDIV.S fs3, fs3, fs4
  FMUL.S fs1, fs3, fs1
  FSUB.S fs4, fa0, fs2
  FMUL.S fs4, fs1, fs4
  FADD.S fs8, fa0, fs2
  FMUL.S fs1, fs1, fs8
  FSGNJN.S fs8, fs3, fs3
  FSGNJN.S fs9, fs5, fs5
  FMUL.S fa0, fs9, fa0
  FDIV.S fa0, fa0, fs7
  FADD.S fa0, fs2, fa0
  FMUL.S fa0, fa0, fa0
  FMUL.S fa0, fa0, fa0
  FMUL.S fa0, fa0, fa0
  FMUL.S fa0, fa0, fa0
  FMUL.S fa0, fa0, fa0
  FMUL.S fa0, fa0, fa0
  FMUL.S fa0, fa0, fa0
  FMUL.S fs7, fa0, fa0
  FMUL.S fs2, fs8, fs7
  FCVT.W.S a0, fs6, rtz
  FSGNJ.S fa0, fs5, fs5
  CALL newPow
  FSGNJN.S ft6, fs7, fs7
  ADDI t0, zero, 1
  FCVT.S.W ft7, t0
  ADDI a0, zero, 0
  BLT a0, s0, bb42
  # implict jump to bb1
bb1:   # loop depth 0
  BLT a0, s0, bb35
  # implict jump to bb2
bb2:   # loop depth 0
  BLT a0, s0, bb28
  # implict jump to bb3
bb3:   # loop depth 0
  BLT zero, s1, bb21
  # implict jump to bb4
bb4:   # loop depth 0
  BLT zero, s1, bb14
  # implict jump to bb5
bb5:   # loop depth 0
  BLT a0, s0, bb7
  # implict jump to bb6
bb6:   # loop depth 0
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
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb7:   # loop depth 0
  ADD t1, zero, zero
  # implict jump to bb8
bb8:   # loop depth 1
  BLT zero, s1, bb11
  # implict jump to bb9
bb9:   # loop depth 1
  ADDIW t1, t1, 1
  BLT t1, s0, bb10
  JAL zero, bb6
bb10:   # loop depth 1
  JAL zero, bb8
bb11:   # loop depth 1
  ADDI t0, zero, 1080
  MULW t0, t1, t0
  ADD t2, s2, t0
  ADD a0, s3, t0
  ADD a1, s4, t0
  ADD t0, zero, zero
  # implict jump to bb12
bb12:   # loop depth 2
  SLLIW a2, t0, 2
  ADD a3, t2, a2
  ADD a4, a0, a2
  FLW ft0, 0(a4)
  ADD a2, a1, a2
  FLW ft1, 0(a2)
  FADD.S ft0, ft0, ft1
  FMUL.S ft0, ft7, ft0
  FSW ft0, 0(a3)
  ADDIW t0, t0, 1
  BLT t0, s1, bb13
  JAL zero, bb9
bb13:   # loop depth 2
  JAL zero, bb12
bb14:   # loop depth 0
  ADDIW t0, s0, -1
  SLT t1, t0, zero
  XORI a1, t1, 1
  ADD t2, zero, zero
  # implict jump to bb15
bb15:   # loop depth 1
  BNE a1, zero, bb18
  # implict jump to bb16
bb16:   # loop depth 1
  ADDIW t2, t2, 1
  BLT t2, s1, bb17
  JAL zero, bb5
bb17:   # loop depth 1
  JAL zero, bb15
bb18:   # loop depth 1
  SLLIW a2, t2, 2
  ADD t1, t0, zero
  FSGNJ.S ft3, fs0, fs0
  FSGNJ.S ft2, fs0, fs0
  FSGNJ.S ft1, fs0, fs0
  FSGNJ.S ft0, fs0, fs0
  # implict jump to bb19
bb19:   # loop depth 2
  FSGNJ.S ft4, ft1, ft1
  FSGNJ.S ft5, ft3, ft3
  ADDI a3, zero, 1080
  MULW a3, t1, a3
  ADD a4, s4, a3
  ADD a4, a4, a2
  FMUL.S ft1, fs1, ft5
  FMUL.S ft2, fs2, ft2
  FADD.S ft1, ft1, ft2
  FMUL.S ft2, fa0, ft4
  FADD.S ft1, ft1, ft2
  FMUL.S ft0, ft6, ft0
  FADD.S ft1, ft1, ft0
  FSW ft1, 0(a4)
  ADD a3, s2, a3
  ADD a3, a3, a2
  FLW ft3, 0(a3)
  ADDIW t1, t1, -1
  SLT a3, t1, zero
  XORI a3, a3, 1
  BNE a3, zero, bb20
  JAL zero, bb16
bb20:   # loop depth 2
  FSGNJ.S ft2, ft5, ft5
  FSGNJ.S ft0, ft4, ft4
  JAL zero, bb19
bb21:   # loop depth 0
  ADD t1, zero, zero
  # implict jump to bb22
bb22:   # loop depth 1
  BLT a0, s0, bb25
  # implict jump to bb23
bb23:   # loop depth 1
  ADDIW t1, t1, 1
  BLT t1, s1, bb24
  JAL zero, bb4
bb24:   # loop depth 1
  JAL zero, bb22
bb25:   # loop depth 1
  SLLIW t2, t1, 2
  ADD t0, zero, zero
  FSGNJ.S ft2, fs0, fs0
  FSGNJ.S ft1, fs0, fs0
  FSGNJ.S ft0, fs0, fs0
  # implict jump to bb26
bb26:   # loop depth 2
  ADDI a1, zero, 1080
  MULW a1, t0, a1
  ADD a2, s3, a1
  ADD a2, a2, t2
  ADD a1, s2, a1
  ADD a1, a1, t2
  FLW ft3, 0(a1)
  FMUL.S ft3, fs3, ft3
  FMUL.S ft0, fs4, ft0
  FADD.S ft0, ft3, ft0
  FMUL.S ft3, fa0, ft1
  FADD.S ft0, ft0, ft3
  FMUL.S ft2, ft6, ft2
  FADD.S ft3, ft0, ft2
  FSW ft3, 0(a2)
  FLW ft0, 0(a1)
  ADDIW t0, t0, 1
  BLT t0, s0, bb27
  JAL zero, bb23
bb27:   # loop depth 2
  FSGNJ.S ft2, ft1, ft1
  FSGNJ.S ft1, ft3, ft3
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
  JAL zero, bb3
bb31:   # loop depth 1
  JAL zero, bb29
bb32:   # loop depth 1
  ADDI t0, zero, 1080
  MULW t0, t1, t0
  ADD t2, s2, t0
  ADD a1, s3, t0
  ADD a2, s4, t0
  ADD t0, zero, zero
  # implict jump to bb33
bb33:   # loop depth 2
  SLLIW a3, t0, 2
  ADD a4, t2, a3
  ADD a5, a1, a3
  FLW ft0, 0(a5)
  ADD a3, a2, a3
  FLW ft1, 0(a3)
  FADD.S ft0, ft0, ft1
  FMUL.S ft0, ft7, ft0
  FSW ft0, 0(a4)
  ADDIW t0, t0, 1
  BLT t0, s1, bb34
  JAL zero, bb30
bb34:   # loop depth 2
  JAL zero, bb33
bb35:   # loop depth 0
  ADDIW t0, s1, -1
  SLT t1, t0, zero
  XORI a1, t1, 1
  ADD t2, zero, zero
  # implict jump to bb36
bb36:   # loop depth 1
  BNE a1, zero, bb39
  # implict jump to bb37
bb37:   # loop depth 1
  ADDIW t2, t2, 1
  BLT t2, s0, bb38
  JAL zero, bb2
bb38:   # loop depth 1
  JAL zero, bb36
bb39:   # loop depth 1
  ADDI t1, zero, 1080
  MULW t1, t2, t1
  ADD a2, s4, t1
  ADD a3, s5, t1
  ADD t1, t0, zero
  FSGNJ.S ft3, fs0, fs0
  FSGNJ.S ft2, fs0, fs0
  FSGNJ.S ft1, fs0, fs0
  FSGNJ.S ft0, fs0, fs0
  # implict jump to bb40
bb40:   # loop depth 2
  FSGNJ.S ft4, ft1, ft1
  FSGNJ.S ft5, ft3, ft3
  SLLIW a4, t1, 2
  ADD a5, a2, a4
  FMUL.S ft1, fs1, ft5
  FMUL.S ft2, fs2, ft2
  FADD.S ft1, ft1, ft2
  FMUL.S ft2, fa0, ft4
  FADD.S ft1, ft1, ft2
  FMUL.S ft0, ft6, ft0
  FADD.S ft1, ft1, ft0
  FSW ft1, 0(a5)
  ADD a4, a3, a4
  FLW ft3, 0(a4)
  ADDIW t1, t1, -1
  SLT a4, t1, zero
  XORI a4, a4, 1
  BNE a4, zero, bb41
  JAL zero, bb37
bb41:   # loop depth 2
  FSGNJ.S ft2, ft5, ft5
  FSGNJ.S ft0, ft4, ft4
  JAL zero, bb40
bb42:   # loop depth 0
  ADDI a4, zero, 0
  ADD t1, zero, zero
  # implict jump to bb43
bb43:   # loop depth 1
  BLT a4, s1, bb46
  # implict jump to bb44
bb44:   # loop depth 1
  ADDIW t1, t1, 1
  BLT t1, s0, bb45
  JAL zero, bb1
bb45:   # loop depth 1
  JAL zero, bb43
bb46:   # loop depth 1
  ADDI t0, zero, 1080
  MULW t0, t1, t0
  ADD t2, s3, t0
  ADD a1, s5, t0
  ADD t0, zero, zero
  FSGNJ.S ft3, fs0, fs0
  FSGNJ.S ft2, fs0, fs0
  FSGNJ.S ft0, fs0, fs0
  # implict jump to bb47
bb47:   # loop depth 2
  SLLIW a2, t0, 2
  ADD a3, t2, a2
  ADD a2, a1, a2
  FLW ft1, 0(a2)
  FMUL.S ft1, fs3, ft1
  FMUL.S ft2, fs4, ft2
  FADD.S ft1, ft1, ft2
  FMUL.S ft2, fa0, ft0
  FADD.S ft1, ft1, ft2
  FMUL.S ft2, ft6, ft3
  FADD.S ft1, ft1, ft2
  FSW ft1, 0(a3)
  FLW ft2, 0(a2)
  ADDIW t0, t0, 1
  BLT t0, s1, bb48
  JAL zero, bb44
bb48:   # loop depth 2
  FSGNJ.S ft3, ft0, ft0
  FSGNJ.S ft0, ft1, ft1
  JAL zero, bb47
newPow:   # loop depth 0
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs0, 16(sp)
  FSD fs1, 24(sp)
  FSGNJ.D fs0, fa0, fa0
  LA s0, .CONSTANT.7.1
  FLW fa0, 0(s0)
  LA s0, .CONSTANT.7.1
  FLW fs1, 0(s0)
  FSGNJ.S fs1, fa0, fs1
  BLT a0, zero, bb55
  # implict jump to bb50
bb50:   # loop depth 0
  SLTIU s0, a0, 1
  BNE s0, zero, bb54
  # implict jump to bb51
bb51:   # loop depth 0
  BLT zero, a0, bb53
  # implict jump to bb52
bb52:   # loop depth 0
bb53:   # loop depth 0
  ADDIW a0, a0, -1
  FSGNJ.S fa0, fs0, fs0
  CALL newPow
  FMUL.S fa0, fs0, fa0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb54:   # loop depth 0
  FSGNJ.S fa0, fs1, fs1
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb55:   # loop depth 0
  SUB a0, zero, a0
  FSGNJ.S fa0, fs0, fs0
  CALL newPow
  FDIV.S fa0, fs1, fa0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
main:   # loop depth 0
  ADDI sp, sp, -16
  SD ra, 0(sp)
  FSD fs0, 8(sp)
  LA a0, imgIn
  CALL getfarray
  ADDI a0, zero, 156
  CALL _sysy_starttime
  LA a0, w
  LW a0, 0(a0)
  LA a1, h
  LW a1, 0(a1)
  LA a2, .CONSTANT.7.3
  FLW fa0, 0(a2)
  LA a2, .CONSTANT.7.3
  FLW fs0, 0(a2)
  FSGNJ.S fa0, fa0, fs0
  LA a2, imgIn
  LA a3, imgOut
  LA a4, my_y1
  LA a5, my_y2
  CALL kernel_deriche
  ADDI a0, zero, 158
  CALL _sysy_stoptime
  LA a0, w
  LW a0, 0(a0)
  LA a1, h
  LW a1, 0(a1)
  MULW a0, a0, a1
  LA a1, imgOut
  CALL putfarray
  ADD a0, zero, zero
  LD ra, 0(sp)
  FLD fs0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
