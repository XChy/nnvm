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
.word 0x3f800000
.CONSTANT.7.1:
.word 0x40000000
.CONSTANT.7.2:
.word 0x00000000
.CONSTANT.7.3:
.word 0x3e800000
.section .text
kernel_deriche:
  ADDI sp, sp, -128
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
  ADD s0, a0, zero
  ADD s1, a1, zero
  FSGNJ.D fs2, fa0, fa0
  ADD s2, a2, zero
  ADD s3, a3, zero
  ADD s4, a4, zero
  ADD s5, a5, zero
  FSGNJN.S fa0, fs2, fs2
  ADDI a0, zero, 256
  FCVT.S.W fs0, a0
  FDIV.S fs1, fa0, fs0
  LA a0, .CONSTANT.7.0
  FLW fs3, 0(a0)
  FADD.S fs1, fs3, fs1
  FMUL.S fs1, fs1, fs1
  FMUL.S fs1, fs1, fs1
  FMUL.S fs1, fs1, fs1
  FMUL.S fs1, fs1, fs1
  FMUL.S fs1, fs1, fs1
  FMUL.S fs1, fs1, fs1
  FMUL.S fs1, fs1, fs1
  FMUL.S fs1, fs1, fs1
  LA a0, .CONSTANT.7.0
  FLW fs3, 0(a0)
  FSUB.S fs3, fs3, fs1
  FMUL.S fs3, fs3, fs3
  LA a0, .CONSTANT.7.1
  FLW fs4, 0(a0)
  FMUL.S fs4, fs4, fs2
  FMUL.S fs5, fs4, fs1
  LA a0, .CONSTANT.7.0
  FLW fs6, 0(a0)
  FADD.S fs5, fs6, fs5
  FDIV.S fs4, fs4, fs0
  LA a0, .CONSTANT.7.0
  FLW fs6, 0(a0)
  FADD.S fs4, fs6, fs4
  FMUL.S fs4, fs4, fs4
  FMUL.S fs4, fs4, fs4
  FMUL.S fs4, fs4, fs4
  FMUL.S fs4, fs4, fs4
  FMUL.S fs4, fs4, fs4
  FMUL.S fs4, fs4, fs4
  FMUL.S fs4, fs4, fs4
  FMUL.S fs4, fs4, fs4
  FSUB.S fs4, fs5, fs4
  FDIV.S fs3, fs3, fs4
  FMUL.S fs1, fs3, fs1
  LA a0, .CONSTANT.7.0
  FLW fs4, 0(a0)
  FSUB.S fs4, fs2, fs4
  FMUL.S fs4, fs1, fs4
  LA a0, .CONSTANT.7.0
  FLW fs5, 0(a0)
  FADD.S fs5, fs2, fs5
  FMUL.S fs1, fs1, fs5
  FSGNJN.S fs5, fs3, fs3
  LA a0, .CONSTANT.7.1
  FLW fs6, 0(a0)
  LA a0, .CONSTANT.7.1
  FLW fs7, 0(a0)
  FSGNJN.S fs6, fs6, fs7
  FMUL.S fs2, fs6, fs2
  FDIV.S fs0, fs2, fs0
  LA a0, .CONSTANT.7.0
  FLW fs2, 0(a0)
  FADD.S fs0, fs2, fs0
  FMUL.S fs0, fs0, fs0
  FMUL.S fs0, fs0, fs0
  FMUL.S fs0, fs0, fs0
  FMUL.S fs0, fs0, fs0
  FMUL.S fs0, fs0, fs0
  FMUL.S fs0, fs0, fs0
  FMUL.S fs0, fs0, fs0
  FMUL.S fs0, fs0, fs0
  FMUL.S fs2, fs5, fs0
  FCVT.W.S a0, fa0, rtz
  LA s6, .CONSTANT.7.1
  FLW fa0, 0(s6)
  LA s6, .CONSTANT.7.1
  FLW fs5, 0(s6)
  FSGNJ.S fa0, fa0, fs5
  CALL newPow
  FSGNJ.D ft0, fa0, fa0
  FSGNJN.S ft1, fs0, fs0
  ADDI t0, zero, 1
  FCVT.S.W ft2, t0
  ADDI a5, zero, 0
  BLT a5, s0, bb42
  # implict jump to bb1
bb1:
  BLT a5, s0, bb35
  # implict jump to bb2
bb2:
  BLT a5, s0, bb28
  # implict jump to bb3
bb3:
  BLT zero, s1, bb21
  # implict jump to bb4
bb4:
  BLT zero, s1, bb14
  # implict jump to bb5
bb5:
  BLT a5, s0, bb7
  # implict jump to bb6
bb6:
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
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb7:
  ADD t0, zero, zero
  # implict jump to bb8
bb8:
  BLT zero, s1, bb11
  # implict jump to bb9
bb9:
  ADDIW t0, t0, 1
  BLT t0, s0, bb10
  JAL zero, bb6
bb10:
  JAL zero, bb8
bb11:
  ADDI t1, zero, 1080
  MULW t1, t0, t1
  ADD t2, s3, t1
  ADD a0, s4, t1
  ADD t1, s5, t1
  ADD a1, zero, zero
  # implict jump to bb12
bb12:
  SLLIW a2, a1, 2
  ADD a3, t2, a2
  ADD a4, a0, a2
  FLW ft0, 0(a4)
  ADD a2, t1, a2
  FLW ft1, 0(a2)
  FADD.S ft0, ft0, ft1
  FMUL.S ft0, ft2, ft0
  FSW ft0, 0(a3)
  ADDIW a1, a1, 1
  BLT a1, s1, bb13
  JAL zero, bb9
bb13:
  JAL zero, bb12
bb14:
  ADDI t0, zero, 1
  SUBW t0, s0, t0
  SLT t1, t0, zero
  XORI t1, t1, 1
  ADD t2, zero, zero
  # implict jump to bb15
bb15:
  BNE t1, zero, bb18
  # implict jump to bb16
bb16:
  ADDIW t2, t2, 1
  BLT t2, s1, bb17
  JAL zero, bb5
bb17:
  JAL zero, bb15
bb18:
  SLLIW a0, t2, 2
  LA a1, .CONSTANT.7.2
  FLW ft3, 0(a1)
  LA a1, .CONSTANT.7.2
  FLW ft4, 0(a1)
  FSGNJ.S ft7, ft3, ft4
  ADD a1, t0, zero
  LA a2, .CONSTANT.7.2
  FLW ft3, 0(a2)
  LA a2, .CONSTANT.7.2
  FLW ft4, 0(a2)
  FSGNJ.S ft3, ft3, ft4
  LA a2, .CONSTANT.7.2
  FLW ft4, 0(a2)
  LA a2, .CONSTANT.7.2
  FLW ft5, 0(a2)
  FSGNJ.S ft4, ft4, ft5
  LA a2, .CONSTANT.7.2
  FLW ft5, 0(a2)
  LA a2, .CONSTANT.7.2
  FLW ft6, 0(a2)
  FSGNJ.S ft5, ft5, ft6
  # implict jump to bb19
bb19:
  FSGNJ.S ft6, ft5, ft5
  FSGNJ.S ft5, ft4, ft4
  FSGNJ.S ft4, ft3, ft3
  FSGNJ.S ft3, ft7, ft7
  ADDI a2, zero, 1080
  MULW a2, a1, a2
  ADD a3, s5, a2
  ADD a3, a3, a0
  FMUL.S ft7, fs1, ft3
  FMUL.S ft4, fs2, ft4
  FADD.S ft4, ft7, ft4
  FMUL.S ft7, ft0, ft5
  FADD.S ft4, ft4, ft7
  FMUL.S ft6, ft1, ft6
  FADD.S ft4, ft4, ft6
  FSW ft4, 0(a3)
  ADD a2, s3, a2
  ADD a2, a2, a0
  FLW ft6, 0(a2)
  ADDI a2, zero, 1
  SUBW a1, a1, a2
  SLT a2, a1, zero
  XORI a2, a2, 1
  BNE a2, zero, bb20
  JAL zero, bb16
bb20:
  FSGNJ.S ft7, ft6, ft6
  JAL zero, bb19
bb21:
  ADD t0, zero, zero
  # implict jump to bb22
bb22:
  BLT a5, s0, bb25
  # implict jump to bb23
bb23:
  ADDIW t0, t0, 1
  BLT t0, s1, bb24
  JAL zero, bb4
bb24:
  JAL zero, bb22
bb25:
  SLLIW t1, t0, 2
  LA t2, .CONSTANT.7.2
  FLW ft3, 0(t2)
  LA t2, .CONSTANT.7.2
  FLW ft4, 0(t2)
  FSGNJ.S ft6, ft3, ft4
  ADD t2, zero, zero
  LA a0, .CONSTANT.7.2
  FLW ft3, 0(a0)
  LA a0, .CONSTANT.7.2
  FLW ft4, 0(a0)
  FSGNJ.S ft3, ft3, ft4
  LA a0, .CONSTANT.7.2
  FLW ft4, 0(a0)
  LA a0, .CONSTANT.7.2
  FLW ft5, 0(a0)
  FSGNJ.S ft4, ft4, ft5
  # implict jump to bb26
bb26:
  FSGNJ.S ft5, ft4, ft4
  FSGNJ.S ft4, ft3, ft3
  FSGNJ.S ft3, ft6, ft6
  ADDI a0, zero, 1080
  MULW a0, t2, a0
  ADD a1, s4, a0
  ADD a1, a1, t1
  ADD a0, s3, a0
  ADD a0, a0, t1
  FLW ft6, 0(a0)
  FMUL.S ft6, fs3, ft6
  FMUL.S ft5, fs4, ft5
  FADD.S ft5, ft6, ft5
  FMUL.S ft6, ft0, ft4
  FADD.S ft5, ft5, ft6
  FMUL.S ft3, ft1, ft3
  FADD.S ft3, ft5, ft3
  FSW ft3, 0(a1)
  FLW ft5, 0(a0)
  ADDIW t2, t2, 1
  BLT t2, s0, bb27
  JAL zero, bb23
bb27:
  FSGNJ.S ft6, ft4, ft4
  FSGNJ.S ft4, ft5, ft5
  JAL zero, bb26
bb28:
  ADD t0, zero, zero
  # implict jump to bb29
bb29:
  BLT zero, s1, bb32
  # implict jump to bb30
bb30:
  ADDIW t0, t0, 1
  BLT t0, s0, bb31
  JAL zero, bb3
bb31:
  JAL zero, bb29
bb32:
  ADDI t1, zero, 1080
  MULW t1, t0, t1
  ADD t2, s3, t1
  ADD a0, s4, t1
  ADD t1, s5, t1
  ADD a1, zero, zero
  # implict jump to bb33
bb33:
  SLLIW a2, a1, 2
  ADD a3, t2, a2
  ADD a4, a0, a2
  FLW ft3, 0(a4)
  ADD a2, t1, a2
  FLW ft4, 0(a2)
  FADD.S ft3, ft3, ft4
  FMUL.S ft3, ft2, ft3
  FSW ft3, 0(a3)
  ADDIW a1, a1, 1
  BLT a1, s1, bb34
  JAL zero, bb30
bb34:
  JAL zero, bb33
bb35:
  ADDI t0, zero, 1
  SUBW t0, s1, t0
  SLT t1, t0, zero
  XORI t1, t1, 1
  ADD t2, zero, zero
  # implict jump to bb36
bb36:
  BNE t1, zero, bb39
  # implict jump to bb37
bb37:
  ADDIW t2, t2, 1
  BLT t2, s0, bb38
  JAL zero, bb2
bb38:
  JAL zero, bb36
bb39:
  ADDI a0, zero, 1080
  MULW a0, t2, a0
  ADD a1, s5, a0
  ADD a0, s2, a0
  ADD a2, t0, zero
  LA a3, .CONSTANT.7.2
  FLW ft3, 0(a3)
  LA a3, .CONSTANT.7.2
  FLW ft4, 0(a3)
  FSGNJ.S ft7, ft3, ft4
  LA a3, .CONSTANT.7.2
  FLW ft3, 0(a3)
  LA a3, .CONSTANT.7.2
  FLW ft4, 0(a3)
  FSGNJ.S ft3, ft3, ft4
  LA a3, .CONSTANT.7.2
  FLW ft4, 0(a3)
  LA a3, .CONSTANT.7.2
  FLW ft5, 0(a3)
  FSGNJ.S ft4, ft4, ft5
  LA a3, .CONSTANT.7.2
  FLW ft5, 0(a3)
  LA a3, .CONSTANT.7.2
  FLW ft6, 0(a3)
  FSGNJ.S ft5, ft5, ft6
  # implict jump to bb40
bb40:
  FSGNJ.S ft6, ft5, ft5
  FSGNJ.S ft5, ft4, ft4
  FSGNJ.S ft4, ft3, ft3
  FSGNJ.S ft3, ft7, ft7
  SLLIW a3, a2, 2
  ADD a4, a1, a3
  FMUL.S ft7, fs1, ft3
  FMUL.S ft4, fs2, ft4
  FADD.S ft4, ft7, ft4
  FMUL.S ft7, ft0, ft5
  FADD.S ft4, ft4, ft7
  FMUL.S ft6, ft1, ft6
  FADD.S ft4, ft4, ft6
  FSW ft4, 0(a4)
  ADD a3, a0, a3
  FLW ft6, 0(a3)
  ADDI a3, zero, 1
  SUBW a2, a2, a3
  SLT a3, a2, zero
  XORI a3, a3, 1
  BNE a3, zero, bb41
  JAL zero, bb37
bb41:
  FSGNJ.S ft7, ft6, ft6
  JAL zero, bb40
bb42:
  ADDI a3, zero, 0
  ADD t0, zero, zero
  # implict jump to bb43
bb43:
  BLT a3, s1, bb46
  # implict jump to bb44
bb44:
  ADDIW t0, t0, 1
  BLT t0, s0, bb45
  JAL zero, bb1
bb45:
  JAL zero, bb43
bb46:
  ADDI t1, zero, 1080
  MULW t1, t0, t1
  ADD t2, s4, t1
  ADD t1, s2, t1
  ADD a0, zero, zero
  LA a1, .CONSTANT.7.2
  FLW ft3, 0(a1)
  LA a1, .CONSTANT.7.2
  FLW ft4, 0(a1)
  FSGNJ.S ft6, ft3, ft4
  LA a1, .CONSTANT.7.2
  FLW ft3, 0(a1)
  LA a1, .CONSTANT.7.2
  FLW ft4, 0(a1)
  FSGNJ.S ft4, ft3, ft4
  LA a1, .CONSTANT.7.2
  FLW ft3, 0(a1)
  LA a1, .CONSTANT.7.2
  FLW ft5, 0(a1)
  FSGNJ.S ft3, ft3, ft5
  # implict jump to bb47
bb47:
  FSGNJ.S ft5, ft3, ft3
  FSGNJ.S ft3, ft6, ft6
  SLLIW a1, a0, 2
  ADD a2, t2, a1
  ADD a1, t1, a1
  FLW ft6, 0(a1)
  FMUL.S ft6, fs3, ft6
  FMUL.S ft4, fs4, ft4
  FADD.S ft4, ft6, ft4
  FMUL.S ft6, ft0, ft5
  FADD.S ft4, ft4, ft6
  FMUL.S ft3, ft1, ft3
  FADD.S ft3, ft4, ft3
  FSW ft3, 0(a2)
  FLW ft4, 0(a1)
  ADDIW a0, a0, 1
  BLT a0, s1, bb48
  JAL zero, bb44
bb48:
  FSGNJ.S ft6, ft5, ft5
  JAL zero, bb47
newPow:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs0, 16(sp)
  FSGNJ.D fs0, fa0, fa0
  ADD s0, a0, zero
  BLT s0, zero, bb55
  # implict jump to bb50
bb50:
  SLTIU a0, s0, 1
  BNE a0, zero, bb54
  # implict jump to bb51
bb51:
  BLT zero, s0, bb53
  # implict jump to bb52
bb52:
bb53:
  ADDI a0, zero, 1
  SUBW a0, s0, a0
  FSGNJ.S fa0, fs0, fs0
  CALL newPow
  FSGNJ.D ft0, fa0, fa0
  FMUL.S ft0, fs0, ft0
  FSGNJ.S fa0, ft0, ft0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb54:
  LA t0, .CONSTANT.7.0
  FLW ft0, 0(t0)
  LA t0, .CONSTANT.7.0
  FLW ft1, 0(t0)
  FSGNJ.S fa0, ft0, ft1
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb55:
  SUB a0, zero, s0
  FSGNJ.S fa0, fs0, fs0
  CALL newPow
  FSGNJ.D ft0, fa0, fa0
  LA t0, .CONSTANT.7.0
  FLW ft1, 0(t0)
  FDIV.S ft0, ft1, ft0
  FSGNJ.S fa0, ft0, ft0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
main:
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
