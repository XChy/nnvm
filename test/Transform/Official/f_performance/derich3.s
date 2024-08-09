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
  FSD fs7, 120(sp)
  FSD fs8, 128(sp)
  FSD fs9, 136(sp)
  FSD fs10, 144(sp)
  FSGNJ.D fs0, fa0, fa0
  LA s0, .CONSTANT.7.0
  ADDI s1, zero, 256
  FSGNJN.S fa0, fs0, fs0
  FCVT.S.W fs1, s1
  LA s1, .CONSTANT.7.0
  FLW fs2, 0(s0)
  LA s0, .CONSTANT.7.1
  FDIV.S fs3, fa0, fs1
  LA s2, .CONSTANT.7.1
  FLW fs4, 0(s1)
  LA s3, .CONSTANT.7.2
  FCVT.W.S s1, fa0, rtz
  LA s4, .CONSTANT.7.2
  FSGNJ.S fa0, fs2, fs4
  FLW fs2, 0(s0)
  ADD s0, a0, zero
  ADDI s5, zero, 1
  FMUL.S fs6, fa0, fs0
  FLW fs5, 0(s2)
  FSGNJN.S fs4, fa0, fa0
  FSGNJ.S fs2, fs2, fs5
  FLW fs9, 0(s3)
  FMUL.S fs8, fs4, fs0
  ADD a0, s1, zero
  FSUB.S fs4, fs0, fs2
  FLW fs10, 0(s4)
  FDIV.S fs7, fs6, fs1
  ADD s1, a1, zero
  FADD.S fs5, fs0, fs2
  ADD s6, a2, zero
  ADD s2, a3, zero
  ADD s3, a4, zero
  FDIV.S fs8, fs8, fs1
  ADD s4, a5, zero
  FCVT.S.W fs1, s5
  ADDI s5, zero, 0
  FSGNJ.S fs0, fs9, fs10
  CALL newPow
  FADD.S ft0, fs2, fs3
  FMUL.S ft0, ft0, ft0
  FMUL.S ft0, ft0, ft0
  FADD.S ft1, fs2, fs7
  FADD.S ft2, fs2, fs8
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
  FMUL.S ft1, ft1, ft1
  FMUL.S ft4, ft2, ft2
  FMUL.S ft2, fs6, ft0
  FMUL.S ft3, ft1, ft1
  FSUB.S ft1, fs2, ft0
  FMUL.S ft4, ft4, ft4
  FADD.S ft2, fs2, ft2
  FMUL.S ft3, ft3, ft3
  FMUL.S ft1, ft1, ft1
  FMUL.S ft4, ft4, ft4
  FSUB.S ft2, ft2, ft3
  FSGNJN.S fa1, ft4, ft4
  FDIV.S ft5, ft1, ft2
  FMUL.S ft0, ft5, ft0
  FSGNJN.S ft1, ft5, ft5
  FMUL.S ft7, ft1, ft4
  FMUL.S ft6, ft0, fs5
  FMUL.S fa2, ft0, fs4
  BLT s5, s0, bb42
  # implict jump to bb1
bb1:   # loop depth 0
  BLT s5, s0, bb35
  # implict jump to bb2
bb2:   # loop depth 0
  BLT s5, s0, bb28
  # implict jump to bb3
bb3:   # loop depth 0
  BLT zero, s1, bb21
  # implict jump to bb4
bb4:   # loop depth 0
  BLT zero, s1, bb14
  # implict jump to bb5
bb5:   # loop depth 0
  BLT s5, s0, bb7
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
  FLD fs9, 136(sp)
  FLD fs10, 144(sp)
  ADDI sp, sp, 160
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
  ADDI t2, zero, 1080
  ADD t0, zero, zero
  MULW t2, t1, t2
  ADD a0, s2, t2
  ADD a1, s3, t2
  ADD t2, s4, t2
  # implict jump to bb12
bb12:   # loop depth 2
  SLLIW a2, t0, 2
  ADDIW t0, t0, 1
  ADD a3, a1, a2
  ADD a4, t2, a2
  FLW ft0, 0(a3)
  ADD a2, a0, a2
  FLW ft1, 0(a4)
  FADD.S ft0, ft0, ft1
  FMUL.S ft0, fs1, ft0
  FSW ft0, 0(a2)
  BLT t0, s1, bb13
  JAL zero, bb9
bb13:   # loop depth 2
  JAL zero, bb12
bb14:   # loop depth 0
  ADDIW t0, s0, -1
  ADD t2, zero, zero
  SLT t1, t0, zero
  XORI a0, t1, 1
  # implict jump to bb15
bb15:   # loop depth 1
  BNE a0, zero, bb18
  # implict jump to bb16
bb16:   # loop depth 1
  ADDIW t2, t2, 1
  BLT t2, s1, bb17
  JAL zero, bb5
bb17:   # loop depth 1
  JAL zero, bb15
bb18:   # loop depth 1
  FSGNJ.S ft3, fs0, fs0
  SLLIW a1, t2, 2
  FSGNJ.S ft2, fs0, fs0
  ADD t1, t0, zero
  FSGNJ.S ft1, fs0, fs0
  FSGNJ.S ft0, fs0, fs0
  # implict jump to bb19
bb19:   # loop depth 2
  FSGNJ.S ft5, ft3, ft3
  ADDI a2, zero, 1080
  FMUL.S ft3, ft7, ft2
  MULW a2, t1, a2
  FMUL.S ft2, ft6, ft5
  ADDIW t1, t1, -1
  FSGNJ.S ft4, ft1, ft1
  SLT a4, t1, zero
  ADD a3, s4, a2
  FMUL.S ft1, fa0, ft4
  ADD a3, a3, a1
  FMUL.S fa2, fa1, ft0
  ADD a2, s2, a2
  FADD.S ft0, ft2, ft3
  ADD a2, a2, a1
  XORI a4, a4, 1
  FADD.S ft0, ft0, ft1
  FADD.S ft1, ft0, fa2
  FSW ft1, 0(a3)
  FLW ft3, 0(a2)
  BNE a4, zero, bb20
  JAL zero, bb16
bb20:   # loop depth 2
  FSGNJ.S ft2, ft5, ft5
  FSGNJ.S ft0, ft4, ft4
  JAL zero, bb19
bb21:   # loop depth 0
  ADD t1, zero, zero
  # implict jump to bb22
bb22:   # loop depth 1
  BLT s5, s0, bb25
  # implict jump to bb23
bb23:   # loop depth 1
  ADDIW t1, t1, 1
  BLT t1, s1, bb24
  JAL zero, bb4
bb24:   # loop depth 1
  JAL zero, bb22
bb25:   # loop depth 1
  FSGNJ.S ft2, fs0, fs0
  SLLIW t2, t1, 2
  FSGNJ.S ft1, fs0, fs0
  ADD t0, zero, zero
  FSGNJ.S ft0, fs0, fs0
  # implict jump to bb26
bb26:   # loop depth 2
  ADDI a0, zero, 1080
  MULW a0, t0, a0
  ADDIW t0, t0, 1
  FMUL.S ft3, fa2, ft0
  ADD a1, s2, a0
  FMUL.S ft4, fa0, ft1
  ADD a1, a1, t2
  FLW ft0, 0(a1)
  ADD a0, s3, a0
  FMUL.S ft2, fa1, ft2
  ADD a0, a0, t2
  FMUL.S ft0, ft5, ft0
  FADD.S ft0, ft0, ft3
  FADD.S ft0, ft0, ft4
  FADD.S ft3, ft0, ft2
  FSW ft3, 0(a0)
  FLW ft0, 0(a1)
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
  ADDI t2, zero, 1080
  ADD t0, zero, zero
  MULW t2, t1, t2
  ADD a0, s2, t2
  ADD a1, s3, t2
  ADD t2, s4, t2
  # implict jump to bb33
bb33:   # loop depth 2
  SLLIW a2, t0, 2
  ADDIW t0, t0, 1
  ADD a3, a1, a2
  ADD a4, t2, a2
  FLW ft0, 0(a3)
  ADD a2, a0, a2
  FLW ft1, 0(a4)
  FADD.S ft0, ft0, ft1
  FMUL.S ft0, fs1, ft0
  FSW ft0, 0(a2)
  BLT t0, s1, bb34
  JAL zero, bb30
bb34:   # loop depth 2
  JAL zero, bb33
bb35:   # loop depth 0
  ADDIW t0, s1, -1
  ADD t2, zero, zero
  SLT t1, t0, zero
  XORI a0, t1, 1
  # implict jump to bb36
bb36:   # loop depth 1
  BNE a0, zero, bb39
  # implict jump to bb37
bb37:   # loop depth 1
  ADDIW t2, t2, 1
  BLT t2, s0, bb38
  JAL zero, bb2
bb38:   # loop depth 1
  JAL zero, bb36
bb39:   # loop depth 1
  ADDI t1, zero, 1080
  FSGNJ.S ft3, fs0, fs0
  MULW a1, t2, t1
  FSGNJ.S ft2, fs0, fs0
  FSGNJ.S ft1, fs0, fs0
  ADD t1, t0, zero
  FSGNJ.S ft0, fs0, fs0
  ADD a2, s4, a1
  ADD a1, s6, a1
  # implict jump to bb40
bb40:   # loop depth 2
  FSGNJ.S fa3, ft3, ft3
  SLLIW a3, t1, 2
  FMUL.S ft3, ft7, ft2
  ADD a4, a2, a3
  FMUL.S ft2, ft6, fa3
  ADDIW t1, t1, -1
  FSGNJ.S ft4, ft1, ft1
  ADD a3, a1, a3
  SLT a5, t1, zero
  FMUL.S ft1, fa0, ft4
  XORI a5, a5, 1
  FMUL.S fa4, fa1, ft0
  FADD.S ft0, ft2, ft3
  FADD.S ft0, ft0, ft1
  FADD.S ft1, ft0, fa4
  FSW ft1, 0(a4)
  FLW ft3, 0(a3)
  BNE a5, zero, bb41
  JAL zero, bb37
bb41:   # loop depth 2
  FSGNJ.S ft2, fa3, fa3
  FSGNJ.S ft0, ft4, ft4
  JAL zero, bb40
bb42:   # loop depth 0
  ADDI a3, zero, 0
  ADD t1, zero, zero
  # implict jump to bb43
bb43:   # loop depth 1
  BLT a3, s1, bb46
  # implict jump to bb44
bb44:   # loop depth 1
  ADDIW t1, t1, 1
  BLT t1, s0, bb45
  JAL zero, bb1
bb45:   # loop depth 1
  JAL zero, bb43
bb46:   # loop depth 1
  ADDI t0, zero, 1080
  FSGNJ.S ft3, fs0, fs0
  MULW t2, t1, t0
  FSGNJ.S ft2, fs0, fs0
  FSGNJ.S ft0, fs0, fs0
  ADD t0, zero, zero
  ADD a0, s3, t2
  ADD t2, s6, t2
  # implict jump to bb47
bb47:   # loop depth 2
  SLLIW a1, t0, 2
  ADD a2, t2, a1
  FMUL.S ft2, fa2, ft2
  FLW ft1, 0(a2)
  FMUL.S ft4, fa0, ft0
  ADD a1, a0, a1
  FMUL.S ft1, ft5, ft1
  ADDIW t0, t0, 1
  FMUL.S ft3, fa1, ft3
  FADD.S ft1, ft1, ft2
  FADD.S ft1, ft1, ft4
  FADD.S ft1, ft1, ft3
  FSW ft1, 0(a1)
  FLW ft2, 0(a2)
  BLT t0, s1, bb48
  JAL zero, bb44
bb48:   # loop depth 2
  FSGNJ.S ft3, ft0, ft0
  FSGNJ.S ft0, ft1, ft1
  JAL zero, bb47
newPow:   # loop depth 0
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  FSD fs0, 24(sp)
  FSD fs1, 32(sp)
  LA s0, .CONSTANT.7.1
  LA s1, .CONSTANT.7.1
  FSGNJ.D fs0, fa0, fa0
  FLW fa0, 0(s0)
  FLW fs1, 0(s1)
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
  LD s1, 16(sp)
  FLD fs0, 24(sp)
  FLD fs1, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb54:   # loop depth 0
  FSGNJ.S fa0, fs1, fs1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  FLD fs0, 24(sp)
  FLD fs1, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb55:   # loop depth 0
  SUB a0, zero, a0
  FSGNJ.S fa0, fs0, fs0
  CALL newPow
  FDIV.S fa0, fs1, fa0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  FLD fs0, 24(sp)
  FLD fs1, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
main:   # loop depth 0
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s7, 8(sp)
  SD s8, 16(sp)
  SD s9, 24(sp)
  SD s10, 32(sp)
  FSD fs0, 40(sp)
  SD s0, 48(sp)
  SD s1, 56(sp)
  SD s2, 64(sp)
  SD s3, 72(sp)
  SD s4, 80(sp)
  SD s5, 88(sp)
  SD s6, 96(sp)
  LA a0, imgIn
  LA s0, w
  LA s1, h
  LA s2, .CONSTANT.7.3
  LA s3, .CONSTANT.7.3
  LA s4, imgIn
  LA s5, imgOut
  LA s6, my_y1
  LA s7, my_y2
  LA s8, w
  LA s9, h
  LA s10, imgOut
  CALL getfarray
  ADDI a0, zero, 156
  CALL _sysy_starttime
  LW a0, 0(s0)
  ADD a2, s4, zero
  ADD a3, s5, zero
  ADD a4, s6, zero
  ADD a5, s7, zero
  LW a1, 0(s1)
  FLW fa0, 0(s2)
  FLW fs0, 0(s3)
  FSGNJ.S fa0, fa0, fs0
  CALL kernel_deriche
  ADDI a0, zero, 158
  CALL _sysy_stoptime
  LW a0, 0(s8)
  ADD a1, s10, zero
  LW s0, 0(s9)
  MULW a0, a0, s0
  CALL putfarray
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s7, 8(sp)
  LD s8, 16(sp)
  LD s9, 24(sp)
  LD s10, 32(sp)
  FLD fs0, 40(sp)
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  LD s5, 88(sp)
  LD s6, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
