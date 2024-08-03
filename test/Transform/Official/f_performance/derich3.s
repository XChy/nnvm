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
  ADD s3, a1, zero
  FSGNJ.D fs5, fa0, fa0
  ADD s5, a2, zero
  ADD s4, a3, zero
  ADD s2, a4, zero
  ADD s1, a5, zero
  FSGNJN.S fs4, fs5, fs5
  ADDI a0, zero, 256
  FCVT.S.W fs6, a0
  FDIV.S fs0, fs4, fs6
  LA a0, .CONSTANT.7.0
  FLW fa0, 0(a0)
  FADD.S fa0, fa0, fs0
  FMUL.S fa0, fa0, fa0
  FMUL.S fa0, fa0, fa0
  FMUL.S fa0, fa0, fa0
  FMUL.S fa0, fa0, fa0
  FMUL.S fa0, fa0, fa0
  FMUL.S fa0, fa0, fa0
  FMUL.S fa0, fa0, fa0
  FMUL.S fs7, fa0, fa0
  LA a0, .CONSTANT.7.0
  FLW fa0, 0(a0)
  FSUB.S fa0, fa0, fs7
  FMUL.S fs0, fa0, fa0
  LA a0, .CONSTANT.7.1
  FLW fa0, 0(a0)
  FMUL.S fs1, fa0, fs5
  FMUL.S fs2, fs1, fs7
  LA a0, .CONSTANT.7.0
  FLW fa0, 0(a0)
  FADD.S fs2, fa0, fs2
  FDIV.S fs1, fs1, fs6
  LA a0, .CONSTANT.7.0
  FLW fa0, 0(a0)
  FADD.S fa0, fa0, fs1
  FMUL.S fa0, fa0, fa0
  FMUL.S fa0, fa0, fa0
  FMUL.S fa0, fa0, fa0
  FMUL.S fa0, fa0, fa0
  FMUL.S fa0, fa0, fa0
  FMUL.S fa0, fa0, fa0
  FMUL.S fa0, fa0, fa0
  FMUL.S fa0, fa0, fa0
  FSUB.S fa0, fs2, fa0
  FDIV.S fs3, fs0, fa0
  FMUL.S fs0, fs3, fs7
  LA a0, .CONSTANT.7.0
  FLW fa0, 0(a0)
  FSUB.S fa0, fs5, fa0
  FMUL.S fs2, fs0, fa0
  LA a0, .CONSTANT.7.0
  FLW fa0, 0(a0)
  FADD.S fa0, fs5, fa0
  FMUL.S fs1, fs0, fa0
  FSGNJN.S fs7, fs3, fs3
  LA a0, .CONSTANT.7.1
  FLW fs0, 0(a0)
  LA a0, .CONSTANT.7.1
  FLW fa0, 0(a0)
  FSGNJN.S fa0, fs0, fa0
  FMUL.S fa0, fa0, fs5
  FDIV.S fs0, fa0, fs6
  LA a0, .CONSTANT.7.0
  FLW fa0, 0(a0)
  FADD.S fa0, fa0, fs0
  FMUL.S fa0, fa0, fa0
  FMUL.S fa0, fa0, fa0
  FMUL.S fa0, fa0, fa0
  FMUL.S fa0, fa0, fa0
  FMUL.S fa0, fa0, fa0
  FMUL.S fa0, fa0, fa0
  FMUL.S fa0, fa0, fa0
  FMUL.S fs5, fa0, fa0
  FMUL.S fs0, fs7, fs5
  FCVT.W.S s6, fs4, rtz
  LA a0, .CONSTANT.7.1
  FLW fs4, 0(a0)
  LA a0, .CONSTANT.7.1
  FLW fa0, 0(a0)
  FSGNJ.S fa0, fs4, fa0
  ADD a0, s6, zero
  CALL newPow
  FSGNJ.D ft4, fa0, fa0
  FSGNJN.S ft2, fs5, fs5
  ADDI t0, zero, 1
  FCVT.S.W ft3, t0
  ADDI t1, zero, 0
  BLT t1, s0, bb42
  # implict jump to bb1
bb1:
  BLT t1, s0, bb35
  # implict jump to bb2
bb2:
  BLT t1, s0, bb28
  # implict jump to bb3
bb3:
  BLT zero, s3, bb21
  # implict jump to bb4
bb4:
  BLT zero, s3, bb14
  # implict jump to bb5
bb5:
  BLT t1, s0, bb7
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
  ADD a4, t0, zero
  BLT zero, s3, bb11
  # implict jump to bb9
bb9:
  ADDIW t0, a4, 1
  BLT t0, s0, bb10
  JAL zero, bb6
bb10:
  JAL zero, bb8
bb11:
  ADDI t0, zero, 1080
  MULW t0, a4, t0
  ADD t1, s4, t0
  ADD a0, s2, t0
  ADD t2, s1, t0
  ADD t0, zero, zero
  # implict jump to bb12
bb12:
  ADD a1, t0, zero
  SLLIW t0, a1, 2
  ADD a3, t1, t0
  ADD a2, a0, t0
  FLW ft0, 0(a2)
  ADD t0, t2, t0
  FLW ft1, 0(t0)
  FADD.S ft0, ft0, ft1
  FMUL.S ft0, ft3, ft0
  FSW ft0, 0(a3)
  ADDIW t0, a1, 1
  BLT t0, s3, bb13
  JAL zero, bb9
bb13:
  JAL zero, bb12
bb14:
  ADDI t0, zero, 1
  SUBW a1, s0, t0
  SLT t0, a1, zero
  XORI a2, t0, 1
  ADD t0, zero, zero
  # implict jump to bb15
bb15:
  ADD a3, t0, zero
  BNE a2, zero, bb18
  # implict jump to bb16
bb16:
  ADDIW t0, a3, 1
  BLT t0, s3, bb17
  JAL zero, bb5
bb17:
  JAL zero, bb15
bb18:
  SLLIW a0, a3, 2
  LA t0, .CONSTANT.7.2
  FLW ft1, 0(t0)
  LA t0, .CONSTANT.7.2
  FLW ft0, 0(t0)
  FSGNJ.S ft5, ft1, ft0
  ADD t2, a1, zero
  LA t0, .CONSTANT.7.2
  FLW ft1, 0(t0)
  LA t0, .CONSTANT.7.2
  FLW ft0, 0(t0)
  FSGNJ.S ft7, ft1, ft0
  LA t0, .CONSTANT.7.2
  FLW ft1, 0(t0)
  LA t0, .CONSTANT.7.2
  FLW ft0, 0(t0)
  FSGNJ.S ft6, ft1, ft0
  LA t0, .CONSTANT.7.2
  FLW ft1, 0(t0)
  LA t0, .CONSTANT.7.2
  FLW ft0, 0(t0)
  FSGNJ.S ft0, ft1, ft0
  # implict jump to bb19
bb19:
  FSGNJ.S fa0, ft0, ft0
  FSGNJ.S fa1, ft6, ft6
  FSGNJ.S ft0, ft7, ft7
  FSGNJ.S ft1, ft5, ft5
  ADDI t0, zero, 1080
  MULW a4, t2, t0
  ADD t0, s1, a4
  ADD t0, t0, a0
  FMUL.S ft5, fs1, ft1
  FMUL.S ft0, fs0, ft0
  FADD.S ft0, ft5, ft0
  FMUL.S ft5, ft4, fa1
  FADD.S ft5, ft0, ft5
  FMUL.S ft0, ft2, fa0
  FADD.S ft6, ft5, ft0
  FSW ft6, 0(t0)
  ADD t0, s4, a4
  ADD t0, t0, a0
  FLW ft0, 0(t0)
  ADDI t0, zero, 1
  SUBW t2, t2, t0
  SLT t0, t2, zero
  XORI t0, t0, 1
  BNE t0, zero, bb20
  JAL zero, bb16
bb20:
  FSGNJ.S ft5, ft0, ft0
  FSGNJ.S ft7, ft1, ft1
  FSGNJ.S ft0, fa1, fa1
  JAL zero, bb19
bb21:
  ADD t0, zero, zero
  # implict jump to bb22
bb22:
  ADD a1, t0, zero
  BLT t1, s0, bb25
  # implict jump to bb23
bb23:
  ADDIW t0, a1, 1
  BLT t0, s3, bb24
  JAL zero, bb4
bb24:
  JAL zero, bb22
bb25:
  SLLIW a0, a1, 2
  LA t0, .CONSTANT.7.2
  FLW ft1, 0(t0)
  LA t0, .CONSTANT.7.2
  FLW ft0, 0(t0)
  FSGNJ.S ft5, ft1, ft0
  ADD t2, zero, zero
  LA t0, .CONSTANT.7.2
  FLW ft1, 0(t0)
  LA t0, .CONSTANT.7.2
  FLW ft0, 0(t0)
  FSGNJ.S ft6, ft1, ft0
  LA t0, .CONSTANT.7.2
  FLW ft1, 0(t0)
  LA t0, .CONSTANT.7.2
  FLW ft0, 0(t0)
  FSGNJ.S ft0, ft1, ft0
  # implict jump to bb26
bb26:
  FSGNJ.S ft7, ft0, ft0
  ADD a2, t2, zero
  FSGNJ.S ft0, ft5, ft5
  ADDI t0, zero, 1080
  MULW t0, a2, t0
  ADD t2, s2, t0
  ADD t2, t2, a0
  ADD t0, s4, t0
  ADD t0, t0, a0
  FLW ft1, 0(t0)
  FMUL.S ft5, fs3, ft1
  FMUL.S ft1, fs2, ft7
  FADD.S ft5, ft5, ft1
  FMUL.S ft1, ft4, ft6
  FADD.S ft1, ft5, ft1
  FMUL.S ft0, ft2, ft0
  FADD.S ft0, ft1, ft0
  FSW ft0, 0(t2)
  FLW ft1, 0(t0)
  ADDIW t0, a2, 1
  BLT t0, s0, bb27
  JAL zero, bb23
bb27:
  FSGNJ.S ft5, ft6, ft6
  ADD t2, t0, zero
  FSGNJ.S ft6, ft0, ft0
  FSGNJ.S ft0, ft1, ft1
  JAL zero, bb26
bb28:
  ADD t0, zero, zero
  # implict jump to bb29
bb29:
  ADD a0, t0, zero
  BLT zero, s3, bb32
  # implict jump to bb30
bb30:
  ADDIW t0, a0, 1
  BLT t0, s0, bb31
  JAL zero, bb3
bb31:
  JAL zero, bb29
bb32:
  ADDI t0, zero, 1080
  MULW t0, a0, t0
  ADD a2, s4, t0
  ADD a1, s2, t0
  ADD a5, s1, t0
  ADD t0, zero, zero
  # implict jump to bb33
bb33:
  ADD a4, t0, zero
  SLLIW t2, a4, 2
  ADD t0, a2, t2
  ADD a3, a1, t2
  FLW ft1, 0(a3)
  ADD t2, a5, t2
  FLW ft0, 0(t2)
  FADD.S ft0, ft1, ft0
  FMUL.S ft0, ft3, ft0
  FSW ft0, 0(t0)
  ADDIW t0, a4, 1
  BLT t0, s3, bb34
  JAL zero, bb30
bb34:
  JAL zero, bb33
bb35:
  ADDI t0, zero, 1
  SUBW a3, s3, t0
  SLT t0, a3, zero
  XORI a0, t0, 1
  ADD t0, zero, zero
  # implict jump to bb36
bb36:
  ADD a2, t0, zero
  BNE a0, zero, bb39
  # implict jump to bb37
bb37:
  ADDIW t0, a2, 1
  BLT t0, s0, bb38
  JAL zero, bb2
bb38:
  JAL zero, bb36
bb39:
  ADDI t0, zero, 1080
  MULW t0, a2, t0
  ADD a1, s1, t0
  ADD a4, s5, t0
  ADD t2, a3, zero
  LA t0, .CONSTANT.7.2
  FLW ft1, 0(t0)
  LA t0, .CONSTANT.7.2
  FLW ft0, 0(t0)
  FSGNJ.S ft5, ft1, ft0
  LA t0, .CONSTANT.7.2
  FLW ft1, 0(t0)
  LA t0, .CONSTANT.7.2
  FLW ft0, 0(t0)
  FSGNJ.S fa0, ft1, ft0
  LA t0, .CONSTANT.7.2
  FLW ft1, 0(t0)
  LA t0, .CONSTANT.7.2
  FLW ft0, 0(t0)
  FSGNJ.S ft6, ft1, ft0
  LA t0, .CONSTANT.7.2
  FLW ft1, 0(t0)
  LA t0, .CONSTANT.7.2
  FLW ft0, 0(t0)
  FSGNJ.S ft0, ft1, ft0
  # implict jump to bb40
bb40:
  FSGNJ.S ft7, ft0, ft0
  FSGNJ.S ft1, ft6, ft6
  FSGNJ.S ft6, fa0, fa0
  FSGNJ.S fa0, ft5, ft5
  SLLIW t0, t2, 2
  ADD a5, a1, t0
  FMUL.S ft0, fs1, fa0
  FMUL.S ft5, fs0, ft6
  FADD.S ft5, ft0, ft5
  FMUL.S ft0, ft4, ft1
  FADD.S ft5, ft5, ft0
  FMUL.S ft0, ft2, ft7
  FADD.S ft6, ft5, ft0
  FSW ft6, 0(a5)
  ADD t0, a4, t0
  FLW ft0, 0(t0)
  ADDI t0, zero, 1
  SUBW t2, t2, t0
  SLT t0, t2, zero
  XORI t0, t0, 1
  BNE t0, zero, bb41
  JAL zero, bb37
bb41:
  FSGNJ.S ft5, ft0, ft0
  FSGNJ.S ft0, ft1, ft1
  JAL zero, bb40
bb42:
  ADDI t2, zero, 0
  ADD t0, zero, zero
  # implict jump to bb43
bb43:
  ADD a0, t0, zero
  BLT t2, s3, bb46
  # implict jump to bb44
bb44:
  ADDIW t0, a0, 1
  BLT t0, s0, bb45
  JAL zero, bb1
bb45:
  JAL zero, bb43
bb46:
  ADDI t0, zero, 1080
  MULW t0, a0, t0
  ADD a4, s2, t0
  ADD a3, s5, t0
  ADD a1, zero, zero
  LA t0, .CONSTANT.7.2
  FLW ft1, 0(t0)
  LA t0, .CONSTANT.7.2
  FLW ft0, 0(t0)
  FSGNJ.S ft6, ft1, ft0
  LA t0, .CONSTANT.7.2
  FLW ft1, 0(t0)
  LA t0, .CONSTANT.7.2
  FLW ft0, 0(t0)
  FSGNJ.S ft5, ft1, ft0
  LA t0, .CONSTANT.7.2
  FLW ft1, 0(t0)
  LA t0, .CONSTANT.7.2
  FLW ft0, 0(t0)
  FSGNJ.S ft0, ft1, ft0
  # implict jump to bb47
bb47:
  FSGNJ.S ft7, ft0, ft0
  FSGNJ.S ft1, ft5, ft5
  FSGNJ.S ft0, ft6, ft6
  ADD a2, a1, zero
  SLLIW t0, a2, 2
  ADD a1, a4, t0
  ADD t0, a3, t0
  FLW ft5, 0(t0)
  FMUL.S ft5, fs3, ft5
  FMUL.S ft1, fs2, ft1
  FADD.S ft5, ft5, ft1
  FMUL.S ft1, ft4, ft7
  FADD.S ft1, ft5, ft1
  FMUL.S ft0, ft2, ft0
  FADD.S ft0, ft1, ft0
  FSW ft0, 0(a1)
  FLW ft1, 0(t0)
  ADDIW t0, a2, 1
  BLT t0, s3, bb48
  JAL zero, bb44
bb48:
  ADD a1, t0, zero
  FSGNJ.S ft6, ft7, ft7
  FSGNJ.S ft5, ft1, ft1
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
  FLW ft1, 0(t0)
  LA t0, .CONSTANT.7.0
  FLW ft0, 0(t0)
  FSGNJ.S fa0, ft1, ft0
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
  LW a1, 0(a0)
  LA a0, h
  LW a2, 0(a0)
  ADD a0, a1, zero
  ADD a1, a2, zero
  LA a2, .CONSTANT.7.3
  FLW fs0, 0(a2)
  LA a2, .CONSTANT.7.3
  FLW fa0, 0(a2)
  FSGNJ.S fa0, fs0, fa0
  LA a2, imgIn
  LA a3, imgOut
  LA a4, my_y1
  LA a5, my_y2
  CALL kernel_deriche
  ADDI a0, zero, 158
  CALL _sysy_stoptime
  LA a0, w
  LW a1, 0(a0)
  LA a0, h
  LW a0, 0(a0)
  MULW a0, a1, a0
  LA a1, imgOut
  CALL putfarray
  ADD a0, zero, zero
  LD ra, 0(sp)
  FLD fs0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
