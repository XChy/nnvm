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
  ADDI sp, sp, -320
  SD ra, 88(sp)
  SD s0, 96(sp)
  SD s1, 104(sp)
  SD s2, 112(sp)
  SD s3, 120(sp)
  SD s4, 128(sp)
  SD s5, 136(sp)
  SD s6, 144(sp)
  SD s7, 152(sp)
  SD s8, 160(sp)
  SD s9, 168(sp)
  SD s10, 176(sp)
  SD s11, 184(sp)
  FSD fs0, 192(sp)
  FSD fs1, 200(sp)
  FSD fs2, 208(sp)
  FSD fs3, 216(sp)
  FSD fs4, 224(sp)
  FSD fs7, 232(sp)
  FSD fs5, 240(sp)
  FSD fs6, 248(sp)
  FSD fs8, 256(sp)
  FSD fs9, 264(sp)
  FSD fs10, 272(sp)
  FSD fs11, 280(sp)
  ADD t4, a0, zero
  SW t4, 68(sp)
  ADD t4, a1, zero
  SW t4, 72(sp)
  FSGNJ.D ft2, fa0, fa0
  ADD t4, a2, zero
  SD t4, 288(sp)
  ADD t4, a3, zero
  SD t4, 304(sp)
  ADD t4, a4, zero
  SD t4, 312(sp)
  ADD t4, a5, zero
  SD t4, 296(sp)
  FSGNJN.S ft5, ft2, ft2
  ADDI a7, zero, 256
  FCVT.S.W ft6, a7
  FDIV.S ft7, ft5, ft6
  LA a7, .CONSTANT.7.0
  FLW fa1, 0(a7)
  FADD.S ft7, fa1, ft7
  FMUL.S ft7, ft7, ft7
  FMUL.S ft7, ft7, ft7
  FMUL.S ft7, ft7, ft7
  FMUL.S ft7, ft7, ft7
  FMUL.S ft7, ft7, ft7
  FMUL.S ft7, ft7, ft7
  FMUL.S ft7, ft7, ft7
  FMUL.S ft7, ft7, ft7
  LA a7, .CONSTANT.7.0
  FLW fa1, 0(a7)
  FSUB.S fa1, fa1, ft7
  FMUL.S fa1, fa1, fa1
  LA a7, .CONSTANT.7.1
  FLW fa2, 0(a7)
  FMUL.S fa2, fa2, ft2
  FMUL.S fa3, fa2, ft7
  LA a7, .CONSTANT.7.0
  FLW fa4, 0(a7)
  FADD.S fa3, fa4, fa3
  FDIV.S fa2, fa2, ft6
  LA a7, .CONSTANT.7.0
  FLW fa4, 0(a7)
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
  FSW ft4, 44(sp)
  FLW ft4, 44(sp)
  FMUL.S ft7, ft4, ft7
  LA a7, .CONSTANT.7.0
  FLW fa2, 0(a7)
  FSUB.S fa2, ft2, fa2
  FMUL.S ft4, ft7, fa2
  FSW ft4, 84(sp)
  LA a7, .CONSTANT.7.0
  FLW fa3, 0(a7)
  FADD.S fa3, ft2, fa3
  FMUL.S ft4, ft7, fa3
  FSW ft4, 56(sp)
  FLW ft4, 44(sp)
  FLW ft3, 44(sp)
  FSGNJN.S fa3, ft4, ft3
  LA a7, .CONSTANT.7.1
  FLW fa4, 0(a7)
  LA a7, .CONSTANT.7.1
  FLW fa5, 0(a7)
  FSGNJN.S fa4, fa4, fa5
  FMUL.S ft2, fa4, ft2
  FDIV.S ft2, ft2, ft6
  LA a7, .CONSTANT.7.0
  FLW ft6, 0(a7)
  FADD.S ft2, ft6, ft2
  FMUL.S ft2, ft2, ft2
  FMUL.S ft2, ft2, ft2
  FMUL.S ft2, ft2, ft2
  FMUL.S ft2, ft2, ft2
  FMUL.S ft2, ft2, ft2
  FMUL.S ft2, ft2, ft2
  FMUL.S ft2, ft2, ft2
  FMUL.S ft4, ft2, ft2
  FSW ft4, 0(sp)
  FLW ft3, 0(sp)
  FMUL.S ft4, fa3, ft3
  FSW ft4, 60(sp)
  FCVT.W.S a7, ft5, rtz
  LA t6, .CONSTANT.7.1
  FLW ft5, 0(t6)
  LA t6, .CONSTANT.7.1
  FLW fa3, 0(t6)
  FSGNJ.S fa0, ft5, fa3
  ADD a0, a7, zero
  CALL newPow
  FLW ft3, 0(sp)
  FLW ft4, 0(sp)
  FSGNJN.S ft4, ft3, ft4
  FSW ft4, 8(sp)
  ADDI t0, zero, 1
  FCVT.S.W ft4, t0
  FSW ft4, 24(sp)
  ADDI t0, zero, 0
  LW t4, 68(sp)
  BLT t0, t4, bb62
  # implict jump to bb1
bb1:
  ADDI a0, zero, 0
  LW t4, 68(sp)
  BLT a0, t4, bb51
  # implict jump to bb2
bb2:
  LW t4, 68(sp)
  BLT zero, t4, bb40
  # implict jump to bb3
bb3:
  LW t4, 72(sp)
  BLT zero, t4, bb29
  # implict jump to bb4
bb4:
  LW t4, 72(sp)
  BLT zero, t4, bb18
  # implict jump to bb5
bb5:
  LW t4, 68(sp)
  BLT zero, t4, bb7
  # implict jump to bb6
bb6:
  LD ra, 88(sp)
  LD s0, 96(sp)
  LD s1, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD s5, 136(sp)
  LD s6, 144(sp)
  LD s7, 152(sp)
  LD s8, 160(sp)
  LD s9, 168(sp)
  LD s10, 176(sp)
  LD s11, 184(sp)
  FLD fs0, 192(sp)
  FLD fs1, 200(sp)
  FLD fs2, 208(sp)
  FLD fs3, 216(sp)
  FLD fs4, 224(sp)
  FLD fs7, 232(sp)
  FLD fs5, 240(sp)
  FLD fs6, 248(sp)
  FLD fs8, 256(sp)
  FLD fs9, 264(sp)
  FLD fs10, 272(sp)
  FLD fs11, 280(sp)
  ADDI sp, sp, 320
  JALR zero, 0(ra)
bb7:
  # implict jump to bb8
bb8:
  ADD s10, zero, zero
  # implict jump to bb9
bb9:
  ADD a1, s10, zero
  LW t4, 72(sp)
  BLT zero, t4, bb13
  # implict jump to bb10
bb10:
  ADDIW s0, a1, 1
  # implict jump to bb11
bb11:
  LW t4, 68(sp)
  BLT s0, t4, bb12
  JAL zero, bb6
bb12:
  ADD s10, s0, zero
  JAL zero, bb9
bb13:
  # implict jump to bb14
bb14:
  ADD a2, zero, zero
  # implict jump to bb15
bb15:
  ADD t6, a2, zero
  ADDI s8, zero, 1080
  MULW s8, a1, s8
  LD t4, 304(sp)
  ADD a0, t4, s8
  SLLIW s6, t6, 2
  ADD a0, a0, s6
  LD t4, 312(sp)
  ADD a4, t4, s8
  ADD a4, a4, s6
  FLW ft0, 0(a4)
  LD t4, 296(sp)
  ADD s8, t4, s8
  ADD s6, s8, s6
  FLW ft1, 0(s6)
  FADD.S ft0, ft0, ft1
  FLW ft4, 24(sp)
  FMUL.S ft0, ft4, ft0
  FSW ft0, 0(a0)
  ADDIW s2, t6, 1
  # implict jump to bb16
bb16:
  LW t4, 72(sp)
  BLT s2, t4, bb17
  JAL zero, bb10
bb17:
  ADD a2, s2, zero
  JAL zero, bb15
bb18:
  # implict jump to bb19
bb19:
  ADD s5, zero, zero
  # implict jump to bb20
bb20:
  ADD t0, s5, zero
  ADDI a7, zero, 1
  LW t4, 68(sp)
  SUBW a7, t4, a7
  SLT t6, a7, zero
  XORI t6, t6, 1
  BNE t6, zero, bb24
  # implict jump to bb21
bb21:
  ADDIW s4, t0, 1
  # implict jump to bb22
bb22:
  LW t4, 72(sp)
  BLT s4, t4, bb23
  JAL zero, bb5
bb23:
  ADD s5, s4, zero
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
  # implict jump to bb26
bb26:
  FSGNJ.S fs1, fa7, fa7
  FSGNJ.S ft11, ft8, ft8
  FSGNJ.S ft4, ft9, ft9
  FSW ft4, 48(sp)
  FSGNJ.S ft1, ft10, ft10
  ADD t6, a7, zero
  ADDI s10, zero, 1080
  MULW s10, t6, s10
  LD t4, 296(sp)
  ADD a1, t4, s10
  SLLIW a2, t0, 2
  ADD a1, a1, a2
  FLW ft4, 56(sp)
  FMUL.S ft0, ft4, fs1
  FLW ft4, 60(sp)
  FMUL.S ft11, ft4, ft11
  FADD.S ft0, ft0, ft11
  FLW ft4, 48(sp)
  FMUL.S ft11, fa0, ft4
  FADD.S ft0, ft0, ft11
  FLW ft4, 8(sp)
  FMUL.S ft1, ft4, ft1
  FADD.S fs0, ft0, ft1
  FSW fs0, 0(a1)
  LD t4, 304(sp)
  ADD s10, t4, s10
  ADD s10, s10, a2
  FLW fs10, 0(s10)
  ADDI s10, zero, 1
  SUBW s11, t6, s10
  # implict jump to bb27
bb27:
  SLT s10, s11, zero
  XORI s10, s10, 1
  BNE s10, zero, bb28
  JAL zero, bb21
bb28:
  ADD a7, s11, zero
  FLW ft4, 48(sp)
  FLW ft3, 48(sp)
  FSGNJ.S ft10, ft4, ft3
  FSGNJ.S ft9, fs0, fs0
  FSGNJ.S ft8, fs1, fs1
  FSGNJ.S fa7, fs10, fs10
  JAL zero, bb26
bb29:
  # implict jump to bb30
bb30:
  ADD t1, zero, zero
  # implict jump to bb31
bb31:
  ADD t2, t1, zero
  LW t4, 68(sp)
  BLT zero, t4, bb35
  # implict jump to bb32
bb32:
  ADDIW s7, t2, 1
  # implict jump to bb33
bb33:
  LW t4, 72(sp)
  BLT s7, t4, bb34
  JAL zero, bb4
bb34:
  ADD t1, s7, zero
  JAL zero, bb31
bb35:
  LA a6, .CONSTANT.7.2
  FLW fa4, 0(a6)
  LA a6, .CONSTANT.7.2
  FLW fa5, 0(a6)
  FSGNJ.S fa4, fa4, fa5
  LA a6, .CONSTANT.7.2
  FLW fa5, 0(a6)
  LA a6, .CONSTANT.7.2
  FLW fa6, 0(a6)
  FSGNJ.S fa5, fa5, fa6
  LA a6, .CONSTANT.7.2
  FLW fa6, 0(a6)
  LA a6, .CONSTANT.7.2
  FLW fa7, 0(a6)
  FSGNJ.S fa6, fa6, fa7
  # implict jump to bb36
bb36:
  ADD a6, zero, zero
  # implict jump to bb37
bb37:
  FSGNJ.S fa7, fa4, fa4
  FSGNJ.S fs11, fa5, fa5
  FSGNJ.S ft8, fa6, fa6
  ADD a7, a6, zero
  ADDI t6, zero, 1080
  MULW t6, a7, t6
  LD t4, 312(sp)
  ADD s5, t4, t6
  SLLIW t0, t2, 2
  ADD s5, s5, t0
  LD t4, 304(sp)
  ADD t6, t4, t6
  ADD t0, t6, t0
  FLW ft9, 0(t0)
  FLW ft4, 44(sp)
  FMUL.S ft9, ft4, ft9
  FLW ft4, 84(sp)
  FMUL.S ft8, ft4, ft8
  FADD.S ft8, ft9, ft8
  FMUL.S ft9, fa0, fs11
  FADD.S ft8, ft8, ft9
  FLW ft4, 8(sp)
  FMUL.S fa7, ft4, fa7
  FADD.S fs3, ft8, fa7
  FSW fs3, 0(s5)
  FLW ft4, 0(t0)
  FSW ft4, 80(sp)
  ADDIW s3, a7, 1
  # implict jump to bb38
bb38:
  LW t4, 68(sp)
  BLT s3, t4, bb39
  JAL zero, bb32
bb39:
  ADD a6, s3, zero
  FLW ft4, 80(sp)
  FLW ft3, 80(sp)
  FSGNJ.S fa6, ft4, ft3
  FSGNJ.S fa5, fs3, fs3
  FSGNJ.S fa4, fs11, fs11
  JAL zero, bb37
bb40:
  # implict jump to bb41
bb41:
  ADD a3, zero, zero
  # implict jump to bb42
bb42:
  ADD t4, a3, zero
  SW t4, 76(sp)
  LW t4, 72(sp)
  BLT zero, t4, bb46
  # implict jump to bb43
bb43:
  LW t4, 76(sp)
  ADDIW s1, t4, 1
  # implict jump to bb44
bb44:
  LW t4, 68(sp)
  BLT s1, t4, bb45
  JAL zero, bb3
bb45:
  ADD a3, s1, zero
  JAL zero, bb42
bb46:
  # implict jump to bb47
bb47:
  ADD a5, zero, zero
  # implict jump to bb48
bb48:
  ADD a6, a5, zero
  ADDI a7, zero, 1080
  LW t4, 76(sp)
  MULW a7, t4, a7
  LD t4, 304(sp)
  ADD t6, t4, a7
  SLLIW t1, a6, 2
  ADD t6, t6, t1
  LD t4, 312(sp)
  ADD t2, t4, a7
  ADD t2, t2, t1
  FLW fa4, 0(t2)
  LD t4, 296(sp)
  ADD t2, t4, a7
  ADD t1, t2, t1
  FLW fa5, 0(t1)
  FADD.S fa4, fa4, fa5
  FLW ft4, 24(sp)
  FMUL.S fa4, ft4, fa4
  FSW fa4, 0(t6)
  ADDIW s9, a6, 1
  # implict jump to bb49
bb49:
  LW t4, 72(sp)
  BLT s9, t4, bb50
  JAL zero, bb43
bb50:
  ADD a5, s9, zero
  JAL zero, bb48
bb51:
  # implict jump to bb52
bb52:
  ADD t4, zero, zero
  SW t4, 52(sp)
  # implict jump to bb53
bb53:
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  ADDI a2, zero, 1
  LW t4, 72(sp)
  SUBW a2, t4, a2
  SLT a3, a2, zero
  XORI a3, a3, 1
  BNE a3, zero, bb57
  # implict jump to bb54
bb54:
  LW t3, 16(sp)
  ADDIW t4, t3, 1
  SW t4, 64(sp)
  # implict jump to bb55
bb55:
  LW t4, 64(sp)
  LW t3, 68(sp)
  BLT t4, t3, bb56
  JAL zero, bb2
bb56:
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  JAL zero, bb53
bb57:
  LA a3, .CONSTANT.7.2
  FLW ft7, 0(a3)
  LA a3, .CONSTANT.7.2
  FLW fa1, 0(a3)
  FSGNJ.S ft7, ft7, fa1
  LA a3, .CONSTANT.7.2
  FLW fa1, 0(a3)
  LA a3, .CONSTANT.7.2
  FLW fa2, 0(a3)
  FSGNJ.S fa1, fa1, fa2
  LA a3, .CONSTANT.7.2
  FLW fa2, 0(a3)
  LA a3, .CONSTANT.7.2
  FLW fa3, 0(a3)
  FSGNJ.S fa2, fa2, fa3
  LA a3, .CONSTANT.7.2
  FLW fa3, 0(a3)
  LA a3, .CONSTANT.7.2
  FLW fa4, 0(a3)
  FSGNJ.S fa3, fa3, fa4
  # implict jump to bb58
bb58:
  ADD t4, a2, zero
  SW t4, 12(sp)
  # implict jump to bb59
bb59:
  FSGNJ.S fs9, ft7, ft7
  FSGNJ.S fa4, fa1, fa1
  FSGNJ.S fs8, fa2, fa2
  FSGNJ.S fa5, fa3, fa3
  LW t4, 12(sp)
  ADD a3, t4, zero
  ADDI a4, zero, 1080
  LW t4, 16(sp)
  MULW a4, t4, a4
  LD t4, 296(sp)
  ADD a5, t4, a4
  SLLIW a6, a3, 2
  ADD a5, a5, a6
  FLW ft4, 56(sp)
  FMUL.S fa6, ft4, fs8
  FLW ft4, 60(sp)
  FMUL.S fa5, ft4, fa5
  FADD.S fa5, fa6, fa5
  FMUL.S fa6, fa0, fs9
  FADD.S fa5, fa5, fa6
  FLW ft4, 8(sp)
  FMUL.S fa4, ft4, fa4
  FADD.S fs7, fa5, fa4
  FSW fs7, 0(a5)
  LD t4, 288(sp)
  ADD a4, t4, a4
  ADD a4, a4, a6
  FLW fs2, 0(a4)
  ADDI a4, zero, 1
  SUBW t4, a3, a4
  SW t4, 4(sp)
  # implict jump to bb60
bb60:
  LW t4, 4(sp)
  SLT a3, t4, zero
  XORI a3, a3, 1
  BNE a3, zero, bb61
  JAL zero, bb54
bb61:
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  FSGNJ.S fa3, fs8, fs8
  FSGNJ.S fa2, fs2, fs2
  FSGNJ.S fa1, fs9, fs9
  FSGNJ.S ft7, fs7, fs7
  JAL zero, bb59
bb62:
  # implict jump to bb63
bb63:
  ADD t4, zero, zero
  SW t4, 28(sp)
  # implict jump to bb64
bb64:
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  ADDI t2, zero, 0
  LW t4, 72(sp)
  BLT t2, t4, bb68
  # implict jump to bb65
bb65:
  LW t3, 40(sp)
  ADDIW t4, t3, 1
  SW t4, 20(sp)
  # implict jump to bb66
bb66:
  LW t4, 20(sp)
  LW t3, 68(sp)
  BLT t4, t3, bb67
  JAL zero, bb1
bb67:
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  JAL zero, bb64
bb68:
  LA t2, .CONSTANT.7.2
  FLW ft2, 0(t2)
  LA t2, .CONSTANT.7.2
  FLW ft5, 0(t2)
  FSGNJ.S ft2, ft2, ft5
  LA t2, .CONSTANT.7.2
  FLW ft5, 0(t2)
  LA t2, .CONSTANT.7.2
  FLW ft6, 0(t2)
  FSGNJ.S ft5, ft5, ft6
  LA t2, .CONSTANT.7.2
  FLW ft6, 0(t2)
  LA t2, .CONSTANT.7.2
  FLW ft7, 0(t2)
  FSGNJ.S ft6, ft6, ft7
  # implict jump to bb69
bb69:
  ADD t4, zero, zero
  SW t4, 36(sp)
  # implict jump to bb70
bb70:
  FSGNJ.S ft7, ft2, ft2
  FSGNJ.S fs4, ft5, ft5
  FSGNJ.S fa1, ft6, ft6
  LW t4, 36(sp)
  ADD a0, t4, zero
  ADDI a1, zero, 1080
  LW t4, 40(sp)
  MULW a1, t4, a1
  LD t4, 312(sp)
  ADD a2, t4, a1
  SLLIW a3, a0, 2
  ADD a2, a2, a3
  LD t4, 288(sp)
  ADD a1, t4, a1
  ADD a1, a1, a3
  FLW fa2, 0(a1)
  FLW ft4, 44(sp)
  FMUL.S fa2, ft4, fa2
  FLW ft4, 84(sp)
  FMUL.S fa1, ft4, fa1
  FADD.S fa1, fa2, fa1
  FMUL.S fa2, fa0, fs4
  FADD.S fa1, fa1, fa2
  FLW ft4, 8(sp)
  FMUL.S ft7, ft4, ft7
  FADD.S fs5, fa1, ft7
  FSW fs5, 0(a2)
  FLW fs6, 0(a1)
  ADDIW t4, a0, 1
  SW t4, 32(sp)
  # implict jump to bb71
bb71:
  LW t4, 32(sp)
  LW t3, 72(sp)
  BLT t4, t3, bb72
  JAL zero, bb65
bb72:
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  FSGNJ.S ft6, fs6, fs6
  FSGNJ.S ft5, fs5, fs5
  FSGNJ.S ft2, fs4, fs4
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
