.global kernel_deriche
.global newPow
.global main
.global newExp
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
.section .text
kernel_deriche:
  ADDI sp, sp, -208
  SD s11, 0(sp)
  SD s10, 8(sp)
  SD s9, 16(sp)
  FSD fs1, 24(sp)
  SD s4, 32(sp)
  SD s3, 40(sp)
  SD s2, 48(sp)
  FSD fs0, 56(sp)
  SD s1, 64(sp)
  FSD fs8, 72(sp)
  SD s0, 80(sp)
  SD s5, 88(sp)
  SD s6, 96(sp)
  FSD fs2, 104(sp)
  SD s7, 112(sp)
  FSD fs3, 120(sp)
  SD s8, 128(sp)
  FSD fs4, 136(sp)
  FSD fs5, 144(sp)
  FSD fs6, 152(sp)
  FSD fs7, 160(sp)
  FSD fs9, 168(sp)
  SD ra, 176(sp)
  FSD fs10, 184(sp)
  FSD fs11, 192(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  FSGNJ.D fs0, fa0, fa0
  ADD s2, a2, zero
  ADD s3, a3, zero
  ADD s4, a4, zero
  ADD s5, a5, zero
  FSGNJN.S fs1, fs0, fs0
  ADDI s6, zero, 256
  FCVT.S.W fs2, s6
  FDIV.S fs3, fs1, fs2
  LA s6, .CONSTANT.7.0
  FLW fs4, 0(s6)
  FADD.S fs5, fs4, fs3
  FMUL.S fs3, fs5, fs5
  FMUL.S fs4, fs3, fs3
  FMUL.S fs3, fs4, fs4
  FMUL.S fs4, fs3, fs3
  FMUL.S fs3, fs4, fs4
  FMUL.S fs4, fs3, fs3
  FMUL.S fs3, fs4, fs4
  FMUL.S fs4, fs3, fs3
  FSGNJ.S fs3, fs4, fs4
  JAL zero, bb1
bb1:
  FSGNJ.S fs5, fs3, fs3
  LA s6, .CONSTANT.7.0
  FLW fs3, 0(s6)
  FSUB.S fs6, fs3, fs5
  FSGNJ.S fs3, fs4, fs4
  JAL zero, bb2
bb2:
  FSGNJ.S fs5, fs3, fs3
  LA s6, .CONSTANT.7.0
  FLW fs3, 0(s6)
  FSUB.S fs7, fs3, fs5
  FMUL.S fs3, fs6, fs7
  LA s6, .CONSTANT.7.1
  FLW fs5, 0(s6)
  FMUL.S fs6, fs5, fs0
  FSGNJ.S fs5, fs4, fs4
  JAL zero, bb3
bb3:
  FSGNJ.S fs7, fs5, fs5
  FMUL.S fs5, fs6, fs7
  LA s6, .CONSTANT.7.0
  FLW fs7, 0(s6)
  FADD.S fs8, fs7, fs5
  FDIV.S fs5, fs6, fs2
  LA s6, .CONSTANT.7.0
  FLW fs6, 0(s6)
  FADD.S fs7, fs6, fs5
  FMUL.S fs5, fs7, fs7
  FMUL.S fs6, fs5, fs5
  FMUL.S fs5, fs6, fs6
  FMUL.S fs6, fs5, fs5
  FMUL.S fs5, fs6, fs6
  FMUL.S fs6, fs5, fs5
  FMUL.S fs5, fs6, fs6
  FMUL.S fs6, fs5, fs5
  FSGNJ.S fs5, fs6, fs6
  JAL zero, bb4
bb4:
  FSGNJ.S fs6, fs5, fs5
  FSUB.S fs5, fs8, fs6
  FDIV.S fs6, fs3, fs5
  FSGNJ.S fs3, fs4, fs4
  JAL zero, bb5
bb5:
  FSGNJ.S fs5, fs3, fs3
  FMUL.S fs3, fs6, fs5
  LA s6, .CONSTANT.7.0
  FLW fs5, 0(s6)
  FSUB.S fs7, fs0, fs5
  FMUL.S fs5, fs3, fs7
  FSGNJ.S fs3, fs4, fs4
  JAL zero, bb6
bb6:
  FSGNJ.S fs4, fs3, fs3
  FMUL.S fs3, fs6, fs4
  LA s6, .CONSTANT.7.0
  FLW fs4, 0(s6)
  FADD.S fs7, fs0, fs4
  FMUL.S fs4, fs3, fs7
  FSGNJN.S fs3, fs6, fs6
  LA s6, .CONSTANT.7.1
  FLW fs7, 0(s6)
  LA s6, .CONSTANT.7.1
  FLW fs8, 0(s6)
  FSGNJN.S fs9, fs7, fs8
  FMUL.S fs7, fs9, fs0
  FDIV.S fs0, fs7, fs2
  LA s6, .CONSTANT.7.0
  FLW fs2, 0(s6)
  FADD.S fs7, fs2, fs0
  FMUL.S fs0, fs7, fs7
  FMUL.S fs2, fs0, fs0
  FMUL.S fs0, fs2, fs2
  FMUL.S fs2, fs0, fs0
  FMUL.S fs0, fs2, fs2
  FMUL.S fs2, fs0, fs0
  FMUL.S fs0, fs2, fs2
  FMUL.S fs2, fs0, fs0
  FSGNJ.S fs0, fs2, fs2
  JAL zero, bb7
bb7:
  FSGNJ.S fs7, fs0, fs0
  FMUL.S fs0, fs3, fs7
  FCVT.W.S s6, fs1, rtz
  LA s7, .CONSTANT.7.1
  FLW fs1, 0(s7)
  LA s7, .CONSTANT.7.1
  FLW fs3, 0(s7)
  FSGNJ.S fa0, fs1, fs3
  ADD a0, s6, zero
  CALL newPow
  FSGNJ.D fs1, fa0, fa0
  FSGNJ.S fs3, fs2, fs2
  JAL zero, bb8
bb8:
  FSGNJ.S fs2, fs3, fs3
  FSGNJN.S fs3, fs2, fs2
  ADDI s6, zero, 1
  FCVT.S.W fs2, s6
  ADD s6, zero, zero
  JAL zero, bb9
bb9:
  ADD s7, s6, zero
  SLT s8, s7, s0
  BNE s8, zero, bb10
  JAL zero, bb11
bb10:
  LA s8, .CONSTANT.7.2
  FLW fs7, 0(s8)
  LA s8, .CONSTANT.7.2
  FLW fs8, 0(s8)
  FSGNJ.S fs9, fs7, fs8
  LA s8, .CONSTANT.7.2
  FLW fs7, 0(s8)
  LA s8, .CONSTANT.7.2
  FLW fs8, 0(s8)
  FSGNJ.S fs10, fs7, fs8
  LA s8, .CONSTANT.7.2
  FLW fs7, 0(s8)
  LA s8, .CONSTANT.7.2
  FLW fs8, 0(s8)
  FSGNJ.S fs11, fs7, fs8
  ADD s8, zero, zero
  JAL zero, bb12
bb11:
  ADD s6, zero, zero
  JAL zero, bb15
bb12:
  ADD s9, s8, zero
  FSGNJ.S fs7, fs11, fs11
  FSGNJ.S fs8, fs10, fs10
  FSGNJ.S ft0, fs9, fs9
  SLT s10, s9, s1
  BNE s10, zero, bb13
  JAL zero, bb14
bb13:
  ADDI s10, zero, 1080
  MULW s11, s7, s10
  ADD s10, s4, s11
  ADDI t0, zero, 4
  MULW t1, s9, t0
  ADD t0, s10, t1
  ADD s10, s2, s11
  ADD s11, s10, t1
  FLW ft1, 0(s11)
  FMUL.S ft2, fs6, ft1
  FMUL.S ft1, fs5, fs7
  FADD.S fs7, ft2, ft1
  FMUL.S ft1, fs1, fs8
  FADD.S ft2, fs7, ft1
  FMUL.S fs7, fs3, ft0
  FADD.S ft0, ft2, fs7
  FSW ft0, 0(t0)
  FLW fs7, 0(s11)
  ADDIW s10, s9, 1
  FSGNJ.S fs9, fs8, fs8
  FSGNJ.S fs10, ft0, ft0
  FSGNJ.S fs11, fs7, fs7
  ADD s8, s10, zero
  JAL zero, bb12
bb14:
  ADDIW s8, s7, 1
  ADD s6, s8, zero
  JAL zero, bb9
bb15:
  ADD s7, s6, zero
  SLT s8, s7, s0
  BNE s8, zero, bb16
  JAL zero, bb17
bb16:
  ADDI s8, zero, 1
  SUBW s9, s1, s8
  LA s8, .CONSTANT.7.2
  FLW fs7, 0(s8)
  LA s8, .CONSTANT.7.2
  FLW fs8, 0(s8)
  FSGNJ.S fs9, fs7, fs8
  LA s8, .CONSTANT.7.2
  FLW fs7, 0(s8)
  LA s8, .CONSTANT.7.2
  FLW fs8, 0(s8)
  FSGNJ.S fs10, fs7, fs8
  LA s8, .CONSTANT.7.2
  FLW fs7, 0(s8)
  LA s8, .CONSTANT.7.2
  FLW fs8, 0(s8)
  FSGNJ.S fs11, fs7, fs8
  LA s8, .CONSTANT.7.2
  FLW fs7, 0(s8)
  LA s8, .CONSTANT.7.2
  FLW fs8, 0(s8)
  FSGNJ.S ft0, fs7, fs8
  ADD s8, s9, zero
  JAL zero, bb18
bb17:
  ADD s2, zero, zero
  JAL zero, bb21
bb18:
  ADD s9, s8, zero
  FSGNJ.S fs7, ft0, ft0
  FSGNJ.S fs8, fs11, fs11
  FSGNJ.S ft1, fs10, fs10
  FSGNJ.S ft2, fs9, fs9
  SLT s10, s9, zero
  XORI s11, s10, 1
  BNE s11, zero, bb19
  JAL zero, bb20
bb19:
  ADDI s10, zero, 1080
  MULW s11, s7, s10
  ADD s10, s5, s11
  ADDI t0, zero, 4
  MULW t1, s9, t0
  ADD t0, s10, t1
  FMUL.S ft5, fs4, fs8
  FMUL.S ft6, fs0, fs7
  FADD.S fs7, ft5, ft6
  FMUL.S ft5, fs1, ft2
  FADD.S ft6, fs7, ft5
  FMUL.S fs7, fs3, ft1
  FADD.S ft1, ft6, fs7
  FSW ft1, 0(t0)
  ADD s10, s2, s11
  ADD s11, s10, t1
  FLW fs7, 0(s11)
  ADDI s10, zero, 1
  SUBW s11, s9, s10
  FSGNJ.S fs9, ft1, ft1
  FSGNJ.S fs10, ft2, ft2
  FSGNJ.S fs11, fs7, fs7
  FSGNJ.S ft0, fs8, fs8
  ADD s8, s11, zero
  JAL zero, bb18
bb20:
  ADDIW s8, s7, 1
  ADD s6, s8, zero
  JAL zero, bb15
bb21:
  ADD s6, s2, zero
  SLT s7, s6, s0
  BNE s7, zero, bb22
  JAL zero, bb23
bb22:
  ADD s7, zero, zero
  JAL zero, bb24
bb23:
  ADD s2, zero, zero
  JAL zero, bb27
bb24:
  ADD s8, s7, zero
  SLT s9, s8, s1
  BNE s9, zero, bb25
  JAL zero, bb26
bb25:
  ADDI s9, zero, 1080
  MULW s10, s6, s9
  ADD s9, s3, s10
  ADDI s11, zero, 4
  MULW t0, s8, s11
  ADD s11, s9, t0
  ADD s9, s4, s10
  ADD t1, s9, t0
  FLW fs7, 0(t1)
  ADD s9, s5, s10
  ADD s10, s9, t0
  FLW fs8, 0(s10)
  FADD.S fs9, fs7, fs8
  FMUL.S fs7, fs2, fs9
  FSW fs7, 0(s11)
  ADDIW s9, s8, 1
  ADD s7, s9, zero
  JAL zero, bb24
bb26:
  ADDIW s7, s6, 1
  ADD s2, s7, zero
  JAL zero, bb21
bb27:
  ADD s6, s2, zero
  SLT s7, s6, s1
  BNE s7, zero, bb28
  JAL zero, bb29
bb28:
  LA s7, .CONSTANT.7.2
  FLW fs7, 0(s7)
  LA s7, .CONSTANT.7.2
  FLW fs8, 0(s7)
  FSGNJ.S fs9, fs7, fs8
  LA s7, .CONSTANT.7.2
  FLW fs7, 0(s7)
  LA s7, .CONSTANT.7.2
  FLW fs8, 0(s7)
  FSGNJ.S fs10, fs7, fs8
  LA s7, .CONSTANT.7.2
  FLW fs7, 0(s7)
  LA s7, .CONSTANT.7.2
  FLW fs8, 0(s7)
  FSGNJ.S fs11, fs7, fs8
  ADD s7, zero, zero
  JAL zero, bb30
bb29:
  ADD s2, zero, zero
  JAL zero, bb33
bb30:
  ADD s8, s7, zero
  FSGNJ.S fs7, fs11, fs11
  FSGNJ.S fs8, fs10, fs10
  FSGNJ.S ft0, fs9, fs9
  SLT s9, s8, s0
  BNE s9, zero, bb31
  JAL zero, bb32
bb31:
  ADDI s9, zero, 1080
  MULW s10, s8, s9
  ADD s9, s4, s10
  ADDI s11, zero, 4
  MULW t0, s6, s11
  ADD s11, s9, t0
  ADD s9, s3, s10
  ADD s10, s9, t0
  FLW ft1, 0(s10)
  FMUL.S ft2, fs6, ft1
  FMUL.S ft1, fs5, fs7
  FADD.S fs7, ft2, ft1
  FMUL.S ft1, fs1, fs8
  FADD.S ft2, fs7, ft1
  FMUL.S fs7, fs3, ft0
  FADD.S ft0, ft2, fs7
  FSW ft0, 0(s11)
  FLW fs7, 0(s10)
  ADDIW s9, s8, 1
  FSGNJ.S fs9, fs8, fs8
  FSGNJ.S fs10, ft0, ft0
  FSGNJ.S fs11, fs7, fs7
  ADD s7, s9, zero
  JAL zero, bb30
bb32:
  ADDIW s7, s6, 1
  ADD s2, s7, zero
  JAL zero, bb27
bb33:
  ADD s6, s2, zero
  SLT s7, s6, s1
  BNE s7, zero, bb34
  JAL zero, bb35
bb34:
  ADDI s7, zero, 1
  SUBW s8, s0, s7
  LA s7, .CONSTANT.7.2
  FLW fs5, 0(s7)
  LA s7, .CONSTANT.7.2
  FLW fs6, 0(s7)
  FSGNJ.S fs7, fs5, fs6
  LA s7, .CONSTANT.7.2
  FLW fs5, 0(s7)
  LA s7, .CONSTANT.7.2
  FLW fs6, 0(s7)
  FSGNJ.S fs8, fs5, fs6
  LA s7, .CONSTANT.7.2
  FLW fs5, 0(s7)
  LA s7, .CONSTANT.7.2
  FLW fs6, 0(s7)
  FSGNJ.S fs9, fs5, fs6
  LA s7, .CONSTANT.7.2
  FLW fs5, 0(s7)
  LA s7, .CONSTANT.7.2
  FLW fs6, 0(s7)
  FSGNJ.S fs10, fs5, fs6
  ADD s7, s8, zero
  JAL zero, bb36
bb35:
  ADD s2, zero, zero
  JAL zero, bb39
bb36:
  ADD s8, s7, zero
  FSGNJ.S fs5, fs10, fs10
  FSGNJ.S fs6, fs9, fs9
  FSGNJ.S fs11, fs8, fs8
  FSGNJ.S ft0, fs7, fs7
  SLT s9, s8, zero
  XORI s10, s9, 1
  BNE s10, zero, bb37
  JAL zero, bb38
bb37:
  ADDI s9, zero, 1080
  MULW s10, s8, s9
  ADD s9, s5, s10
  ADDI s11, zero, 4
  MULW t0, s6, s11
  ADD s11, s9, t0
  FMUL.S ft1, fs4, ft0
  FMUL.S ft2, fs0, fs11
  FADD.S fs11, ft1, ft2
  FMUL.S ft1, fs1, fs6
  FADD.S ft2, fs11, ft1
  FMUL.S fs11, fs3, fs5
  FADD.S fs5, ft2, fs11
  FSW fs5, 0(s11)
  ADD s9, s3, s10
  ADD s10, s9, t0
  FLW fs11, 0(s10)
  ADDI s9, zero, 1
  SUBW s10, s8, s9
  FSGNJ.S fs7, fs11, fs11
  FSGNJ.S fs8, ft0, ft0
  FSGNJ.S fs9, fs5, fs5
  FSGNJ.S fs10, fs6, fs6
  ADD s7, s10, zero
  JAL zero, bb36
bb38:
  ADDIW s7, s6, 1
  ADD s2, s7, zero
  JAL zero, bb33
bb39:
  ADD s6, s2, zero
  SLT s7, s6, s0
  BNE s7, zero, bb40
  JAL zero, bb41
bb40:
  ADD s7, zero, zero
  JAL zero, bb42
bb41:
  LD s11, 0(sp)
  LD s10, 8(sp)
  LD s9, 16(sp)
  FLD fs1, 24(sp)
  LD s4, 32(sp)
  LD s3, 40(sp)
  LD s2, 48(sp)
  FLD fs0, 56(sp)
  LD s1, 64(sp)
  FLD fs8, 72(sp)
  LD s0, 80(sp)
  LD s5, 88(sp)
  LD s6, 96(sp)
  FLD fs2, 104(sp)
  LD s7, 112(sp)
  FLD fs3, 120(sp)
  LD s8, 128(sp)
  FLD fs4, 136(sp)
  FLD fs5, 144(sp)
  FLD fs6, 152(sp)
  FLD fs7, 160(sp)
  FLD fs9, 168(sp)
  LD ra, 176(sp)
  FLD fs10, 184(sp)
  FLD fs11, 192(sp)
  ADDI sp, sp, 208
  JALR zero, 0(ra)
bb42:
  ADD s8, s7, zero
  SLT s9, s8, s1
  BNE s9, zero, bb43
  JAL zero, bb44
bb43:
  ADDI s9, zero, 1080
  MULW s10, s6, s9
  ADD s9, s3, s10
  ADDI s11, zero, 4
  MULW t0, s8, s11
  ADD s11, s9, t0
  ADD s9, s4, s10
  ADD t1, s9, t0
  FLW fs0, 0(t1)
  ADD s9, s5, s10
  ADD s10, s9, t0
  FLW fs1, 0(s10)
  FADD.S fs3, fs0, fs1
  FMUL.S fs0, fs2, fs3
  FSW fs0, 0(s11)
  ADDIW s9, s8, 1
  ADD s7, s9, zero
  JAL zero, bb42
bb44:
  ADDIW s7, s6, 1
  ADD s2, s7, zero
  JAL zero, bb39
newPow:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  FSD fs3, 8(sp)
  FSD fs1, 16(sp)
  SD s1, 24(sp)
  FSD fs2, 32(sp)
  SD s0, 40(sp)
  SD s2, 48(sp)
  FSD fs0, 56(sp)
  FSGNJ.D fs0, fa0, fa0
  ADD s0, a0, zero
  SLT s1, s0, zero
  BNE s1, zero, bb46
  JAL zero, bb48
bb46:
  SUB s1, zero, s0
  FSGNJ.S fa0, fs0, fs0
  ADD a0, s1, zero
  CALL newPow
  FSGNJ.D fs1, fa0, fa0
  LA s1, .CONSTANT.7.0
  FLW fs2, 0(s1)
  FDIV.S fs3, fs2, fs1
  FSGNJ.S fa0, fs3, fs3
  LD ra, 0(sp)
  FLD fs3, 8(sp)
  FLD fs1, 16(sp)
  LD s1, 24(sp)
  FLD fs2, 32(sp)
  LD s0, 40(sp)
  LD s2, 48(sp)
  FLD fs0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb47:
bb48:
  XOR s1, s0, zero
  SLTIU s2, s1, 1
  BNE s2, zero, bb49
  JAL zero, bb50
bb49:
  LA s1, .CONSTANT.7.0
  FLW fs1, 0(s1)
  LA s1, .CONSTANT.7.0
  FLW fs2, 0(s1)
  FSGNJ.S fa0, fs1, fs2
  LD ra, 0(sp)
  FLD fs3, 8(sp)
  FLD fs1, 16(sp)
  LD s1, 24(sp)
  FLD fs2, 32(sp)
  LD s0, 40(sp)
  LD s2, 48(sp)
  FLD fs0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb50:
  SLT s1, zero, s0
  BNE s1, zero, bb51
  JAL zero, bb52
bb51:
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  FSGNJ.S fa0, fs0, fs0
  ADD a0, s2, zero
  CALL newPow
  FSGNJ.D fs1, fa0, fa0
  FMUL.S fs2, fs0, fs1
  FSGNJ.S fa0, fs2, fs2
  LD ra, 0(sp)
  FLD fs3, 8(sp)
  FLD fs1, 16(sp)
  LD s1, 24(sp)
  FLD fs2, 32(sp)
  LD s0, 40(sp)
  LD s2, 48(sp)
  FLD fs0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb52:
  JAL zero, bb47
main:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  FSD fs0, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  LA s0, imgIn
  ADD a0, s0, zero
  CALL getfarray
  ADD s0, a0, zero
  ADDI a0, zero, 156
  CALL _sysy_starttime
  LA s0, w
  LW s1, 0(s0)
  LA s0, h
  LW s2, 0(s0)
  LA s0, alpha
  FLW fs0, 0(s0)
  ADD a0, s1, zero
  ADD a1, s2, zero
  FSGNJ.S fa0, fs0, fs0
  LA s0, imgIn
  ADD a2, s0, zero
  LA s0, imgOut
  ADD a3, s0, zero
  LA s0, my_y1
  ADD a4, s0, zero
  LA s0, my_y2
  ADD a5, s0, zero
  CALL kernel_deriche
  ADDI a0, zero, 158
  CALL _sysy_stoptime
  LA s0, w
  LW s1, 0(s0)
  LA s0, h
  LW s2, 0(s0)
  MULW s0, s1, s2
  ADD a0, s0, zero
  LA s0, imgOut
  ADD a1, s0, zero
  CALL putfarray
  ADD a0, zero, zero
  LD ra, 0(sp)
  FLD fs0, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
newExp:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  FSD fs1, 8(sp)
  FSD fs2, 16(sp)
  SD s0, 24(sp)
  FSD fs0, 32(sp)
  FSGNJ.D fs0, fa0, fa0
  ADDI s0, zero, 256
  FCVT.S.W fs1, s0
  FDIV.S fs2, fs0, fs1
  LA s0, .CONSTANT.7.0
  FLW fs0, 0(s0)
  FADD.S fs1, fs0, fs2
  FMUL.S fs0, fs1, fs1
  FMUL.S fs1, fs0, fs0
  FMUL.S fs0, fs1, fs1
  FMUL.S fs1, fs0, fs0
  FMUL.S fs0, fs1, fs1
  FMUL.S fs1, fs0, fs0
  FMUL.S fs0, fs1, fs1
  FMUL.S fs1, fs0, fs0
  FSGNJ.S fa0, fs1, fs1
  LD ra, 0(sp)
  FLD fs1, 8(sp)
  FLD fs2, 16(sp)
  LD s0, 24(sp)
  FLD fs0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
