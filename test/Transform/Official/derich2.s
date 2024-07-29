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
  ADDI sp, sp, -416
  SD ra, 120(sp)
  SD s0, 128(sp)
  SD s1, 136(sp)
  SD s2, 144(sp)
  SD s3, 152(sp)
  SD s5, 160(sp)
  SD s6, 168(sp)
  SD s7, 176(sp)
  SD s8, 184(sp)
  SD s9, 192(sp)
  SD s10, 200(sp)
  SD s11, 208(sp)
  FSD fs0, 216(sp)
  FSD fs1, 224(sp)
  FSD fs2, 232(sp)
  SD s4, 240(sp)
  FSD fs3, 248(sp)
  FSD fs6, 264(sp)
  FSD fs7, 272(sp)
  FSD fs8, 296(sp)
  FSD fs9, 304(sp)
  FSD fs10, 344(sp)
  FSD fs11, 360(sp)
  FSD fs4, 392(sp)
  FSD fs5, 400(sp)
  ADD t4, a0, zero
  SW t4, 96(sp)
  ADD t4, a1, zero
  SW t4, 88(sp)
  FSGNJ.D ft2, fa0, fa0
  ADD t4, a2, zero
  SD t4, 312(sp)
  ADD t4, a3, zero
  SD t4, 328(sp)
  ADD t4, a4, zero
  SD t4, 256(sp)
  ADD t4, a5, zero
  SD t4, 368(sp)
  FSGNJN.S ft5, ft2, ft2
  ADDI t1, zero, 256
  FCVT.S.W ft6, t1
  FDIV.S ft7, ft5, ft6
  LA t1, .CONSTANT.7.0
  FLW fa1, 0(t1)
  FADD.S ft7, fa1, ft7
  FMUL.S ft7, ft7, ft7
  FMUL.S ft7, ft7, ft7
  FMUL.S ft7, ft7, ft7
  FMUL.S ft7, ft7, ft7
  FMUL.S ft7, ft7, ft7
  FMUL.S ft7, ft7, ft7
  FMUL.S ft7, ft7, ft7
  FMUL.S ft7, ft7, ft7
  LA t1, .CONSTANT.7.0
  FLW fa1, 0(t1)
  FSUB.S fa1, fa1, ft7
  FMUL.S fa1, fa1, fa1
  LA t1, .CONSTANT.7.1
  FLW fa2, 0(t1)
  FMUL.S fa2, fa2, ft2
  FMUL.S fa3, fa2, ft7
  LA t1, .CONSTANT.7.0
  FLW fa4, 0(t1)
  FADD.S fa3, fa4, fa3
  FDIV.S fa2, fa2, ft6
  LA t1, .CONSTANT.7.0
  FLW fa4, 0(t1)
  FADD.S fa2, fa4, fa2
  FMUL.S fa2, fa2, fa2
  FMUL.S fa2, fa2, fa2
  FMUL.S fa2, fa2, fa2
  FMUL.S fa2, fa2, fa2
  FMUL.S fa2, fa2, fa2
  FMUL.S fa2, fa2, fa2
  FMUL.S fa2, fa2, fa2
  FMUL.S fa2, fa2, fa2
  FSUB.S fa2, fa3, fa2
  FDIV.S ft4, fa1, fa2
  FSW ft4, 56(sp)
  FLW ft4, 56(sp)
  FMUL.S ft7, ft4, ft7
  LA t1, .CONSTANT.7.0
  FLW fa2, 0(t1)
  FSUB.S fa2, ft2, fa2
  FMUL.S ft4, ft7, fa2
  FSW ft4, 16(sp)
  LA t1, .CONSTANT.7.0
  FLW fa3, 0(t1)
  FADD.S fa3, ft2, fa3
  FMUL.S ft4, ft7, fa3
  FSW ft4, 32(sp)
  FLW ft4, 56(sp)
  FLW ft3, 56(sp)
  FSGNJN.S fa3, ft4, ft3
  LA t1, .CONSTANT.7.1
  FLW fa4, 0(t1)
  LA t1, .CONSTANT.7.1
  FLW fa5, 0(t1)
  FSGNJN.S fa4, fa4, fa5
  FMUL.S ft2, fa4, ft2
  FDIV.S ft2, ft2, ft6
  LA t1, .CONSTANT.7.0
  FLW ft6, 0(t1)
  FADD.S ft2, ft6, ft2
  FMUL.S ft2, ft2, ft2
  FMUL.S ft2, ft2, ft2
  FMUL.S ft2, ft2, ft2
  FMUL.S ft2, ft2, ft2
  FMUL.S ft2, ft2, ft2
  FMUL.S ft2, ft2, ft2
  FMUL.S ft2, ft2, ft2
  FMUL.S ft4, ft2, ft2
  FSW ft4, 28(sp)
  FLW ft3, 28(sp)
  FMUL.S ft4, fa3, ft3
  FSW ft4, 40(sp)
  FCVT.W.S t1, ft5, rtz
  LA s10, .CONSTANT.7.1
  FLW ft5, 0(s10)
  LA s10, .CONSTANT.7.1
  FLW fa3, 0(s10)
  FSGNJ.S fa0, ft5, fa3
  ADD a0, t1, zero
  CALL newPow
  FLW ft3, 28(sp)
  FLW ft4, 28(sp)
  FSGNJN.S ft4, ft3, ft4
  FSW ft4, 72(sp)
  ADDI s10, zero, 1
  FCVT.S.W ft4, s10
  FSW ft4, 20(sp)
  ADDI s10, zero, 0
  LW t4, 96(sp)
  BLT s10, t4, bb62
  # implict jump to bb1
bb1:
  ADDI t2, zero, 0
  LW t4, 96(sp)
  BLT t2, t4, bb51
  # implict jump to bb2
bb2:
  LW t4, 96(sp)
  BLT zero, t4, bb40
  # implict jump to bb3
bb3:
  LW t4, 88(sp)
  BLT zero, t4, bb29
  # implict jump to bb4
bb4:
  LW t4, 88(sp)
  BLT zero, t4, bb18
  # implict jump to bb5
bb5:
  LW t4, 96(sp)
  BLT zero, t4, bb7
  # implict jump to bb6
bb6:
  LD ra, 120(sp)
  LD s0, 128(sp)
  LD s1, 136(sp)
  LD s2, 144(sp)
  LD s3, 152(sp)
  LD s5, 160(sp)
  LD s6, 168(sp)
  LD s7, 176(sp)
  LD s8, 184(sp)
  LD s9, 192(sp)
  LD s10, 200(sp)
  LD s11, 208(sp)
  FLD fs0, 216(sp)
  FLD fs1, 224(sp)
  FLD fs2, 232(sp)
  LD s4, 240(sp)
  FLD fs3, 248(sp)
  FLD fs6, 264(sp)
  FLD fs7, 272(sp)
  FLD fs8, 296(sp)
  FLD fs9, 304(sp)
  FLD fs10, 344(sp)
  FLD fs11, 360(sp)
  FLD fs4, 392(sp)
  FLD fs5, 400(sp)
  ADDI sp, sp, 416
  JALR zero, 0(ra)
bb7:
  # implict jump to bb8
bb8:
  ADD s10, zero, zero
  # implict jump to bb9
bb9:
  ADD a0, s10, zero
  LW t4, 88(sp)
  BLT zero, t4, bb13
  # implict jump to bb10
bb10:
  ADDIW s1, a0, 1
  # implict jump to bb11
bb11:
  LW t4, 96(sp)
  BLT s1, t4, bb12
  JAL zero, bb6
bb12:
  ADD s10, s1, zero
  JAL zero, bb9
bb13:
  # implict jump to bb14
bb14:
  ADDI a1, zero, 1080
  MULW a1, a0, a1
  LD t4, 328(sp)
  ADD s4, t4, a1
  LD t3, 256(sp)
  ADD t4, t3, a1
  SD t4, 384(sp)
  LD t4, 368(sp)
  ADD s0, t4, a1
  ADD a1, zero, zero
  # implict jump to bb15
bb15:
  ADD t2, a1, zero
  SLLIW s9, t2, 2
  ADD a3, s4, s9
  LD t4, 384(sp)
  ADD a4, t4, s9
  FLW ft0, 0(a4)
  ADD s9, s0, s9
  FLW ft1, 0(s9)
  FADD.S ft0, ft0, ft1
  FLW ft4, 20(sp)
  FMUL.S ft0, ft4, ft0
  FSW ft0, 0(a3)
  ADDIW s3, t2, 1
  # implict jump to bb16
bb16:
  LW t4, 88(sp)
  BLT s3, t4, bb17
  JAL zero, bb10
bb17:
  ADD a1, s3, zero
  JAL zero, bb15
bb18:
  # implict jump to bb19
bb19:
  ADDI t0, zero, 1
  LW t3, 96(sp)
  SUBW t4, t3, t0
  SW t4, 44(sp)
  LW t4, 44(sp)
  SLT t0, t4, zero
  XORI s6, t0, 1
  ADD t0, zero, zero
  # implict jump to bb20
bb20:
  ADD t1, t0, zero
  BNE s6, zero, bb24
  # implict jump to bb21
bb21:
  ADDIW s11, t1, 1
  # implict jump to bb22
bb22:
  LW t4, 88(sp)
  BLT s11, t4, bb23
  JAL zero, bb5
bb23:
  ADD t0, s11, zero
  JAL zero, bb20
bb24:
  LA t6, .CONSTANT.7.2
  FLW fa7, 0(t6)
  LA t6, .CONSTANT.7.2
  FLW ft8, 0(t6)
  FSGNJ.S fa7, fa7, ft8
  LA t6, .CONSTANT.7.2
  FLW ft8, 0(t6)
  LA t6, .CONSTANT.7.2
  FLW ft9, 0(t6)
  FSGNJ.S ft8, ft8, ft9
  LA t6, .CONSTANT.7.2
  FLW ft9, 0(t6)
  LA t6, .CONSTANT.7.2
  FLW ft10, 0(t6)
  FSGNJ.S ft9, ft9, ft10
  LA t6, .CONSTANT.7.2
  FLW ft10, 0(t6)
  LA t6, .CONSTANT.7.2
  FLW ft11, 0(t6)
  FSGNJ.S ft10, ft10, ft11
  # implict jump to bb25
bb25:
  SLLIW t4, t1, 2
  SW t4, 48(sp)
  LW t4, 44(sp)
  ADD t6, t4, zero
  # implict jump to bb26
bb26:
  FSGNJ.S ft4, fa7, fa7
  FSW ft4, 36(sp)
  FSGNJ.S ft11, ft8, ft8
  FSGNJ.S fs5, ft9, ft9
  FSGNJ.S ft1, ft10, ft10
  ADD s10, t6, zero
  ADDI a0, zero, 1080
  MULW a0, s10, a0
  LD t4, 368(sp)
  ADD a1, t4, a0
  LW t4, 48(sp)
  ADD a1, a1, t4
  FLW ft4, 32(sp)
  FLW ft3, 36(sp)
  FMUL.S ft0, ft4, ft3
  FLW ft4, 40(sp)
  FMUL.S ft11, ft4, ft11
  FADD.S ft0, ft0, ft11
  FMUL.S ft11, fa0, fs5
  FADD.S ft0, ft0, ft11
  FLW ft4, 72(sp)
  FMUL.S ft1, ft4, ft1
  FADD.S fs4, ft0, ft1
  FSW fs4, 0(a1)
  LD t4, 328(sp)
  ADD a0, t4, a0
  LW t4, 48(sp)
  ADD a0, a0, t4
  FLW fs0, 0(a0)
  ADDI a0, zero, 1
  SUBW s2, s10, a0
  # implict jump to bb27
bb27:
  SLT s10, s2, zero
  XORI s10, s10, 1
  BNE s10, zero, bb28
  JAL zero, bb21
bb28:
  ADD t6, s2, zero
  FSGNJ.S ft10, fs5, fs5
  FSGNJ.S ft9, fs4, fs4
  FLW ft4, 36(sp)
  FLW ft3, 36(sp)
  FSGNJ.S ft8, ft4, ft3
  FSGNJ.S fa7, fs0, fs0
  JAL zero, bb26
bb29:
  # implict jump to bb30
bb30:
  ADD a5, zero, zero
  # implict jump to bb31
bb31:
  ADD a6, a5, zero
  LW t4, 96(sp)
  BLT zero, t4, bb35
  # implict jump to bb32
bb32:
  ADDIW t4, a6, 1
  SW t4, 24(sp)
  # implict jump to bb33
bb33:
  LW t4, 24(sp)
  LW t3, 88(sp)
  BLT t4, t3, bb34
  JAL zero, bb4
bb34:
  LW t4, 24(sp)
  ADD a5, t4, zero
  JAL zero, bb31
bb35:
  LA a7, .CONSTANT.7.2
  FLW fa4, 0(a7)
  LA a7, .CONSTANT.7.2
  FLW fa5, 0(a7)
  FSGNJ.S fa4, fa4, fa5
  LA a7, .CONSTANT.7.2
  FLW fa5, 0(a7)
  LA a7, .CONSTANT.7.2
  FLW fa6, 0(a7)
  FSGNJ.S fa5, fa5, fa6
  LA a7, .CONSTANT.7.2
  FLW fa6, 0(a7)
  LA a7, .CONSTANT.7.2
  FLW fa7, 0(a7)
  FSGNJ.S fa6, fa6, fa7
  # implict jump to bb36
bb36:
  SLLIW s7, a6, 2
  ADD a7, zero, zero
  # implict jump to bb37
bb37:
  FSGNJ.S fa7, fa4, fa4
  FSGNJ.S fs9, fa5, fa5
  FSGNJ.S ft8, fa6, fa6
  ADD t6, a7, zero
  ADDI t0, zero, 1080
  MULW t0, t6, t0
  LD t4, 256(sp)
  ADD t1, t4, t0
  ADD t1, t1, s7
  LD t4, 328(sp)
  ADD t0, t4, t0
  ADD t0, t0, s7
  FLW ft9, 0(t0)
  FLW ft4, 56(sp)
  FMUL.S ft9, ft4, ft9
  FLW ft4, 16(sp)
  FMUL.S ft8, ft4, ft8
  FADD.S ft8, ft9, ft8
  FMUL.S ft9, fa0, fs9
  FADD.S ft8, ft8, ft9
  FLW ft4, 72(sp)
  FMUL.S fa7, ft4, fa7
  FADD.S fs10, ft8, fa7
  FSW fs10, 0(t1)
  FLW fs11, 0(t0)
  ADDIW s5, t6, 1
  # implict jump to bb38
bb38:
  LW t4, 96(sp)
  BLT s5, t4, bb39
  JAL zero, bb32
bb39:
  ADD a7, s5, zero
  FSGNJ.S fa6, fs11, fs11
  FSGNJ.S fa5, fs10, fs10
  FSGNJ.S fa4, fs9, fs9
  JAL zero, bb37
bb40:
  # implict jump to bb41
bb41:
  ADD a2, zero, zero
  # implict jump to bb42
bb42:
  ADD t4, a2, zero
  SW t4, 112(sp)
  LW t4, 88(sp)
  BLT zero, t4, bb46
  # implict jump to bb43
bb43:
  LW t3, 112(sp)
  ADDIW t4, t3, 1
  SW t4, 68(sp)
  # implict jump to bb44
bb44:
  LW t4, 68(sp)
  LW t3, 96(sp)
  BLT t4, t3, bb45
  JAL zero, bb3
bb45:
  LW t4, 68(sp)
  ADD a2, t4, zero
  JAL zero, bb42
bb46:
  # implict jump to bb47
bb47:
  ADDI a4, zero, 1080
  LW t4, 112(sp)
  MULW a4, t4, a4
  LD t3, 328(sp)
  ADD t4, t3, a4
  SD t4, 352(sp)
  LD t3, 256(sp)
  ADD t4, t3, a4
  SD t4, 336(sp)
  LD t3, 368(sp)
  ADD t4, t3, a4
  SD t4, 408(sp)
  ADD t4, zero, zero
  SW t4, 116(sp)
  # implict jump to bb48
bb48:
  LW t4, 116(sp)
  ADD a5, t4, zero
  SLLIW a6, a5, 2
  LD t4, 352(sp)
  ADD a7, t4, a6
  LD t4, 336(sp)
  ADD t6, t4, a6
  FLW fa4, 0(t6)
  LD t4, 408(sp)
  ADD a6, t4, a6
  FLW fa5, 0(a6)
  FADD.S fa4, fa4, fa5
  FLW ft4, 20(sp)
  FMUL.S fa4, ft4, fa4
  FSW fa4, 0(a7)
  ADDIW s8, a5, 1
  # implict jump to bb49
bb49:
  LW t4, 88(sp)
  BLT s8, t4, bb50
  JAL zero, bb43
bb50:
  ADD t4, s8, zero
  SW t4, 116(sp)
  JAL zero, bb48
bb51:
  # implict jump to bb52
bb52:
  ADDI t2, zero, 1
  LW t3, 88(sp)
  SUBW t4, t3, t2
  SW t4, 84(sp)
  LW t4, 84(sp)
  SLT t2, t4, zero
  XORI t4, t2, 1
  SB t4, 0(sp)
  ADD t4, zero, zero
  SW t4, 76(sp)
  # implict jump to bb53
bb53:
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  LB t4, 0(sp)
  BNE t4, zero, bb57
  # implict jump to bb54
bb54:
  LW t3, 4(sp)
  ADDIW t4, t3, 1
  SW t4, 80(sp)
  # implict jump to bb55
bb55:
  LW t4, 80(sp)
  LW t3, 96(sp)
  BLT t4, t3, bb56
  JAL zero, bb2
bb56:
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 76(sp)
  JAL zero, bb53
bb57:
  LA a1, .CONSTANT.7.2
  FLW ft7, 0(a1)
  LA a1, .CONSTANT.7.2
  FLW fa1, 0(a1)
  FSGNJ.S ft7, ft7, fa1
  LA a1, .CONSTANT.7.2
  FLW fa1, 0(a1)
  LA a1, .CONSTANT.7.2
  FLW fa2, 0(a1)
  FSGNJ.S fa1, fa1, fa2
  LA a1, .CONSTANT.7.2
  FLW fa2, 0(a1)
  LA a1, .CONSTANT.7.2
  FLW fa3, 0(a1)
  FSGNJ.S fa2, fa2, fa3
  LA a1, .CONSTANT.7.2
  FLW fa3, 0(a1)
  LA a1, .CONSTANT.7.2
  FLW fa4, 0(a1)
  FSGNJ.S fa3, fa3, fa4
  # implict jump to bb58
bb58:
  ADDI a1, zero, 1080
  LW t4, 4(sp)
  MULW a1, t4, a1
  LD t3, 368(sp)
  ADD t4, t3, a1
  SD t4, 320(sp)
  LD t3, 312(sp)
  ADD t4, t3, a1
  SD t4, 376(sp)
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  # implict jump to bb59
bb59:
  FSGNJ.S fs8, ft7, ft7
  FSGNJ.S fa4, fa1, fa1
  FSGNJ.S fs7, fa2, fa2
  FSGNJ.S fa5, fa3, fa3
  LW t4, 64(sp)
  ADD a2, t4, zero
  SLLIW a3, a2, 2
  LD t4, 320(sp)
  ADD a4, t4, a3
  FLW ft4, 32(sp)
  FMUL.S fa6, ft4, fs7
  FLW ft4, 40(sp)
  FMUL.S fa5, ft4, fa5
  FADD.S fa5, fa6, fa5
  FMUL.S fa6, fa0, fs8
  FADD.S fa5, fa5, fa6
  FLW ft4, 72(sp)
  FMUL.S fa4, ft4, fa4
  FADD.S fs3, fa5, fa4
  FSW fs3, 0(a4)
  LD t4, 376(sp)
  ADD a3, t4, a3
  FLW fs1, 0(a3)
  ADDI a3, zero, 1
  SUBW t4, a2, a3
  SW t4, 92(sp)
  # implict jump to bb60
bb60:
  LW t4, 92(sp)
  SLT a2, t4, zero
  XORI a2, a2, 1
  BNE a2, zero, bb61
  JAL zero, bb54
bb61:
  LW t3, 92(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  FSGNJ.S fa3, fs7, fs7
  FSGNJ.S fa2, fs1, fs1
  FSGNJ.S fa1, fs8, fs8
  FSGNJ.S ft7, fs3, fs3
  JAL zero, bb59
bb62:
  # implict jump to bb63
bb63:
  ADDI t4, zero, 0
  SW t4, 108(sp)
  ADD t4, zero, zero
  SW t4, 60(sp)
  # implict jump to bb64
bb64:
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LW t4, 108(sp)
  LW t3, 88(sp)
  BLT t4, t3, bb68
  # implict jump to bb65
bb65:
  LW t3, 12(sp)
  ADDIW t4, t3, 1
  SW t4, 100(sp)
  # implict jump to bb66
bb66:
  LW t4, 100(sp)
  LW t3, 96(sp)
  BLT t4, t3, bb67
  JAL zero, bb1
bb67:
  LW t3, 100(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  JAL zero, bb64
bb68:
  LA t1, .CONSTANT.7.2
  FLW ft2, 0(t1)
  LA t1, .CONSTANT.7.2
  FLW ft5, 0(t1)
  FSGNJ.S ft2, ft2, ft5
  LA t1, .CONSTANT.7.2
  FLW ft5, 0(t1)
  LA t1, .CONSTANT.7.2
  FLW ft6, 0(t1)
  FSGNJ.S ft5, ft5, ft6
  LA t1, .CONSTANT.7.2
  FLW ft6, 0(t1)
  LA t1, .CONSTANT.7.2
  FLW ft7, 0(t1)
  FSGNJ.S ft6, ft6, ft7
  # implict jump to bb69
bb69:
  ADDI t1, zero, 1080
  LW t4, 12(sp)
  MULW t1, t4, t1
  LD t3, 256(sp)
  ADD t4, t3, t1
  SD t4, 288(sp)
  LD t3, 312(sp)
  ADD t4, t3, t1
  SD t4, 280(sp)
  ADD t4, zero, zero
  SW t4, 8(sp)
  # implict jump to bb70
bb70:
  FSGNJ.S ft7, ft2, ft2
  FSGNJ.S fs2, ft5, ft5
  FSGNJ.S fa1, ft6, ft6
  LW t4, 8(sp)
  ADD t2, t4, zero
  SLLIW a0, t2, 2
  LD t4, 288(sp)
  ADD a1, t4, a0
  LD t4, 280(sp)
  ADD a0, t4, a0
  FLW fa2, 0(a0)
  FLW ft4, 56(sp)
  FMUL.S fa2, ft4, fa2
  FLW ft4, 16(sp)
  FMUL.S fa1, ft4, fa1
  FADD.S fa1, fa2, fa1
  FMUL.S fa2, fa0, fs2
  FADD.S fa1, fa1, fa2
  FLW ft4, 72(sp)
  FMUL.S ft7, ft4, ft7
  FADD.S ft4, fa1, ft7
  FSW ft4, 52(sp)
  FLW ft4, 52(sp)
  FSW ft4, 0(a1)
  FLW fs6, 0(a0)
  ADDIW t4, t2, 1
  SW t4, 104(sp)
  # implict jump to bb71
bb71:
  LW t4, 104(sp)
  LW t3, 88(sp)
  BLT t4, t3, bb72
  JAL zero, bb65
bb72:
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  FSGNJ.S ft6, fs6, fs6
  FLW ft4, 52(sp)
  FLW ft3, 52(sp)
  FSGNJ.S ft5, ft4, ft3
  FSGNJ.S ft2, fs2, fs2
  JAL zero, bb70
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
  BLT s0, zero, bb79
  # implict jump to bb74
bb74:
  SLTIU s1, s0, 1
  BNE s1, zero, bb78
  # implict jump to bb75
bb75:
  BLT zero, s0, bb77
  # implict jump to bb76
bb76:
bb77:
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
bb78:
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
bb79:
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
