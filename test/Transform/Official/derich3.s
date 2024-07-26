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
  FSD fs1, 192(sp)
  FSD fs2, 200(sp)
  FSD fs3, 208(sp)
  FSD fs4, 216(sp)
  FSD fs0, 224(sp)
  FSD fs5, 232(sp)
  FSD fs10, 240(sp)
  FSD fs11, 248(sp)
  FSD fs6, 264(sp)
  FSD fs8, 272(sp)
  FSD fs9, 288(sp)
  FSD fs7, 312(sp)
  ADD t4, a0, zero
  SW t4, 68(sp)
  ADD t4, a1, zero
  SW t4, 60(sp)
  FSGNJ.D ft2, fa0, fa0
  ADD t4, a2, zero
  SD t4, 296(sp)
  ADD t4, a3, zero
  SD t4, 280(sp)
  ADD t4, a4, zero
  SD t4, 304(sp)
  ADD t4, a5, zero
  SD t4, 256(sp)
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
  FSW ft4, 64(sp)
  FLW ft4, 64(sp)
  FMUL.S ft7, ft4, ft7
  LA a7, .CONSTANT.7.0
  FLW fa2, 0(a7)
  FSUB.S fa2, ft2, fa2
  FMUL.S ft4, ft7, fa2
  FSW ft4, 0(sp)
  LA a7, .CONSTANT.7.0
  FLW fa3, 0(a7)
  FADD.S fa3, ft2, fa3
  FMUL.S ft4, ft7, fa3
  FSW ft4, 44(sp)
  FLW ft4, 64(sp)
  FLW ft3, 64(sp)
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
  FSW ft4, 72(sp)
  FLW ft3, 72(sp)
  FMUL.S ft4, fa3, ft3
  FSW ft4, 76(sp)
  FCVT.W.S a7, ft5, rtz
  LA t6, .CONSTANT.7.1
  FLW ft5, 0(t6)
  LA t6, .CONSTANT.7.1
  FLW fa3, 0(t6)
  FSGNJ.S fa0, ft5, fa3
  ADD a0, a7, zero
  CALL newPow
  FLW ft3, 72(sp)
  FLW ft4, 72(sp)
  FSGNJN.S ft4, ft3, ft4
  FSW ft4, 36(sp)
  ADDI t0, zero, 1
  FCVT.S.W ft4, t0
  FSW ft4, 16(sp)
  ADDI t0, zero, 0
  LW t4, 68(sp)
  BLT t0, t4, bb52
  # implict jump to bb1
bb1:
  ADDI a0, zero, 0
  LW t4, 68(sp)
  BLT a0, t4, bb43
  # implict jump to bb2
bb2:
  LW t4, 68(sp)
  BLT zero, t4, bb34
  # implict jump to bb3
bb3:
  LW t4, 60(sp)
  BLT zero, t4, bb25
  # implict jump to bb4
bb4:
  LW t4, 60(sp)
  BLT zero, t4, bb16
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
  FLD fs1, 192(sp)
  FLD fs2, 200(sp)
  FLD fs3, 208(sp)
  FLD fs4, 216(sp)
  FLD fs0, 224(sp)
  FLD fs5, 232(sp)
  FLD fs10, 240(sp)
  FLD fs11, 248(sp)
  FLD fs6, 264(sp)
  FLD fs8, 272(sp)
  FLD fs9, 288(sp)
  FLD fs7, 312(sp)
  ADDI sp, sp, 320
  JALR zero, 0(ra)
bb7:
  ADD s2, zero, zero
  # implict jump to bb8
bb8:
  ADD a1, s2, zero
  LW t4, 60(sp)
  BLT zero, t4, bb12
  # implict jump to bb9
bb9:
  ADDIW s3, a1, 1
  # implict jump to bb10
bb10:
  LW t4, 68(sp)
  BLT s3, t4, bb11
  JAL zero, bb6
bb11:
  ADD s2, s3, zero
  JAL zero, bb8
bb12:
  ADD a2, zero, zero
  # implict jump to bb13
bb13:
  ADD t6, a2, zero
  ADDI s7, zero, 1080
  MULW s7, a1, s7
  LD t4, 280(sp)
  ADD a0, t4, s7
  SLLIW s6, t6, 2
  ADD a0, a0, s6
  LD t4, 304(sp)
  ADD a4, t4, s7
  ADD a4, a4, s6
  FLW ft0, 0(a4)
  LD t4, 256(sp)
  ADD s7, t4, s7
  ADD s6, s7, s6
  FLW ft1, 0(s6)
  FADD.S ft0, ft0, ft1
  FLW ft4, 16(sp)
  FMUL.S ft0, ft4, ft0
  FSW ft0, 0(a0)
  ADDIW s0, t6, 1
  # implict jump to bb14
bb14:
  LW t4, 60(sp)
  BLT s0, t4, bb15
  JAL zero, bb9
bb15:
  ADD a2, s0, zero
  JAL zero, bb13
bb16:
  ADD s5, zero, zero
  # implict jump to bb17
bb17:
  ADD t0, s5, zero
  ADDI a7, zero, 1
  LW t4, 68(sp)
  SUBW a7, t4, a7
  SLT t6, a7, zero
  XORI t6, t6, 1
  BNE t6, zero, bb21
  # implict jump to bb18
bb18:
  ADDIW s4, t0, 1
  # implict jump to bb19
bb19:
  LW t4, 60(sp)
  BLT s4, t4, bb20
  JAL zero, bb5
bb20:
  ADD s5, s4, zero
  JAL zero, bb17
bb21:
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
  # implict jump to bb22
bb22:
  FSGNJ.S fs10, ft10, ft10
  FSGNJ.S ft11, ft9, ft9
  FSGNJ.S fs9, ft8, ft8
  FSGNJ.S ft1, fa7, fa7
  ADD t6, a7, zero
  ADDI s2, zero, 1080
  MULW s2, t6, s2
  LD t4, 256(sp)
  ADD a1, t4, s2
  SLLIW a2, t0, 2
  ADD a1, a1, a2
  FLW ft4, 44(sp)
  FMUL.S ft0, ft4, fs10
  FLW ft4, 76(sp)
  FMUL.S ft11, ft4, ft11
  FADD.S ft0, ft0, ft11
  FMUL.S ft11, fa0, fs9
  FADD.S ft0, ft0, ft11
  FLW ft4, 36(sp)
  FMUL.S ft1, ft4, ft1
  FADD.S fs11, ft0, ft1
  FSW fs11, 0(a1)
  LD t4, 280(sp)
  ADD s2, t4, s2
  ADD s2, s2, a2
  FLW fs4, 0(s2)
  ADDI s2, zero, 1
  SUBW s8, t6, s2
  # implict jump to bb23
bb23:
  SLT s2, s8, zero
  XORI s2, s2, 1
  BNE s2, zero, bb24
  JAL zero, bb18
bb24:
  ADD a7, s8, zero
  FSGNJ.S fa7, fs9, fs9
  FSGNJ.S ft8, fs11, fs11
  FSGNJ.S ft9, fs10, fs10
  FSGNJ.S ft10, fs4, fs4
  JAL zero, bb22
bb25:
  ADD t1, zero, zero
  # implict jump to bb26
bb26:
  ADD t2, t1, zero
  LW t4, 68(sp)
  BLT zero, t4, bb30
  # implict jump to bb27
bb27:
  ADDIW s10, t2, 1
  # implict jump to bb28
bb28:
  LW t4, 60(sp)
  BLT s10, t4, bb29
  JAL zero, bb4
bb29:
  ADD t1, s10, zero
  JAL zero, bb26
bb30:
  ADD a6, zero, zero
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
  # implict jump to bb31
bb31:
  FSGNJ.S fa7, fa6, fa6
  FSGNJ.S fs0, fa5, fa5
  FSGNJ.S ft8, fa4, fa4
  ADD a7, a6, zero
  ADDI t6, zero, 1080
  MULW t6, a7, t6
  LD t4, 304(sp)
  ADD s5, t4, t6
  SLLIW t0, t2, 2
  ADD s5, s5, t0
  LD t4, 280(sp)
  ADD t6, t4, t6
  ADD t0, t6, t0
  FLW ft9, 0(t0)
  FLW ft4, 64(sp)
  FMUL.S ft9, ft4, ft9
  FLW ft4, 0(sp)
  FMUL.S ft8, ft4, ft8
  FADD.S ft8, ft9, ft8
  FMUL.S ft9, fa0, fs0
  FADD.S ft8, ft8, ft9
  FLW ft4, 36(sp)
  FMUL.S fa7, ft4, fa7
  FADD.S ft4, ft8, fa7
  FSW ft4, 48(sp)
  FLW ft4, 48(sp)
  FSW ft4, 0(s5)
  FLW ft4, 0(t0)
  FSW ft4, 52(sp)
  ADDIW s11, a7, 1
  # implict jump to bb32
bb32:
  LW t4, 68(sp)
  BLT s11, t4, bb33
  JAL zero, bb27
bb33:
  ADD a6, s11, zero
  FLW ft4, 52(sp)
  FLW ft3, 52(sp)
  FSGNJ.S fa4, ft4, ft3
  FLW ft4, 48(sp)
  FLW ft3, 48(sp)
  FSGNJ.S fa5, ft4, ft3
  FSGNJ.S fa6, fs0, fs0
  JAL zero, bb31
bb34:
  ADD a3, zero, zero
  # implict jump to bb35
bb35:
  ADD t4, a3, zero
  SW t4, 84(sp)
  LW t4, 60(sp)
  BLT zero, t4, bb39
  # implict jump to bb36
bb36:
  LW t4, 84(sp)
  ADDIW s9, t4, 1
  # implict jump to bb37
bb37:
  LW t4, 68(sp)
  BLT s9, t4, bb38
  JAL zero, bb3
bb38:
  ADD a3, s9, zero
  JAL zero, bb35
bb39:
  ADD a5, zero, zero
  # implict jump to bb40
bb40:
  ADD a6, a5, zero
  ADDI a7, zero, 1080
  LW t4, 84(sp)
  MULW a7, t4, a7
  LD t4, 280(sp)
  ADD t6, t4, a7
  SLLIW t1, a6, 2
  ADD t6, t6, t1
  LD t4, 304(sp)
  ADD t2, t4, a7
  ADD t2, t2, t1
  FLW fa4, 0(t2)
  LD t4, 256(sp)
  ADD t2, t4, a7
  ADD t1, t2, t1
  FLW fa5, 0(t1)
  FADD.S fa4, fa4, fa5
  FLW ft4, 16(sp)
  FMUL.S fa4, ft4, fa4
  FSW fa4, 0(t6)
  ADDIW s1, a6, 1
  # implict jump to bb41
bb41:
  LW t4, 60(sp)
  BLT s1, t4, bb42
  JAL zero, bb36
bb42:
  ADD a5, s1, zero
  JAL zero, bb40
bb43:
  ADD t4, zero, zero
  SW t4, 56(sp)
  # implict jump to bb44
bb44:
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  ADDI a2, zero, 1
  LW t4, 60(sp)
  SUBW a2, t4, a2
  SLT a3, a2, zero
  XORI a3, a3, 1
  BNE a3, zero, bb48
  # implict jump to bb45
bb45:
  LW t3, 8(sp)
  ADDIW t4, t3, 1
  SW t4, 80(sp)
  # implict jump to bb46
bb46:
  LW t4, 80(sp)
  LW t3, 68(sp)
  BLT t4, t3, bb47
  JAL zero, bb2
bb47:
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  JAL zero, bb44
bb48:
  ADD t4, a2, zero
  SW t4, 4(sp)
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
  # implict jump to bb49
bb49:
  FSGNJ.S fs7, fa3, fa3
  FSGNJ.S fa4, fa2, fa2
  FSGNJ.S fs5, fa1, fa1
  FSGNJ.S fa5, ft7, ft7
  LW t4, 4(sp)
  ADD a3, t4, zero
  ADDI a4, zero, 1080
  LW t4, 8(sp)
  MULW a4, t4, a4
  LD t4, 256(sp)
  ADD a5, t4, a4
  SLLIW a6, a3, 2
  ADD a5, a5, a6
  FLW ft4, 44(sp)
  FMUL.S fa6, ft4, fs5
  FLW ft4, 76(sp)
  FMUL.S fa5, ft4, fa5
  FADD.S fa5, fa6, fa5
  FMUL.S fa6, fa0, fs7
  FADD.S fa5, fa5, fa6
  FLW ft4, 36(sp)
  FMUL.S fa4, ft4, fa4
  FADD.S fs8, fa5, fa4
  FSW fs8, 0(a5)
  LD t4, 296(sp)
  ADD a4, t4, a4
  ADD a4, a4, a6
  FLW fs6, 0(a4)
  ADDI a4, zero, 1
  SUBW t4, a3, a4
  SW t4, 40(sp)
  # implict jump to bb50
bb50:
  LW t4, 40(sp)
  SLT a3, t4, zero
  XORI a3, a3, 1
  BNE a3, zero, bb51
  JAL zero, bb45
bb51:
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  FSGNJ.S ft7, fs5, fs5
  FSGNJ.S fa1, fs6, fs6
  FSGNJ.S fa2, fs7, fs7
  FSGNJ.S fa3, fs8, fs8
  JAL zero, bb49
bb52:
  ADD t4, zero, zero
  SW t4, 20(sp)
  # implict jump to bb53
bb53:
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  ADDI t2, zero, 0
  LW t4, 60(sp)
  BLT t2, t4, bb57
  # implict jump to bb54
bb54:
  LW t3, 32(sp)
  ADDIW t4, t3, 1
  SW t4, 12(sp)
  # implict jump to bb55
bb55:
  LW t4, 12(sp)
  LW t3, 68(sp)
  BLT t4, t3, bb56
  JAL zero, bb1
bb56:
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  JAL zero, bb53
bb57:
  ADD t4, zero, zero
  SW t4, 28(sp)
  LA a0, .CONSTANT.7.2
  FLW ft2, 0(a0)
  LA a0, .CONSTANT.7.2
  FLW ft5, 0(a0)
  FSGNJ.S ft2, ft2, ft5
  LA a0, .CONSTANT.7.2
  FLW ft5, 0(a0)
  LA a0, .CONSTANT.7.2
  FLW ft6, 0(a0)
  FSGNJ.S ft5, ft5, ft6
  LA a0, .CONSTANT.7.2
  FLW ft6, 0(a0)
  LA a0, .CONSTANT.7.2
  FLW ft7, 0(a0)
  FSGNJ.S ft6, ft6, ft7
  # implict jump to bb58
bb58:
  FSGNJ.S ft7, ft6, ft6
  FSGNJ.S fs1, ft5, ft5
  FSGNJ.S fa1, ft2, ft2
  LW t4, 28(sp)
  ADD a0, t4, zero
  ADDI a1, zero, 1080
  LW t4, 32(sp)
  MULW a1, t4, a1
  LD t4, 304(sp)
  ADD a2, t4, a1
  SLLIW a3, a0, 2
  ADD a2, a2, a3
  LD t4, 296(sp)
  ADD a1, t4, a1
  ADD a1, a1, a3
  FLW fa2, 0(a1)
  FLW ft4, 64(sp)
  FMUL.S fa2, ft4, fa2
  FLW ft4, 0(sp)
  FMUL.S fa1, ft4, fa1
  FADD.S fa1, fa2, fa1
  FMUL.S fa2, fa0, fs1
  FADD.S fa1, fa1, fa2
  FLW ft4, 36(sp)
  FMUL.S ft7, ft4, ft7
  FADD.S fs2, fa1, ft7
  FSW fs2, 0(a2)
  FLW fs3, 0(a1)
  ADDIW t4, a0, 1
  SW t4, 24(sp)
  # implict jump to bb59
bb59:
  LW t4, 24(sp)
  LW t3, 60(sp)
  BLT t4, t3, bb60
  JAL zero, bb54
bb60:
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  FSGNJ.S ft2, fs3, fs3
  FSGNJ.S ft5, fs2, fs2
  FSGNJ.S ft6, fs1, fs1
  JAL zero, bb58
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
  BLT s0, zero, bb67
  # implict jump to bb62
bb62:
  SLTIU s1, s0, 1
  BNE s1, zero, bb66
  # implict jump to bb63
bb63:
  BLT zero, s0, bb65
  # implict jump to bb64
bb64:
bb65:
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
bb66:
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
bb67:
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
