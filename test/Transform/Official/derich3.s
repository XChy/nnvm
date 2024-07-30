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
.CONSTANT.7.3:
.word 0x3e800000
.section .text
kernel_deriche:
  ADDI sp, sp, -400
  SD ra, 112(sp)
  SD s1, 120(sp)
  SD s5, 136(sp)
  SD s6, 144(sp)
  SD s7, 152(sp)
  SD s10, 160(sp)
  FSD fs0, 168(sp)
  FSD fs1, 176(sp)
  FSD fs2, 184(sp)
  FSD fs3, 192(sp)
  FSD fs4, 200(sp)
  FSD fs5, 208(sp)
  FSD fs6, 216(sp)
  FSD fs7, 224(sp)
  FSD fs8, 232(sp)
  FSD fs9, 240(sp)
  FSD fs10, 248(sp)
  FSD fs11, 256(sp)
  SD s0, 336(sp)
  SD s2, 352(sp)
  SD s3, 360(sp)
  SD s4, 368(sp)
  SD s8, 376(sp)
  SD s9, 384(sp)
  SD s11, 392(sp)
  ADD t4, a0, zero
  SW t4, 84(sp)
  ADD t4, a1, zero
  SW t4, 88(sp)
  FSGNJ.D fs0, fa0, fa0
  ADD t4, a2, zero
  SD t4, 296(sp)
  ADD t4, a3, zero
  SD t4, 288(sp)
  ADD t4, a4, zero
  SD t4, 280(sp)
  ADD t4, a5, zero
  SD t4, 272(sp)
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
  FDIV.S ft4, fs4, fs5
  FSW ft4, 100(sp)
  FLW ft4, 100(sp)
  FMUL.S fs3, ft4, fs3
  LA s6, .CONSTANT.7.0
  FLW fs5, 0(s6)
  FSUB.S fs5, fs0, fs5
  FMUL.S ft4, fs3, fs5
  FSW ft4, 8(sp)
  LA s6, .CONSTANT.7.0
  FLW fs6, 0(s6)
  FADD.S fs6, fs0, fs6
  FMUL.S ft4, fs3, fs6
  FSW ft4, 20(sp)
  FLW ft4, 100(sp)
  FLW ft3, 100(sp)
  FSGNJN.S fs6, ft4, ft3
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
  FMUL.S ft4, fs6, fs0
  FSW ft4, 24(sp)
  FCVT.W.S s6, fs1, rtz
  LA s7, .CONSTANT.7.1
  FLW fs1, 0(s7)
  LA s7, .CONSTANT.7.1
  FLW fs6, 0(s7)
  FSGNJ.S fa0, fs1, fs6
  ADD a0, s6, zero
  CALL newPow
  FSGNJ.D ft4, fa0, fa0
  FSW ft4, 28(sp)
  FSGNJN.S ft4, fs0, fs0
  FSW ft4, 32(sp)
  ADDI s6, zero, 1
  FCVT.S.W ft4, s6
  FSW ft4, 36(sp)
  ADDI t4, zero, 0
  SW t4, 104(sp)
  LW t4, 104(sp)
  LW t3, 84(sp)
  BLT t4, t3, bb42
  # implict jump to bb1
bb1:
  LW t4, 104(sp)
  LW t3, 84(sp)
  BLT t4, t3, bb35
  # implict jump to bb2
bb2:
  LW t4, 104(sp)
  LW t3, 84(sp)
  BLT t4, t3, bb28
  # implict jump to bb3
bb3:
  LW t4, 88(sp)
  BLT zero, t4, bb21
  # implict jump to bb4
bb4:
  LW t4, 88(sp)
  BLT zero, t4, bb14
  # implict jump to bb5
bb5:
  LW t4, 104(sp)
  LW t3, 84(sp)
  BLT t4, t3, bb7
  # implict jump to bb6
bb6:
  LD ra, 112(sp)
  LD s1, 120(sp)
  LD s5, 136(sp)
  LD s6, 144(sp)
  LD s7, 152(sp)
  LD s10, 160(sp)
  FLD fs0, 168(sp)
  FLD fs1, 176(sp)
  FLD fs2, 184(sp)
  FLD fs3, 192(sp)
  FLD fs4, 200(sp)
  FLD fs5, 208(sp)
  FLD fs6, 216(sp)
  FLD fs7, 224(sp)
  FLD fs8, 232(sp)
  FLD fs9, 240(sp)
  FLD fs10, 248(sp)
  FLD fs11, 256(sp)
  LD s0, 336(sp)
  LD s2, 352(sp)
  LD s3, 360(sp)
  LD s4, 368(sp)
  LD s8, 376(sp)
  LD s9, 384(sp)
  LD s11, 392(sp)
  ADDI sp, sp, 400
  JALR zero, 0(ra)
bb7:
  ADD a6, zero, zero
  # implict jump to bb8
bb8:
  ADD a7, a6, zero
  LW t4, 88(sp)
  BLT zero, t4, bb11
  # implict jump to bb9
bb9:
  ADDIW s1, a7, 1
  LW t4, 84(sp)
  BLT s1, t4, bb10
  JAL zero, bb6
bb10:
  ADD a6, s1, zero
  JAL zero, bb8
bb11:
  ADDI s5, zero, 1080
  MULW s5, a7, s5
  LD t4, 288(sp)
  ADD s3, t4, s5
  LD t4, 280(sp)
  ADD s4, t4, s5
  LD t4, 272(sp)
  ADD s5, t4, s5
  ADD s6, zero, zero
  # implict jump to bb12
bb12:
  ADD s2, s6, zero
  SLLIW s0, s2, 2
  ADD t6, s3, s0
  ADD s1, s4, s0
  FLW fa0, 0(s1)
  ADD s0, s5, s0
  FLW fs4, 0(s0)
  FADD.S fs4, fa0, fs4
  FLW ft4, 36(sp)
  FMUL.S fs4, ft4, fs4
  FSW fs4, 0(t6)
  ADDIW s0, s2, 1
  LW t4, 88(sp)
  BLT s0, t4, bb13
  JAL zero, bb9
bb13:
  ADD s6, s0, zero
  JAL zero, bb12
bb14:
  ADDI t2, zero, 1
  LW t4, 84(sp)
  SUBW t2, t4, t2
  SLT a4, t2, zero
  XORI a4, a4, 1
  ADD a5, zero, zero
  # implict jump to bb15
bb15:
  ADD a3, a5, zero
  BNE a4, zero, bb18
  # implict jump to bb16
bb16:
  ADDIW a2, a3, 1
  LW t4, 88(sp)
  BLT a2, t4, bb17
  JAL zero, bb5
bb17:
  ADD a5, a2, zero
  JAL zero, bb15
bb18:
  SLLIW a1, a3, 2
  ADD a0, t2, zero
  LA a6, .CONSTANT.7.2
  FLW ft9, 0(a6)
  LA a6, .CONSTANT.7.2
  FLW ft10, 0(a6)
  FSGNJ.S ft9, ft9, ft10
  LA a6, .CONSTANT.7.2
  FLW ft10, 0(a6)
  LA a6, .CONSTANT.7.2
  FLW ft11, 0(a6)
  FSGNJ.S ft10, ft10, ft11
  LA a6, .CONSTANT.7.2
  FLW ft11, 0(a6)
  LA a6, .CONSTANT.7.2
  FLW fs1, 0(a6)
  FSGNJ.S fs1, ft11, fs1
  LA a6, .CONSTANT.7.2
  FLW ft11, 0(a6)
  LA a6, .CONSTANT.7.2
  FLW fs0, 0(a6)
  FSGNJ.S fs0, ft11, fs0
  # implict jump to bb19
bb19:
  FSGNJ.S ft11, fs0, fs0
  FSGNJ.S fa0, fs1, fs1
  FSGNJ.S fs2, ft10, ft10
  FSGNJ.S fs3, ft9, ft9
  ADD a6, a0, zero
  ADDI s7, zero, 1080
  MULW s7, a6, s7
  LD t4, 272(sp)
  ADD a2, t4, s7
  ADD a2, a2, a1
  FLW ft4, 20(sp)
  FMUL.S fs5, ft4, ft11
  FLW ft4, 24(sp)
  FMUL.S fa0, ft4, fa0
  FADD.S fs5, fs5, fa0
  FLW ft4, 28(sp)
  FMUL.S fa0, ft4, fs2
  FADD.S fs5, fs5, fa0
  FLW ft4, 32(sp)
  FMUL.S fs3, ft4, fs3
  FADD.S fs3, fs5, fs3
  FSW fs3, 0(a2)
  LD t4, 288(sp)
  ADD s7, t4, s7
  ADD s7, s7, a1
  FLW fs5, 0(s7)
  ADDI s7, zero, 1
  SUBW s7, a6, s7
  SLT a2, s7, zero
  XORI a2, a2, 1
  BNE a2, zero, bb20
  JAL zero, bb16
bb20:
  ADD a0, s7, zero
  FSGNJ.S ft9, fs2, fs2
  FSGNJ.S ft10, fs3, fs3
  FSGNJ.S fs1, ft11, ft11
  FSGNJ.S fs0, fs5, fs5
  JAL zero, bb19
bb21:
  ADD s10, zero, zero
  # implict jump to bb22
bb22:
  ADD s11, s10, zero
  LW t4, 104(sp)
  LW t3, 84(sp)
  BLT t4, t3, bb25
  # implict jump to bb23
bb23:
  ADDIW t1, s11, 1
  LW t4, 88(sp)
  BLT t1, t4, bb24
  JAL zero, bb4
bb24:
  ADD s10, t1, zero
  JAL zero, bb22
bb25:
  SLLIW s9, s11, 2
  ADD t0, zero, zero
  LA t1, .CONSTANT.7.2
  FLW fa3, 0(t1)
  LA t1, .CONSTANT.7.2
  FLW fa4, 0(t1)
  FSGNJ.S fa3, fa3, fa4
  LA t1, .CONSTANT.7.2
  FLW fa4, 0(t1)
  LA t1, .CONSTANT.7.2
  FLW fa5, 0(t1)
  FSGNJ.S fa4, fa4, fa5
  LA t1, .CONSTANT.7.2
  FLW fa5, 0(t1)
  LA t1, .CONSTANT.7.2
  FLW fa6, 0(t1)
  FSGNJ.S fa5, fa5, fa6
  # implict jump to bb26
bb26:
  FSGNJ.S fa6, fa5, fa5
  FSGNJ.S fa7, fa4, fa4
  FSGNJ.S ft8, fa3, fa3
  ADD t1, t0, zero
  ADDI s8, zero, 1080
  MULW s8, t1, s8
  LD t4, 280(sp)
  ADD t2, t4, s8
  ADD t2, t2, s9
  LD t4, 288(sp)
  ADD s8, t4, s8
  ADD s8, s8, s9
  FLW ft9, 0(s8)
  FLW ft4, 100(sp)
  FMUL.S ft9, ft4, ft9
  FLW ft4, 8(sp)
  FMUL.S fa6, ft4, fa6
  FADD.S fa6, ft9, fa6
  FLW ft4, 28(sp)
  FMUL.S ft9, ft4, ft8
  FADD.S fa6, fa6, ft9
  FLW ft4, 32(sp)
  FMUL.S fa7, ft4, fa7
  FADD.S fa6, fa6, fa7
  FSW fa6, 0(t2)
  FLW fa7, 0(s8)
  ADDIW s8, t1, 1
  LW t4, 84(sp)
  BLT s8, t4, bb27
  JAL zero, bb23
bb27:
  ADD t0, s8, zero
  FSGNJ.S fa3, fa6, fa6
  FSGNJ.S fa4, ft8, ft8
  FSGNJ.S fa5, fa7, fa7
  JAL zero, bb26
bb28:
  ADD t4, zero, zero
  SW t4, 92(sp)
  # implict jump to bb29
bb29:
  LW t3, 92(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LW t4, 88(sp)
  BLT zero, t4, bb32
  # implict jump to bb30
bb30:
  LW t3, 56(sp)
  ADDIW t4, t3, 1
  SW t4, 96(sp)
  LW t4, 96(sp)
  LW t3, 84(sp)
  BLT t4, t3, bb31
  JAL zero, bb3
bb31:
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 92(sp)
  JAL zero, bb29
bb32:
  ADDI s5, zero, 1080
  LW t4, 56(sp)
  MULW s5, t4, s5
  LD t3, 288(sp)
  ADD t4, t3, s5
  SD t4, 344(sp)
  LD t3, 280(sp)
  ADD t4, t3, s5
  SD t4, 128(sp)
  LD t3, 272(sp)
  ADD t4, t3, s5
  SD t4, 264(sp)
  ADD t4, zero, zero
  SW t4, 76(sp)
  # implict jump to bb33
bb33:
  LW t4, 76(sp)
  ADD s1, t4, zero
  SLLIW s0, s1, 2
  LD t4, 344(sp)
  ADD s10, t4, s0
  LD t4, 128(sp)
  ADD s11, t4, s0
  FLW fa3, 0(s11)
  LD t4, 264(sp)
  ADD s0, t4, s0
  FLW fa4, 0(s0)
  FADD.S fa3, fa3, fa4
  FLW ft4, 36(sp)
  FMUL.S fa3, ft4, fa3
  FSW fa3, 0(s10)
  ADDIW t4, s1, 1
  SW t4, 80(sp)
  LW t4, 80(sp)
  LW t3, 88(sp)
  BLT t4, t3, bb34
  JAL zero, bb30
bb34:
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 76(sp)
  JAL zero, bb33
bb35:
  ADDI a0, zero, 1
  LW t3, 88(sp)
  SUBW t4, t3, a0
  SW t4, 44(sp)
  LW t4, 44(sp)
  SLT a1, t4, zero
  XORI t4, a1, 1
  SB t4, 0(sp)
  ADD t4, zero, zero
  SW t4, 12(sp)
  # implict jump to bb36
bb36:
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LB t4, 0(sp)
  BNE t4, zero, bb39
  # implict jump to bb37
bb37:
  LW t3, 48(sp)
  ADDIW t4, t3, 1
  SW t4, 52(sp)
  LW t4, 52(sp)
  LW t3, 84(sp)
  BLT t4, t3, bb38
  JAL zero, bb2
bb38:
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  JAL zero, bb36
bb39:
  ADDI a4, zero, 1080
  LW t4, 48(sp)
  MULW a4, t4, a4
  LD t3, 272(sp)
  ADD t4, t3, a4
  SD t4, 328(sp)
  LD t3, 296(sp)
  ADD t4, t3, a4
  SD t4, 320(sp)
  LA a6, .CONSTANT.7.2
  FLW ft0, 0(a6)
  LA a6, .CONSTANT.7.2
  FLW ft1, 0(a6)
  FSGNJ.S ft0, ft0, ft1
  LA a6, .CONSTANT.7.2
  FLW ft1, 0(a6)
  LA a6, .CONSTANT.7.2
  FLW ft2, 0(a6)
  FSGNJ.S ft1, ft1, ft2
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LA a7, .CONSTANT.7.2
  FLW ft2, 0(a7)
  LA a7, .CONSTANT.7.2
  FLW ft5, 0(a7)
  FSGNJ.S ft2, ft2, ft5
  LA a7, .CONSTANT.7.2
  FLW ft5, 0(a7)
  LA a7, .CONSTANT.7.2
  FLW ft6, 0(a7)
  FSGNJ.S ft5, ft5, ft6
  # implict jump to bb40
bb40:
  FSGNJ.S ft6, ft5, ft5
  FSGNJ.S ft7, ft2, ft2
  LW t4, 40(sp)
  ADD a7, t4, zero
  FSGNJ.S fa1, ft1, ft1
  FSGNJ.S fa2, ft0, ft0
  SLLIW t6, a7, 2
  LD t4, 328(sp)
  ADD s7, t4, t6
  FLW ft4, 20(sp)
  FMUL.S fa3, ft4, fa2
  FLW ft4, 24(sp)
  FMUL.S fa1, ft4, fa1
  FADD.S fa1, fa3, fa1
  FLW ft4, 28(sp)
  FMUL.S fa3, ft4, ft6
  FADD.S fa1, fa1, fa3
  FLW ft4, 32(sp)
  FMUL.S ft7, ft4, ft7
  FADD.S ft7, fa1, ft7
  FSW ft7, 0(s7)
  LD t4, 320(sp)
  ADD s7, t4, t6
  FLW fa1, 0(s7)
  ADDI s7, zero, 1
  SUBW t4, a7, s7
  SW t4, 16(sp)
  LW t4, 16(sp)
  SLT a7, t4, zero
  XORI a7, a7, 1
  BNE a7, zero, bb41
  JAL zero, bb37
bb41:
  FSGNJ.S ft0, fa1, fa1
  FSGNJ.S ft1, fa2, fa2
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  FSGNJ.S ft2, ft6, ft6
  FSGNJ.S ft5, ft7, ft7
  JAL zero, bb40
bb42:
  ADDI t4, zero, 0
  SW t4, 108(sp)
  ADD t4, zero, zero
  SW t4, 4(sp)
  # implict jump to bb43
bb43:
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  LW t4, 108(sp)
  LW t3, 88(sp)
  BLT t4, t3, bb46
  # implict jump to bb44
bb44:
  LW t3, 72(sp)
  ADDIW t4, t3, 1
  SW t4, 60(sp)
  LW t4, 60(sp)
  LW t3, 84(sp)
  BLT t4, t3, bb45
  JAL zero, bb1
bb45:
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  JAL zero, bb43
bb46:
  ADDI s10, zero, 1080
  LW t4, 72(sp)
  MULW s10, t4, s10
  LD t3, 280(sp)
  ADD t4, t3, s10
  SD t4, 312(sp)
  LD t3, 296(sp)
  ADD t4, t3, s10
  SD t4, 304(sp)
  LA t0, .CONSTANT.7.2
  FLW fs6, 0(t0)
  LA t0, .CONSTANT.7.2
  FLW fs7, 0(t0)
  FSGNJ.S fs6, fs6, fs7
  LA t0, .CONSTANT.7.2
  FLW fs7, 0(t0)
  LA t0, .CONSTANT.7.2
  FLW fs8, 0(t0)
  FSGNJ.S fs7, fs7, fs8
  LA t0, .CONSTANT.7.2
  FLW fs8, 0(t0)
  LA t0, .CONSTANT.7.2
  FLW fs9, 0(t0)
  FSGNJ.S fs8, fs8, fs9
  ADD t4, zero, zero
  SW t4, 68(sp)
  # implict jump to bb47
bb47:
  LW t4, 68(sp)
  ADD t1, t4, zero
  FSGNJ.S fs9, fs8, fs8
  FSGNJ.S fs10, fs7, fs7
  FSGNJ.S fs11, fs6, fs6
  SLLIW t2, t1, 2
  LD t4, 312(sp)
  ADD a0, t4, t2
  LD t4, 304(sp)
  ADD t2, t4, t2
  FLW ft0, 0(t2)
  FLW ft4, 100(sp)
  FMUL.S ft0, ft4, ft0
  FLW ft4, 8(sp)
  FMUL.S fs9, ft4, fs9
  FADD.S fs9, ft0, fs9
  FLW ft4, 28(sp)
  FMUL.S ft0, ft4, fs11
  FADD.S fs9, fs9, ft0
  FLW ft4, 32(sp)
  FMUL.S fs10, ft4, fs10
  FADD.S fs9, fs9, fs10
  FSW fs9, 0(a0)
  FLW fs10, 0(t2)
  ADDIW t4, t1, 1
  SW t4, 64(sp)
  LW t4, 64(sp)
  LW t3, 88(sp)
  BLT t4, t3, bb48
  JAL zero, bb44
bb48:
  FSGNJ.S fs6, fs9, fs9
  FSGNJ.S fs7, fs11, fs11
  FSGNJ.S fs8, fs10, fs10
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  JAL zero, bb47
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
  BLT s0, zero, bb55
  # implict jump to bb50
bb50:
  SLTIU s1, s0, 1
  BNE s1, zero, bb54
  # implict jump to bb51
bb51:
  BLT zero, s0, bb53
  # implict jump to bb52
bb52:
bb53:
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
bb54:
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
bb55:
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
  FSD fs0, 24(sp)
  FSD fs1, 32(sp)
  LA s0, imgIn
  ADD a0, s0, zero
  CALL getfarray
  ADDI a0, zero, 156
  CALL _sysy_starttime
  LA s0, w
  LW s0, 0(s0)
  LA s1, h
  LW s1, 0(s1)
  ADD a0, s0, zero
  ADD a1, s1, zero
  LA s0, .CONSTANT.7.3
  FLW fs0, 0(s0)
  LA s0, .CONSTANT.7.3
  FLW fs1, 0(s0)
  FSGNJ.S fa0, fs0, fs1
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
  FLD fs0, 24(sp)
  FLD fs1, 32(sp)
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
