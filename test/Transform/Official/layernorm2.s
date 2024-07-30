.global sqrt
.global main
.global myAbs
.section .bss
a:
.space 4000000


.section .data

.CONSTANT.7.0:
.word 0x3a83126f
.CONSTANT.7.1:
.word 0x3c23d70a
.section .text
sqrt:
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs0, 16(sp)
  FSD fs1, 24(sp)
  FSD fs2, 32(sp)
  FSD fs3, 40(sp)
  FSD fs4, 48(sp)
  FSD fs5, 56(sp)
  FSD fs6, 64(sp)
  FSD fs7, 72(sp)
  FSD fs8, 80(sp)
  FSD fs9, 88(sp)
  FSD fs10, 96(sp)
  FSD fs11, 104(sp)
  FSGNJ.D fs0, fa0, fa0
  ADDI s0, zero, 0
  FCVT.S.W fs1, s0
  FADD.S fs2, fs1, fs0
  ADDI s0, zero, 2
  FCVT.S.W fs3, s0
  FDIV.S fs2, fs2, fs3
  FSGNJ.S fs4, fs0, fs0
  FSGNJ.S fs5, fs1, fs1
  # implict jump to bb1
bb1:
  FSGNJ.S fs6, fs5, fs5
  FSGNJ.S fs7, fs4, fs4
  FSGNJ.S fs8, fs2, fs2
  FMUL.S fs9, fs8, fs8
  FSUB.S fs10, fs9, fs0
  FLT.S s0, fs10, fs1
  BNE s0, zero, bb9
  # implict jump to bb2
bb2:
  FSGNJ.S fs11, fs10, fs10
  # implict jump to bb3
bb3:
  LA s0, .CONSTANT.7.0
  FLW fs10, 0(s0)
  FLT.S s0, fs10, fs11
  BNE s0, zero, bb5
  # implict jump to bb4
bb4:
  FSGNJ.S fa0, fs8, fs8
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  FLD fs2, 32(sp)
  FLD fs3, 40(sp)
  FLD fs4, 48(sp)
  FLD fs5, 56(sp)
  FLD fs6, 64(sp)
  FLD fs7, 72(sp)
  FLD fs8, 80(sp)
  FLD fs9, 88(sp)
  FLD fs10, 96(sp)
  FLD fs11, 104(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb5:
  FLT.S s0, fs0, fs9
  BNE s0, zero, bb8
  # implict jump to bb6
bb6:
  FADD.S fs9, fs8, fs7
  FDIV.S fs9, fs9, fs3
  FSGNJ.S fs10, fs8, fs8
  # implict jump to bb7
bb7:
  FSGNJ.S fs2, fs9, fs9
  FSGNJ.S fs4, fs7, fs7
  FSGNJ.S fs5, fs10, fs10
  JAL zero, bb1
bb8:
  FADD.S fs11, fs8, fs6
  FDIV.S fs11, fs11, fs3
  FSGNJ.S fs9, fs11, fs11
  FSGNJ.S fs7, fs8, fs8
  FSGNJ.S fs10, fs6, fs6
  JAL zero, bb7
bb9:
  FSGNJN.S fs10, fs10, fs10
  FSGNJ.S fs11, fs10, fs10
  JAL zero, bb3
main:
  LUI t0, 1048574
  ADDIW t0, t0, -160
  ADD sp, sp, t0
  SD ra, 104(sp)
  SD s0, 112(sp)
  SD s1, 120(sp)
  SD s2, 128(sp)
  SD s3, 136(sp)
  SD s4, 144(sp)
  SD s5, 152(sp)
  SD s6, 160(sp)
  SD s7, 168(sp)
  SD s8, 176(sp)
  SD s9, 184(sp)
  SD s10, 192(sp)
  SD s11, 200(sp)
  FSD fs0, 208(sp)
  FSD fs1, 216(sp)
  FSD fs2, 224(sp)
  FSD fs3, 232(sp)
  FSD fs4, 240(sp)
  FSD fs5, 248(sp)
  FSD fs6, 256(sp)
  FSD fs7, 264(sp)
  FSD fs8, 272(sp)
  FSD fs9, 280(sp)
  FSD fs10, 288(sp)
  FSD fs11, 336(sp)
  ADDI s0, zero, 0
  FCVT.S.W ft4, s0
  FSW ft4, 76(sp)
  ADD t4, zero, zero
  SW t4, 88(sp)
  # implict jump to bb11
bb11:
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 92(sp)
  LW t4, 92(sp)
  SLTI s2, t4, 1000
  BNE s2, zero, bb58
  # implict jump to bb12
bb12:
  ADDI a0, zero, 42
  CALL _sysy_starttime
  ADD s2, zero, zero
  FLW ft4, 76(sp)
  FLW ft3, 76(sp)
  FSGNJ.S fs1, ft4, ft3
  # implict jump to bb13
bb13:
  FSGNJ.S ft4, fs1, fs1
  FSW ft4, 72(sp)
  ADD t4, s2, zero
  SW t4, 80(sp)
  ADD t4, zero, zero
  SW t4, 60(sp)
  # implict jump to bb14
bb14:
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 84(sp)
  LW t4, 84(sp)
  SLLIW s6, t4, 2
  ADDI t4, sp, 344
  ADD t4, t4, s6
  SD t4, 320(sp)
  FLW ft4, 76(sp)
  LD t4, 320(sp)
  FSW ft4, 0(t4)
  LUI s7, 1
  ADDIW s7, s7, -96
  LW t4, 84(sp)
  MULW s7, t4, s7
  LA s8, a
  ADD t4, s8, s7
  SD t4, 328(sp)
  ADD t4, zero, zero
  SW t4, 64(sp)
  # implict jump to bb15
bb15:
  LW t4, 64(sp)
  ADD s9, t4, zero
  LD t4, 320(sp)
  FLW fs3, 0(t4)
  SLLIW s10, s9, 2
  LD t4, 328(sp)
  ADD s10, t4, s10
  FLW fs4, 0(s10)
  FADD.S fs3, fs3, fs4
  LD t4, 320(sp)
  FSW fs3, 0(t4)
  ADDIW t4, s9, 1
  SW t4, 0(sp)
  LW t4, 0(sp)
  SLTI s10, t4, 1000
  BNE s10, zero, bb57
  # implict jump to bb16
bb16:
  # implict jump to bb17
bb17:
  LD t4, 320(sp)
  FLW fs3, 0(t4)
  ADDI s10, zero, 1000
  FCVT.S.W fs4, s10
  FDIV.S fs3, fs3, fs4
  LD t4, 320(sp)
  FSW fs3, 0(t4)
  LW t3, 84(sp)
  ADDIW t4, t3, 1
  SW t4, 56(sp)
  LW t4, 56(sp)
  SLTI s11, t4, 1000
  BNE s11, zero, bb56
  # implict jump to bb18
bb18:
  # implict jump to bb19
bb19:
  ADD t4, zero, zero
  SW t4, 16(sp)
  # implict jump to bb20
bb20:
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LW t4, 32(sp)
  SLLIW s1, t4, 2
  LUI t4, 1
  ADDIW t4, t4, 248
  ADD t4, t4, sp
  ADD t4, t4, s1
  SD t4, 304(sp)
  FLW ft4, 76(sp)
  LD t4, 304(sp)
  FSW ft4, 0(t4)
  LUI s6, 1
  ADDIW s6, s6, -96
  LW t4, 32(sp)
  MULW s6, t4, s6
  LA s5, a
  ADD t4, s5, s6
  SD t4, 312(sp)
  ADDI t5, sp, 344
  ADD s1, t5, s1
  FLW ft4, 0(s1)
  FSW ft4, 68(sp)
  ADD t4, zero, zero
  SW t4, 28(sp)
  # implict jump to bb21
bb21:
  LW t4, 28(sp)
  ADD s6, t4, zero
  LD t4, 304(sp)
  FLW fs4, 0(t4)
  SLLIW s3, s6, 2
  LD t4, 312(sp)
  ADD s3, t4, s3
  FLW fs5, 0(s3)
  FLW ft4, 68(sp)
  FSUB.S fs5, fs5, ft4
  FMUL.S fs5, fs5, fs5
  FADD.S fs4, fs4, fs5
  LD t4, 304(sp)
  FSW fs4, 0(t4)
  ADDIW t4, s6, 1
  SW t4, 20(sp)
  LW t4, 20(sp)
  SLTI s6, t4, 1000
  BNE s6, zero, bb55
  # implict jump to bb22
bb22:
  # implict jump to bb23
bb23:
  LD t4, 304(sp)
  FLW fs4, 0(t4)
  ADDI s6, zero, 1000
  FCVT.S.W fs5, s6
  FDIV.S fs4, fs4, fs5
  LD t4, 304(sp)
  FSW fs4, 0(t4)
  LA s6, .CONSTANT.7.1
  FLW fs5, 0(s6)
  FADD.S ft4, fs4, fs5
  FSW ft4, 44(sp)
  FLW ft4, 76(sp)
  FLW ft3, 44(sp)
  FADD.S fs5, ft4, ft3
  ADDI s6, zero, 2
  FCVT.S.W ft4, s6
  FSW ft4, 48(sp)
  FLW ft4, 48(sp)
  FDIV.S fs5, fs5, ft4
  FSGNJ.S ft4, fs5, fs5
  FSW ft4, 24(sp)
  FLW ft3, 44(sp)
  FLW ft4, 44(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 36(sp)
  FLW ft3, 76(sp)
  FLW ft4, 76(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 40(sp)
  # implict jump to bb24
bb24:
  FLW ft3, 40(sp)
  FLW ft4, 40(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 8(sp)
  FLW ft4, 36(sp)
  FLW ft3, 36(sp)
  FSGNJ.S fs10, ft4, ft3
  FLW ft3, 24(sp)
  FLW ft4, 24(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 52(sp)
  FLW ft4, 52(sp)
  FLW ft3, 52(sp)
  FMUL.S fs0, ft4, ft3
  FLW ft4, 44(sp)
  FSUB.S fs2, fs0, ft4
  FLW ft4, 76(sp)
  FLT.S s6, fs2, ft4
  BNE s6, zero, bb54
  # implict jump to bb25
bb25:
  FSGNJ.S fs3, fs2, fs2
  # implict jump to bb26
bb26:
  LA s6, .CONSTANT.7.0
  FLW fs2, 0(s6)
  FLT.S s6, fs2, fs3
  BNE s6, zero, bb50
  # implict jump to bb27
bb27:
  FLW ft4, 52(sp)
  LD t4, 304(sp)
  FSW ft4, 0(t4)
  LW t3, 32(sp)
  ADDIW t4, t3, 1
  SW t4, 12(sp)
  LW t4, 12(sp)
  SLTI s8, t4, 1000
  BNE s8, zero, bb49
  # implict jump to bb28
bb28:
  # implict jump to bb29
bb29:
  ADD s8, zero, zero
  FLW ft4, 72(sp)
  FLW ft3, 72(sp)
  FSGNJ.S fs2, ft4, ft3
  # implict jump to bb30
bb30:
  FSGNJ.S fs3, fs2, fs2
  ADD t4, s8, zero
  SW t4, 4(sp)
  LUI s4, 1
  ADDIW s4, s4, -96
  LW t4, 4(sp)
  MULW s4, t4, s4
  LA s10, a
  ADD t4, s10, s4
  SD t4, 296(sp)
  LW t4, 4(sp)
  SLLIW s10, t4, 2
  ADDI t5, sp, 344
  ADD s5, t5, s10
  FLW fs6, 0(s5)
  LUI t5, 1
  ADDIW t5, t5, 248
  ADD t5, t5, sp
  ADD s5, t5, s10
  FLW fs4, 0(s5)
  ADD t4, zero, zero
  SW t4, 96(sp)
  # implict jump to bb31
bb31:
  FSGNJ.S fs8, fs3, fs3
  LW t4, 96(sp)
  ADD s10, t4, zero
  SLLIW s7, s10, 2
  LD t4, 296(sp)
  ADD s7, t4, s7
  FLW fs7, 0(s7)
  FSUB.S fs7, fs7, fs6
  FDIV.S fs7, fs7, fs4
  FSW fs7, 0(s7)
  FADD.S fs7, fs8, fs7
  ADDIW s7, s10, 1
  SLTI s10, s7, 1000
  BNE s10, zero, bb48
  # implict jump to bb32
bb32:
  # implict jump to bb33
bb33:
  LW t4, 4(sp)
  ADDIW s10, t4, 1
  SLTI s0, s10, 1000
  BNE s0, zero, bb47
  # implict jump to bb34
bb34:
  # implict jump to bb35
bb35:
  LW t4, 80(sp)
  ADDIW s0, t4, 1
  SLTI s1, s0, 100
  BNE s1, zero, bb46
  # implict jump to bb36
bb36:
  # implict jump to bb37
bb37:
  ADD s1, zero, zero
  FSGNJ.S fs8, fs7, fs7
  # implict jump to bb38
bb38:
  FSGNJ.S fs5, fs8, fs8
  ADD s3, s1, zero
  LUI s11, 1
  ADDIW s11, s11, -96
  MULW s11, s3, s11
  LA s6, a
  ADD s6, s6, s11
  ADD s11, zero, zero
  # implict jump to bb39
bb39:
  FSGNJ.S fs9, fs5, fs5
  ADD s4, s11, zero
  SLLIW s9, s4, 2
  ADD s9, s6, s9
  FLW fs11, 0(s9)
  FADD.S fs9, fs9, fs11
  ADDIW s4, s4, 1
  SLTI s9, s4, 1000
  BNE s9, zero, bb45
  # implict jump to bb40
bb40:
  # implict jump to bb41
bb41:
  ADDIW s9, s3, 1
  SLTI s5, s9, 1000
  BNE s5, zero, bb44
  # implict jump to bb42
bb42:
  # implict jump to bb43
bb43:
  ADDI a0, zero, 95
  CALL _sysy_stoptime
  FSGNJ.S fa0, fs9, fs9
  CALL putfloat
  ADD a0, zero, zero
  LD ra, 104(sp)
  LD s0, 112(sp)
  LD s1, 120(sp)
  LD s2, 128(sp)
  LD s3, 136(sp)
  LD s4, 144(sp)
  LD s5, 152(sp)
  LD s6, 160(sp)
  LD s7, 168(sp)
  LD s8, 176(sp)
  LD s9, 184(sp)
  LD s10, 192(sp)
  LD s11, 200(sp)
  FLD fs0, 208(sp)
  FLD fs1, 216(sp)
  FLD fs2, 224(sp)
  FLD fs3, 232(sp)
  FLD fs4, 240(sp)
  FLD fs5, 248(sp)
  FLD fs6, 256(sp)
  FLD fs7, 264(sp)
  FLD fs8, 272(sp)
  FLD fs9, 280(sp)
  FLD fs10, 288(sp)
  FLD fs11, 336(sp)
  LUI t0, 2
  ADDIW t0, t0, 160
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb44:
  ADD s1, s9, zero
  FSGNJ.S fs8, fs9, fs9
  JAL zero, bb38
bb45:
  ADD s11, s4, zero
  FSGNJ.S fs5, fs9, fs9
  JAL zero, bb39
bb46:
  ADD s2, s0, zero
  FSGNJ.S fs1, fs7, fs7
  JAL zero, bb13
bb47:
  ADD s8, s10, zero
  FSGNJ.S fs2, fs7, fs7
  JAL zero, bb30
bb48:
  ADD t4, s7, zero
  SW t4, 96(sp)
  FSGNJ.S fs3, fs7, fs7
  JAL zero, bb31
bb49:
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  JAL zero, bb20
bb50:
  FLW ft4, 44(sp)
  FLT.S s0, ft4, fs0
  BNE s0, zero, bb53
  # implict jump to bb51
bb51:
  FLW ft4, 52(sp)
  FADD.S fs0, ft4, fs10
  FLW ft4, 48(sp)
  FDIV.S fs0, fs0, ft4
  FSGNJ.S fs1, fs10, fs10
  FLW ft4, 52(sp)
  FLW ft3, 52(sp)
  FSGNJ.S fs2, ft4, ft3
  # implict jump to bb52
bb52:
  FSGNJ.S ft4, fs0, fs0
  FSW ft4, 24(sp)
  FSGNJ.S ft4, fs1, fs1
  FSW ft4, 36(sp)
  FSGNJ.S ft4, fs2, fs2
  FSW ft4, 40(sp)
  JAL zero, bb24
bb53:
  FLW ft4, 52(sp)
  FLW ft3, 8(sp)
  FADD.S fs3, ft4, ft3
  FLW ft4, 48(sp)
  FDIV.S fs3, fs3, ft4
  FSGNJ.S fs0, fs3, fs3
  FLW ft4, 52(sp)
  FLW ft3, 52(sp)
  FSGNJ.S fs1, ft4, ft3
  FLW ft4, 8(sp)
  FLW ft3, 8(sp)
  FSGNJ.S fs2, ft4, ft3
  JAL zero, bb52
bb54:
  FSGNJN.S fs2, fs2, fs2
  FSGNJ.S fs3, fs2, fs2
  JAL zero, bb26
bb55:
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  JAL zero, bb21
bb56:
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  JAL zero, bb14
bb57:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  JAL zero, bb15
bb58:
  LUI s0, 1
  ADDIW s0, s0, -96
  LW t4, 92(sp)
  MULW s0, t4, s0
  LA s1, a
  ADD s0, s1, s0
  ADD a0, s0, zero
  CALL getfarray
  ADD s0, a0, zero
  XORI s1, s0, 1000
  BNE s1, zero, bb60
  # implict jump to bb59
bb59:
  LW t4, 92(sp)
  ADDIW s1, t4, 1
  ADD t4, s1, zero
  SW t4, 88(sp)
  JAL zero, bb11
bb60:
  ADD a0, s0, zero
  LD ra, 104(sp)
  LD s0, 112(sp)
  LD s1, 120(sp)
  LD s2, 128(sp)
  LD s3, 136(sp)
  LD s4, 144(sp)
  LD s5, 152(sp)
  LD s6, 160(sp)
  LD s7, 168(sp)
  LD s8, 176(sp)
  LD s9, 184(sp)
  LD s10, 192(sp)
  LD s11, 200(sp)
  FLD fs0, 208(sp)
  FLD fs1, 216(sp)
  FLD fs2, 224(sp)
  FLD fs3, 232(sp)
  FLD fs4, 240(sp)
  FLD fs5, 248(sp)
  FLD fs6, 256(sp)
  FLD fs7, 264(sp)
  FLD fs8, 272(sp)
  FLD fs9, 280(sp)
  FLD fs10, 288(sp)
  FLD fs11, 336(sp)
  LUI t0, 2
  ADDIW t0, t0, 160
  ADD sp, sp, t0
  JALR zero, 0(ra)
myAbs:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs0, 16(sp)
  FSD fs1, 24(sp)
  FSGNJ.D fs0, fa0, fa0
  FCVT.S.L fs1, zero
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb64
  # implict jump to bb62
bb62:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb63
bb63:
  FSGNJ.S fa0, fs1, fs1
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb64:
  FSGNJN.S fs0, fs0, fs0
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb63
