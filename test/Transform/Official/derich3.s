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
  ADDI sp, sp, -224
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  SD s8, 72(sp)
  SD s9, 80(sp)
  SD s10, 88(sp)
  SD s11, 96(sp)
  FSD fs0, 104(sp)
  FSD fs1, 112(sp)
  FSD fs2, 120(sp)
  FSD fs3, 128(sp)
  FSD fs4, 136(sp)
  FSD fs5, 144(sp)
  FSD fs6, 152(sp)
  FSD fs7, 160(sp)
  FSD fs8, 168(sp)
  FSD fs9, 176(sp)
  FSD fs10, 184(sp)
  FSD fs11, 192(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  FSGNJ.D fs0, fa0, fa0
  ADD s2, a2, zero
  ADD t4, a3, zero
  SD t4, 200(sp)
  ADD t4, a4, zero
  SD t4, 208(sp)
  ADD t4, a5, zero
  SD t4, 216(sp)
  FSGNJN.S fs1, fs0, fs0
  ADDI s6, zero, 256
  FCVT.S.W fs2, s6
  FDIV.S fs3, fs1, fs2
  LA s6, .CONSTANT.7.0
  FLW fs4, 0(s6)
  FADD.S fs3, fs4, fs3
  FMUL.S fs3, fs3, fs3
  FMUL.S fs3, fs3, fs3
  FMUL.S fs3, fs3, fs3
  FMUL.S fs3, fs3, fs3
  FMUL.S fs3, fs3, fs3
  FMUL.S fs3, fs3, fs3
  FMUL.S fs3, fs3, fs3
  FMUL.S fs3, fs3, fs3
  LA s6, .CONSTANT.7.0
  FLW fs4, 0(s6)
  FSUB.S fs4, fs4, fs3
  FMUL.S fs4, fs4, fs4
  LA s6, .CONSTANT.7.1
  FLW fs5, 0(s6)
  FMUL.S fs5, fs5, fs0
  FMUL.S fs6, fs5, fs3
  LA s6, .CONSTANT.7.0
  FLW fs7, 0(s6)
  FADD.S fs6, fs7, fs6
  FDIV.S fs5, fs5, fs2
  LA s6, .CONSTANT.7.0
  FLW fs7, 0(s6)
  FADD.S fs5, fs7, fs5
  FMUL.S fs5, fs5, fs5
  FMUL.S fs5, fs5, fs5
  FMUL.S fs5, fs5, fs5
  FMUL.S fs5, fs5, fs5
  FMUL.S fs5, fs5, fs5
  FMUL.S fs5, fs5, fs5
  FMUL.S fs5, fs5, fs5
  FMUL.S fs5, fs5, fs5
  FSUB.S fs5, fs6, fs5
  FDIV.S fs4, fs4, fs5
  FMUL.S fs3, fs4, fs3
  LA s6, .CONSTANT.7.0
  FLW fs5, 0(s6)
  FSUB.S fs5, fs0, fs5
  FMUL.S fs5, fs3, fs5
  LA s6, .CONSTANT.7.0
  FLW fs6, 0(s6)
  FADD.S fs6, fs0, fs6
  FMUL.S fs3, fs3, fs6
  FSGNJN.S fs6, fs4, fs4
  LA s6, .CONSTANT.7.1
  FLW fs7, 0(s6)
  LA s6, .CONSTANT.7.1
  FLW fs8, 0(s6)
  FSGNJN.S fs7, fs7, fs8
  FMUL.S fs0, fs7, fs0
  FDIV.S fs0, fs0, fs2
  LA s6, .CONSTANT.7.0
  FLW fs2, 0(s6)
  FADD.S fs0, fs2, fs0
  FMUL.S fs0, fs0, fs0
  FMUL.S fs0, fs0, fs0
  FMUL.S fs0, fs0, fs0
  FMUL.S fs0, fs0, fs0
  FMUL.S fs0, fs0, fs0
  FMUL.S fs0, fs0, fs0
  FMUL.S fs0, fs0, fs0
  FMUL.S fs0, fs0, fs0
  FMUL.S fs2, fs6, fs0
  FCVT.W.S s6, fs1, rtz
  LA s7, .CONSTANT.7.1
  FLW fs1, 0(s7)
  LA s7, .CONSTANT.7.1
  FLW fs6, 0(s7)
  FSGNJ.S fa0, fs1, fs6
  ADD a0, s6, zero
  CALL newPow
  FSGNJN.S fs0, fs0, fs0
  ADDI s6, zero, 1
  FCVT.S.W fs1, s6
  ADD s6, zero, zero
  # implict jump to bb1
bb1:
  ADD s7, s6, zero
  BLT s7, s0, bb33
  # implict jump to bb2
bb2:
  ADDI s8, zero, 1
  SUBW s8, s1, s8
  ADD s9, zero, zero
  # implict jump to bb3
bb3:
  ADD s10, s9, zero
  BLT s10, s0, bb29
  # implict jump to bb4
bb4:
  ADD s11, zero, zero
  # implict jump to bb5
bb5:
  ADD t0, s11, zero
  BLT t0, s0, bb25
  # implict jump to bb6
bb6:
  ADD t1, zero, zero
  # implict jump to bb7
bb7:
  ADD t2, t1, zero
  BLT t2, s1, bb21
  # implict jump to bb8
bb8:
  ADDI a0, zero, 1
  SUBW a0, s0, a0
  ADD a1, zero, zero
  # implict jump to bb9
bb9:
  ADD a2, a1, zero
  BLT a2, s1, bb17
  # implict jump to bb10
bb10:
  ADD a3, zero, zero
  # implict jump to bb11
bb11:
  ADD a4, a3, zero
  BLT a4, s0, bb13
  # implict jump to bb12
bb12:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  LD s10, 88(sp)
  LD s11, 96(sp)
  FLD fs0, 104(sp)
  FLD fs1, 112(sp)
  FLD fs2, 120(sp)
  FLD fs3, 128(sp)
  FLD fs4, 136(sp)
  FLD fs5, 144(sp)
  FLD fs6, 152(sp)
  FLD fs7, 160(sp)
  FLD fs8, 168(sp)
  FLD fs9, 176(sp)
  FLD fs10, 184(sp)
  FLD fs11, 192(sp)
  ADDI sp, sp, 224
  JALR zero, 0(ra)
bb13:
  ADDI a5, zero, 1080
  MULW a5, a4, a5
  LD t4, 200(sp)
  ADD a6, t4, a5
  LD t4, 208(sp)
  ADD a7, t4, a5
  LD t4, 216(sp)
  ADD a5, t4, a5
  ADD t6, zero, zero
  # implict jump to bb14
bb14:
  ADD s5, t6, zero
  BLT s5, s1, bb16
  # implict jump to bb15
bb15:
  ADDIW s4, a4, 1
  ADD a3, s4, zero
  JAL zero, bb11
bb16:
  SLLIW s4, s5, 2
  ADD a3, a6, s4
  ADD s3, a7, s4
  FLW fs6, 0(s3)
  ADD s3, a5, s4
  FLW fs7, 0(s3)
  FADD.S fs6, fs6, fs7
  FMUL.S fs6, fs1, fs6
  FSW fs6, 0(a3)
  ADDIW s3, s5, 1
  ADD t6, s3, zero
  JAL zero, bb14
bb17:
  SLLIW s3, a2, 2
  LA s4, .CONSTANT.7.2
  FLW fs6, 0(s4)
  LA s4, .CONSTANT.7.2
  FLW fs7, 0(s4)
  FSGNJ.S fs6, fs6, fs7
  LA s4, .CONSTANT.7.2
  FLW fs7, 0(s4)
  LA s4, .CONSTANT.7.2
  FLW fs8, 0(s4)
  FSGNJ.S fs7, fs7, fs8
  LA s4, .CONSTANT.7.2
  FLW fs8, 0(s4)
  LA s4, .CONSTANT.7.2
  FLW fs9, 0(s4)
  FSGNJ.S fs8, fs8, fs9
  LA s4, .CONSTANT.7.2
  FLW fs9, 0(s4)
  LA s4, .CONSTANT.7.2
  FLW fs10, 0(s4)
  FSGNJ.S fs9, fs9, fs10
  ADD s4, a0, zero
  # implict jump to bb18
bb18:
  ADD s5, s4, zero
  FSGNJ.S fs10, fs9, fs9
  FSGNJ.S fs11, fs8, fs8
  FSGNJ.S ft0, fs7, fs7
  FSGNJ.S ft1, fs6, fs6
  SLT a3, s5, zero
  XORI a3, a3, 1
  BNE a3, zero, bb20
  # implict jump to bb19
bb19:
  ADDIW a3, a2, 1
  ADD a1, a3, zero
  JAL zero, bb9
bb20:
  ADDI a1, zero, 1080
  MULW a1, s5, a1
  LD t4, 216(sp)
  ADD a3, t4, a1
  ADD a3, a3, s3
  FMUL.S ft2, fs3, ft1
  FMUL.S ft0, fs2, ft0
  FADD.S ft0, ft2, ft0
  FMUL.S ft2, fa0, fs11
  FADD.S ft0, ft0, ft2
  FMUL.S fs10, fs0, fs10
  FADD.S fs10, ft0, fs10
  FSW fs10, 0(a3)
  LD t4, 200(sp)
  ADD a1, t4, a1
  ADD a1, a1, s3
  FLW ft0, 0(a1)
  ADDI a1, zero, 1
  SUBW s5, s5, a1
  FSGNJ.S fs6, ft0, ft0
  FSGNJ.S fs7, ft1, ft1
  FSGNJ.S fs8, fs10, fs10
  FSGNJ.S fs9, fs11, fs11
  ADD s4, s5, zero
  JAL zero, bb18
bb21:
  SLLIW s3, t2, 2
  LA s4, .CONSTANT.7.2
  FLW fs6, 0(s4)
  LA s4, .CONSTANT.7.2
  FLW fs7, 0(s4)
  FSGNJ.S fs6, fs6, fs7
  LA s4, .CONSTANT.7.2
  FLW fs7, 0(s4)
  LA s4, .CONSTANT.7.2
  FLW fs8, 0(s4)
  FSGNJ.S fs7, fs7, fs8
  LA s4, .CONSTANT.7.2
  FLW fs8, 0(s4)
  LA s4, .CONSTANT.7.2
  FLW fs9, 0(s4)
  FSGNJ.S fs8, fs8, fs9
  ADD s4, zero, zero
  # implict jump to bb22
bb22:
  ADD s5, s4, zero
  FSGNJ.S fs9, fs8, fs8
  FSGNJ.S fs10, fs7, fs7
  FSGNJ.S fs11, fs6, fs6
  BLT s5, s0, bb24
  # implict jump to bb23
bb23:
  ADDIW a0, t2, 1
  ADD t1, a0, zero
  JAL zero, bb7
bb24:
  ADDI t1, zero, 1080
  MULW t1, s5, t1
  LD t4, 208(sp)
  ADD a0, t4, t1
  ADD a0, a0, s3
  LD t4, 200(sp)
  ADD t1, t4, t1
  ADD t1, t1, s3
  FLW ft0, 0(t1)
  FMUL.S ft0, fs4, ft0
  FMUL.S fs9, fs5, fs9
  FADD.S fs9, ft0, fs9
  FMUL.S ft0, fa0, fs10
  FADD.S fs9, fs9, ft0
  FMUL.S fs11, fs0, fs11
  FADD.S fs9, fs9, fs11
  FSW fs9, 0(a0)
  FLW fs11, 0(t1)
  ADDIW s5, s5, 1
  FSGNJ.S fs6, fs10, fs10
  FSGNJ.S fs7, fs9, fs9
  FSGNJ.S fs8, fs11, fs11
  ADD s4, s5, zero
  JAL zero, bb22
bb25:
  ADDI s3, zero, 1080
  MULW s3, t0, s3
  LD t4, 200(sp)
  ADD s4, t4, s3
  LD t4, 208(sp)
  ADD s5, t4, s3
  LD t4, 216(sp)
  ADD s3, t4, s3
  ADD t1, zero, zero
  # implict jump to bb26
bb26:
  ADD t2, t1, zero
  BLT t2, s1, bb28
  # implict jump to bb27
bb27:
  ADDIW a0, t0, 1
  ADD s11, a0, zero
  JAL zero, bb5
bb28:
  SLLIW s11, t2, 2
  ADD a0, s4, s11
  ADD a1, s5, s11
  FLW fs6, 0(a1)
  ADD s11, s3, s11
  FLW fs7, 0(s11)
  FADD.S fs6, fs6, fs7
  FMUL.S fs6, fs1, fs6
  FSW fs6, 0(a0)
  ADDIW s11, t2, 1
  ADD t1, s11, zero
  JAL zero, bb26
bb29:
  ADDI s3, zero, 1080
  MULW s3, s10, s3
  LD t4, 216(sp)
  ADD s4, t4, s3
  ADD s3, s2, s3
  LA s5, .CONSTANT.7.2
  FLW fs6, 0(s5)
  LA s5, .CONSTANT.7.2
  FLW fs7, 0(s5)
  FSGNJ.S fs6, fs6, fs7
  LA s5, .CONSTANT.7.2
  FLW fs7, 0(s5)
  LA s5, .CONSTANT.7.2
  FLW fs8, 0(s5)
  FSGNJ.S fs7, fs7, fs8
  LA s5, .CONSTANT.7.2
  FLW fs8, 0(s5)
  LA s5, .CONSTANT.7.2
  FLW fs9, 0(s5)
  FSGNJ.S fs8, fs8, fs9
  LA s5, .CONSTANT.7.2
  FLW fs9, 0(s5)
  LA s5, .CONSTANT.7.2
  FLW fs10, 0(s5)
  FSGNJ.S fs9, fs9, fs10
  ADD s5, s8, zero
  # implict jump to bb30
bb30:
  ADD s11, s5, zero
  FSGNJ.S fs10, fs9, fs9
  FSGNJ.S fs11, fs8, fs8
  FSGNJ.S ft0, fs7, fs7
  FSGNJ.S ft1, fs6, fs6
  SLT t0, s11, zero
  XORI t0, t0, 1
  BNE t0, zero, bb32
  # implict jump to bb31
bb31:
  ADDIW t0, s10, 1
  ADD s9, t0, zero
  JAL zero, bb3
bb32:
  SLLIW s9, s11, 2
  ADD t0, s4, s9
  FMUL.S ft2, fs3, fs11
  FMUL.S fs10, fs2, fs10
  FADD.S fs10, ft2, fs10
  FMUL.S ft2, fa0, ft1
  FADD.S fs10, fs10, ft2
  FMUL.S ft0, fs0, ft0
  FADD.S fs10, fs10, ft0
  FSW fs10, 0(t0)
  ADD s9, s3, s9
  FLW ft0, 0(s9)
  ADDI s9, zero, 1
  SUBW s9, s11, s9
  FSGNJ.S fs6, fs10, fs10
  FSGNJ.S fs7, ft1, ft1
  FSGNJ.S fs8, ft0, ft0
  FSGNJ.S fs9, fs11, fs11
  ADD s5, s9, zero
  JAL zero, bb30
bb33:
  ADDI s3, zero, 1080
  MULW s3, s7, s3
  LD t4, 208(sp)
  ADD s4, t4, s3
  ADD s3, s2, s3
  LA s5, .CONSTANT.7.2
  FLW fs6, 0(s5)
  LA s5, .CONSTANT.7.2
  FLW fs7, 0(s5)
  FSGNJ.S fs6, fs6, fs7
  LA s5, .CONSTANT.7.2
  FLW fs7, 0(s5)
  LA s5, .CONSTANT.7.2
  FLW fs8, 0(s5)
  FSGNJ.S fs7, fs7, fs8
  LA s5, .CONSTANT.7.2
  FLW fs8, 0(s5)
  LA s5, .CONSTANT.7.2
  FLW fs9, 0(s5)
  FSGNJ.S fs8, fs8, fs9
  ADD s5, zero, zero
  # implict jump to bb34
bb34:
  ADD s8, s5, zero
  FSGNJ.S fs9, fs8, fs8
  FSGNJ.S fs10, fs7, fs7
  FSGNJ.S fs11, fs6, fs6
  BLT s8, s1, bb36
  # implict jump to bb35
bb35:
  ADDIW s9, s7, 1
  ADD s6, s9, zero
  JAL zero, bb1
bb36:
  SLLIW s6, s8, 2
  ADD s9, s4, s6
  ADD s6, s3, s6
  FLW ft0, 0(s6)
  FMUL.S ft0, fs4, ft0
  FMUL.S fs9, fs5, fs9
  FADD.S fs9, ft0, fs9
  FMUL.S ft0, fa0, fs10
  FADD.S fs9, fs9, ft0
  FMUL.S fs11, fs0, fs11
  FADD.S fs9, fs9, fs11
  FSW fs9, 0(s9)
  FLW fs11, 0(s6)
  ADDIW s6, s8, 1
  FSGNJ.S fs6, fs10, fs10
  FSGNJ.S fs7, fs9, fs9
  FSGNJ.S fs8, fs11, fs11
  ADD s5, s6, zero
  JAL zero, bb34
newPow:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  FSD fs0, 24(sp)
  FSD fs1, 32(sp)
  FSD fs2, 40(sp)
  FSGNJ.D fs0, fa0, fa0
  ADD s0, a0, zero
  BLT s0, zero, bb43
  # implict jump to bb38
bb38:
  SLTIU s1, s0, 1
  BNE s1, zero, bb42
  # implict jump to bb39
bb39:
  BLT zero, s0, bb41
  # implict jump to bb40
bb40:
bb41:
  ADDI s1, zero, 1
  SUBW s1, s0, s1
  FSGNJ.S fa0, fs0, fs0
  ADD a0, s1, zero
  CALL newPow
  FSGNJ.D fs1, fa0, fa0
  FMUL.S fs1, fs0, fs1
  FSGNJ.S fa0, fs1, fs1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  FLD fs0, 24(sp)
  FLD fs1, 32(sp)
  FLD fs2, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb42:
  LA s1, .CONSTANT.7.0
  FLW fs1, 0(s1)
  LA s1, .CONSTANT.7.0
  FLW fs2, 0(s1)
  FSGNJ.S fa0, fs1, fs2
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  FLD fs0, 24(sp)
  FLD fs1, 32(sp)
  FLD fs2, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb43:
  SUB s0, zero, s0
  FSGNJ.S fa0, fs0, fs0
  ADD a0, s0, zero
  CALL newPow
  FSGNJ.D fs0, fa0, fa0
  LA s0, .CONSTANT.7.0
  FLW fs1, 0(s0)
  FDIV.S fs0, fs1, fs0
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  FLD fs0, 24(sp)
  FLD fs1, 32(sp)
  FLD fs2, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  FSD fs0, 32(sp)
  LA s0, imgIn
  ADD a0, s0, zero
  CALL getfarray
  ADDI a0, zero, 156
  CALL _sysy_starttime
  LA s0, w
  LW s0, 0(s0)
  LA s1, h
  LW s1, 0(s1)
  LA s2, alpha
  FLW fs0, 0(s2)
  ADD a0, s0, zero
  ADD a1, s1, zero
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
  LW s0, 0(s0)
  LA s1, h
  LW s1, 0(s1)
  MULW s0, s0, s1
  ADD a0, s0, zero
  LA s0, imgOut
  ADD a1, s0, zero
  CALL putfarray
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  FLD fs0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
newExp:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs0, 16(sp)
  FSD fs1, 24(sp)
  FSGNJ.D fs0, fa0, fa0
  ADDI s0, zero, 256
  FCVT.S.W fs1, s0
  FDIV.S fs0, fs0, fs1
  LA s0, .CONSTANT.7.0
  FLW fs1, 0(s0)
  FADD.S fs0, fs1, fs0
  FMUL.S fs0, fs0, fs0
  FMUL.S fs0, fs0, fs0
  FMUL.S fs0, fs0, fs0
  FMUL.S fs0, fs0, fs0
  FMUL.S fs0, fs0, fs0
  FMUL.S fs0, fs0, fs0
  FMUL.S fs0, fs0, fs0
  FMUL.S fs0, fs0, fs0
  FSGNJ.S fa0, fs0, fs0
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
