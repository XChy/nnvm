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
  SD ra, 136(sp)
  SD s0, 144(sp)
  SD s1, 152(sp)
  SD s2, 160(sp)
  SD s3, 168(sp)
  SD s5, 176(sp)
  LUI t5, 1
  ADDIW t5, t5, 88
  ADD t5, t5, sp
  SD s4, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 8
  ADD t5, t5, sp
  SD s11, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 24
  ADD t5, t5, sp
  SD s6, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  SD s7, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 40
  ADD t5, t5, sp
  SD s8, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 48
  ADD t5, t5, sp
  SD s9, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 56
  ADD t5, t5, sp
  SD s10, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 64
  ADD t5, t5, sp
  FSD fs0, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 72
  ADD t5, t5, sp
  FSD fs1, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 80
  ADD t5, t5, sp
  FSD fs2, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 88
  ADD t5, t5, sp
  FSD fs3, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 96
  ADD t5, t5, sp
  FSD fs4, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 104
  ADD t5, t5, sp
  FSD fs5, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  FSD fs6, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 120
  ADD t5, t5, sp
  FSD fs7, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 128
  ADD t5, t5, sp
  FSD fs8, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 136
  ADD t5, t5, sp
  FSD fs9, 0(t5)
  LUI t0, 2
  ADDIW t0, t0, 144
  ADD t0, t0, sp
  FSD fs10, 0(t0)
  LUI t0, 2
  ADDIW t0, t0, 152
  ADD t0, t0, sp
  FSD fs11, 0(t0)
  ADDI t0, zero, 0
  FCVT.S.W ft4, t0
  FSW ft4, 24(sp)
  ADD t4, zero, zero
  SW t4, 96(sp)
  # implict jump to bb11
bb11:
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 92(sp)
  LW t4, 92(sp)
  SLTI t2, t4, 1000
  BNE t2, zero, bb85
  # implict jump to bb12
bb12:
  ADDI a0, zero, 42
  CALL _sysy_starttime
  SLTI s8, zero, 100
  BNE s8, zero, bb29
  # implict jump to bb13
bb13:
  FLW ft4, 24(sp)
  FLW ft3, 24(sp)
  FSGNJ.S fs6, ft4, ft3
  # implict jump to bb14
bb14:
  SLTI s2, zero, 1000
  BNE s2, zero, bb17
  # implict jump to bb15
bb15:
  FSGNJ.S fs2, fs6, fs6
  # implict jump to bb16
bb16:
  ADDI a0, zero, 95
  CALL _sysy_stoptime
  FSGNJ.S fa0, fs2, fs2
  CALL putfloat
  ADD a0, zero, zero
  LD ra, 136(sp)
  LD s0, 144(sp)
  LD s1, 152(sp)
  LD s2, 160(sp)
  LD s3, 168(sp)
  LD s5, 176(sp)
  LUI t5, 1
  ADDIW t5, t5, 88
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 8
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 24
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 40
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 48
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 56
  ADD t5, t5, sp
  LD s10, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 64
  ADD t5, t5, sp
  FLD fs0, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 72
  ADD t5, t5, sp
  FLD fs1, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 80
  ADD t5, t5, sp
  FLD fs2, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 88
  ADD t5, t5, sp
  FLD fs3, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 96
  ADD t5, t5, sp
  FLD fs4, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 104
  ADD t5, t5, sp
  FLD fs5, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  FLD fs6, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 120
  ADD t5, t5, sp
  FLD fs7, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 128
  ADD t5, t5, sp
  FLD fs8, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 136
  ADD t5, t5, sp
  FLD fs9, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 144
  ADD t5, t5, sp
  FLD fs10, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 152
  ADD t5, t5, sp
  FLD fs11, 0(t5)
  LUI t0, 2
  ADDIW t0, t0, 160
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb17:
  ADD s2, zero, zero
  FSGNJ.S fs5, fs6, fs6
  # implict jump to bb18
bb18:
  FSGNJ.S fs6, fs5, fs5
  ADD s3, s2, zero
  SLTI s5, zero, 1000
  BNE s5, zero, bb24
  # implict jump to bb19
bb19:
  FSGNJ.S fs8, fs6, fs6
  # implict jump to bb20
bb20:
  FSGNJ.S fs1, fs8, fs8
  ADDIW s1, s3, 1
  # implict jump to bb21
bb21:
  SLTI s7, s1, 1000
  BNE s7, zero, bb23
  # implict jump to bb22
bb22:
  FSGNJ.S fs2, fs1, fs1
  JAL zero, bb16
bb23:
  ADD s2, s1, zero
  FSGNJ.S fs5, fs1, fs1
  JAL zero, bb18
bb24:
  ADD s5, zero, zero
  # implict jump to bb25
bb25:
  FSGNJ.S fs9, fs6, fs6
  ADD s7, s5, zero
  LUI s9, 1
  ADDIW s9, s9, -96
  MULW s9, s3, s9
  LA s10, a
  ADD s9, s10, s9
  SLLIW s10, s7, 2
  ADD s9, s9, s10
  FLW fs10, 0(s9)
  FADD.S fs0, fs9, fs10
  ADDIW s0, s7, 1
  # implict jump to bb26
bb26:
  SLTI s7, s0, 1000
  BNE s7, zero, bb28
  # implict jump to bb27
bb27:
  FSGNJ.S fs8, fs0, fs0
  JAL zero, bb20
bb28:
  ADD s5, s0, zero
  FSGNJ.S fs6, fs0, fs0
  JAL zero, bb25
bb29:
  ADD s8, zero, zero
  ADD t4, zero, zero
  SW t4, 4(sp)
  FLW ft4, 24(sp)
  FLW ft3, 24(sp)
  FSGNJ.S fs7, ft4, ft3
  # implict jump to bb30
bb30:
  FSGNJ.S ft4, fs7, fs7
  FSW ft4, 28(sp)
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 108(sp)
  ADD s5, s8, zero
  SLTI s9, zero, 1000
  BNE s9, zero, bb73
  # implict jump to bb31
bb31:
  # implict jump to bb32
bb32:
  SLTI s2, zero, 1000
  BNE s2, zero, bb52
  # implict jump to bb33
bb33:
  ADD s2, s5, zero
  # implict jump to bb34
bb34:
  SLTI s7, zero, 1000
  BNE s7, zero, bb40
  # implict jump to bb35
bb35:
  FLW ft4, 28(sp)
  FLW ft3, 28(sp)
  FSGNJ.S fs10, ft4, ft3
  # implict jump to bb36
bb36:
  FSGNJ.S fs4, fs10, fs10
  ADD s4, s2, zero
  LW t4, 108(sp)
  ADDIW s6, t4, 1
  # implict jump to bb37
bb37:
  SLTI s2, s6, 100
  BNE s2, zero, bb39
  # implict jump to bb38
bb38:
  FSGNJ.S fs6, fs4, fs4
  JAL zero, bb14
bb39:
  ADD s8, s4, zero
  ADD t4, s6, zero
  SW t4, 4(sp)
  FSGNJ.S fs7, fs4, fs4
  JAL zero, bb30
bb40:
  ADD t4, zero, zero
  SW t4, 128(sp)
  FLW ft4, 28(sp)
  FLW ft3, 28(sp)
  FSGNJ.S fs11, ft4, ft3
  # implict jump to bb41
bb41:
  FSGNJ.S fs8, fs11, fs11
  LW t3, 128(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  SLTI s10, zero, 1000
  BNE s10, zero, bb47
  # implict jump to bb42
bb42:
  ADD s10, zero, zero
  FSGNJ.S fs9, fs8, fs8
  # implict jump to bb43
bb43:
  FSGNJ.S fs3, fs9, fs9
  ADD s3, s10, zero
  LW t3, 72(sp)
  ADDIW t4, t3, 1
  SW t4, 40(sp)
  # implict jump to bb44
bb44:
  LW t4, 40(sp)
  SLTI s5, t4, 1000
  BNE s5, zero, bb46
  # implict jump to bb45
bb45:
  ADD s2, s3, zero
  FSGNJ.S fs10, fs3, fs3
  JAL zero, bb36
bb46:
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 128(sp)
  FSGNJ.S fs11, fs3, fs3
  JAL zero, bb41
bb47:
  ADD t4, zero, zero
  SW t4, 76(sp)
  FSGNJ.S ft4, fs8, fs8
  FSW ft4, 8(sp)
  # implict jump to bb48
bb48:
  FLW ft4, 8(sp)
  FLW ft3, 8(sp)
  FSGNJ.S fs5, ft4, ft3
  LW t4, 76(sp)
  ADD s5, t4, zero
  LUI s9, 1
  ADDIW s9, s9, -96
  LW t4, 72(sp)
  MULW s9, t4, s9
  LA s11, a
  ADD s9, s11, s9
  SLLIW s11, s5, 2
  ADD s9, s9, s11
  FLW fs8, 0(s9)
  LW t4, 72(sp)
  SLLIW s11, t4, 2
  LUI t5, 1
  ADDIW t5, t5, 96
  ADD t5, t5, sp
  ADD s7, t5, s11
  FLW fs2, 0(s7)
  FSUB.S fs2, fs8, fs2
  ADDI t5, sp, 184
  ADD s7, t5, s11
  FLW fs8, 0(s7)
  FDIV.S fs2, fs2, fs8
  FSW fs2, 0(s9)
  FADD.S ft4, fs5, fs2
  FSW ft4, 84(sp)
  ADDIW t4, s5, 1
  SW t4, 80(sp)
  # implict jump to bb49
bb49:
  LW t4, 80(sp)
  SLTI s5, t4, 1000
  BNE s5, zero, bb51
  # implict jump to bb50
bb50:
  LW t4, 80(sp)
  ADD s10, t4, zero
  FLW ft4, 84(sp)
  FLW ft3, 84(sp)
  FSGNJ.S fs9, ft4, ft3
  JAL zero, bb43
bb51:
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 76(sp)
  FLW ft3, 84(sp)
  FLW ft4, 84(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 8(sp)
  JAL zero, bb48
bb52:
  ADD t4, zero, zero
  SW t4, 68(sp)
  # implict jump to bb53
bb53:
  LW t3, 68(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LW t3, 16(sp)
  SLLIW t4, t3, 2
  SW t4, 12(sp)
  LW t3, 12(sp)
  ADDI t4, sp, 184
  ADD t4, t4, t3
  LUI t5, 2
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  SD t4, 0(t5)
  FLW ft4, 24(sp)
  LUI t4, 2
  ADDIW t4, t4, 0
  ADD t4, t4, sp
  LD t4, 0(t4)
  FSW ft4, 0(t4)
  SLTI s11, zero, 1000
  BNE s11, zero, bb68
  # implict jump to bb54
bb54:
  ADD s11, zero, zero
  # implict jump to bb55
bb55:
  ADD t4, s11, zero
  SW t4, 88(sp)
  LUI t4, 2
  ADDIW t4, t4, 0
  ADD t4, t4, sp
  LD t4, 0(t4)
  FLW fs9, 0(t4)
  ADDI s7, zero, 1000
  FCVT.S.W fs10, s7
  FDIV.S fs9, fs9, fs10
  LUI t4, 2
  ADDIW t4, t4, 0
  ADD t4, t4, sp
  LD t4, 0(t4)
  FSW fs9, 0(t4)
  LA s7, .CONSTANT.7.1
  FLW fs10, 0(s7)
  FADD.S ft4, fs9, fs10
  FSW ft4, 36(sp)
  FLW ft4, 24(sp)
  FLW ft3, 36(sp)
  FADD.S fs10, ft4, ft3
  ADDI s7, zero, 2
  FCVT.S.W ft4, s7
  FSW ft4, 32(sp)
  FLW ft4, 32(sp)
  FDIV.S fs10, fs10, ft4
  FSGNJ.S ft4, fs10, fs10
  FSW ft4, 48(sp)
  FLW ft3, 36(sp)
  FLW ft4, 36(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 44(sp)
  FLW ft3, 24(sp)
  FLW ft4, 24(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 0(sp)
  # implict jump to bb56
bb56:
  FLW ft3, 0(sp)
  FLW ft4, 0(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 52(sp)
  FLW ft3, 44(sp)
  FLW ft4, 44(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 60(sp)
  FLW ft3, 48(sp)
  FLW ft4, 48(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 56(sp)
  FLW ft3, 56(sp)
  FLW ft4, 56(sp)
  FMUL.S ft4, ft3, ft4
  FSW ft4, 64(sp)
  FLW ft4, 64(sp)
  FLW ft3, 36(sp)
  FSUB.S fs10, ft4, ft3
  FLW ft4, 24(sp)
  FLT.S s7, fs10, ft4
  BNE s7, zero, bb67
  # implict jump to bb57
bb57:
  FSGNJ.S fs11, fs10, fs10
  # implict jump to bb58
bb58:
  LA s7, .CONSTANT.7.0
  FLW fs10, 0(s7)
  FLT.S s7, fs10, fs11
  BNE s7, zero, bb63
  # implict jump to bb59
bb59:
  FLW ft4, 56(sp)
  LUI t4, 2
  ADDIW t4, t4, 0
  ADD t4, t4, sp
  LD t4, 0(t4)
  FSW ft4, 0(t4)
  LW t3, 16(sp)
  ADDIW t4, t3, 1
  SW t4, 116(sp)
  # implict jump to bb60
bb60:
  LW t4, 116(sp)
  SLTI s7, t4, 1000
  BNE s7, zero, bb62
  # implict jump to bb61
bb61:
  LW t4, 88(sp)
  ADD s2, t4, zero
  JAL zero, bb34
bb62:
  LW t3, 116(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  JAL zero, bb53
bb63:
  FLW ft4, 36(sp)
  FLW ft3, 64(sp)
  FLT.S s0, ft4, ft3
  BNE s0, zero, bb66
  # implict jump to bb64
bb64:
  FLW ft4, 56(sp)
  FLW ft3, 60(sp)
  FADD.S fs0, ft4, ft3
  FLW ft4, 32(sp)
  FDIV.S fs0, fs0, ft4
  FLW ft4, 60(sp)
  FLW ft3, 60(sp)
  FSGNJ.S fs1, ft4, ft3
  FLW ft4, 56(sp)
  FLW ft3, 56(sp)
  FSGNJ.S fs2, ft4, ft3
  # implict jump to bb65
bb65:
  FSGNJ.S ft4, fs0, fs0
  FSW ft4, 48(sp)
  FSGNJ.S ft4, fs1, fs1
  FSW ft4, 44(sp)
  FSGNJ.S ft4, fs2, fs2
  FSW ft4, 0(sp)
  JAL zero, bb56
bb66:
  FLW ft4, 56(sp)
  FLW ft3, 52(sp)
  FADD.S fs3, ft4, ft3
  FLW ft4, 32(sp)
  FDIV.S fs3, fs3, ft4
  FSGNJ.S fs0, fs3, fs3
  FLW ft4, 56(sp)
  FLW ft3, 56(sp)
  FSGNJ.S fs1, ft4, ft3
  FLW ft4, 52(sp)
  FLW ft3, 52(sp)
  FSGNJ.S fs2, ft4, ft3
  JAL zero, bb65
bb67:
  FSGNJN.S fs10, fs10, fs10
  FSGNJ.S fs11, fs10, fs10
  JAL zero, bb58
bb68:
  ADD t4, zero, zero
  SW t4, 20(sp)
  # implict jump to bb69
bb69:
  LW t4, 20(sp)
  ADD s9, t4, zero
  LUI t4, 2
  ADDIW t4, t4, 0
  ADD t4, t4, sp
  LD t4, 0(t4)
  FLW fs9, 0(t4)
  LUI s7, 1
  ADDIW s7, s7, -96
  LW t4, 16(sp)
  MULW s7, t4, s7
  LA s10, a
  ADD s7, s10, s7
  SLLIW s10, s9, 2
  ADD s7, s7, s10
  FLW fs10, 0(s7)
  LW t4, 12(sp)
  LUI t5, 1
  ADDIW t5, t5, 96
  ADD t5, t5, sp
  ADD s7, t5, t4
  FLW fs11, 0(s7)
  FSUB.S fs10, fs10, fs11
  FMUL.S fs10, fs10, fs10
  FADD.S fs9, fs9, fs10
  LUI t4, 2
  ADDIW t4, t4, 0
  ADD t4, t4, sp
  LD t4, 0(t4)
  FSW fs9, 0(t4)
  ADDIW t4, s9, 1
  SW t4, 112(sp)
  # implict jump to bb70
bb70:
  LW t4, 112(sp)
  SLTI s7, t4, 1000
  BNE s7, zero, bb72
  # implict jump to bb71
bb71:
  LW t4, 112(sp)
  ADD s11, t4, zero
  JAL zero, bb55
bb72:
  LW t3, 112(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  JAL zero, bb69
bb73:
  ADD t4, zero, zero
  SW t4, 124(sp)
  # implict jump to bb74
bb74:
  LW t3, 124(sp)
  ADD t4, t3, zero
  SW t4, 120(sp)
  LW t4, 120(sp)
  SLLIW s9, t4, 2
  LUI t4, 1
  ADDIW t4, t4, 96
  ADD t4, t4, sp
  ADD t4, t4, s9
  LUI t5, 2
  ADDIW t5, t5, 16
  ADD t5, t5, sp
  SD t4, 0(t5)
  FLW ft4, 24(sp)
  LUI t4, 2
  ADDIW t4, t4, 16
  ADD t4, t4, sp
  LD t4, 0(t4)
  FSW ft4, 0(t4)
  SLTI s9, zero, 1000
  BNE s9, zero, bb80
  # implict jump to bb75
bb75:
  ADD s9, zero, zero
  # implict jump to bb76
bb76:
  ADD s10, s9, zero
  LUI t4, 2
  ADDIW t4, t4, 16
  ADD t4, t4, sp
  LD t4, 0(t4)
  FLW fs9, 0(t4)
  ADDI s2, zero, 1000
  FCVT.S.W fs10, s2
  FDIV.S fs9, fs9, fs10
  LUI t4, 2
  ADDIW t4, t4, 16
  ADD t4, t4, sp
  LD t4, 0(t4)
  FSW fs9, 0(t4)
  LW t3, 120(sp)
  ADDIW t4, t3, 1
  SW t4, 104(sp)
  # implict jump to bb77
bb77:
  LW t4, 104(sp)
  SLTI s2, t4, 1000
  BNE s2, zero, bb79
  # implict jump to bb78
bb78:
  ADD s5, s10, zero
  JAL zero, bb32
bb79:
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 124(sp)
  JAL zero, bb74
bb80:
  ADD t4, zero, zero
  SW t4, 132(sp)
  # implict jump to bb81
bb81:
  LW t4, 132(sp)
  ADD s7, t4, zero
  LUI t4, 2
  ADDIW t4, t4, 16
  ADD t4, t4, sp
  LD t4, 0(t4)
  FLW fs9, 0(t4)
  LUI s2, 1
  ADDIW s2, s2, -96
  LW t4, 120(sp)
  MULW s2, t4, s2
  LA s11, a
  ADD s2, s11, s2
  SLLIW s11, s7, 2
  ADD s2, s2, s11
  FLW fs10, 0(s2)
  FADD.S fs9, fs9, fs10
  LUI t4, 2
  ADDIW t4, t4, 16
  ADD t4, t4, sp
  LD t4, 0(t4)
  FSW fs9, 0(t4)
  ADDIW t4, s7, 1
  SW t4, 100(sp)
  # implict jump to bb82
bb82:
  LW t4, 100(sp)
  SLTI s2, t4, 1000
  BNE s2, zero, bb84
  # implict jump to bb83
bb83:
  LW t4, 100(sp)
  ADD s9, t4, zero
  JAL zero, bb76
bb84:
  LW t3, 100(sp)
  ADD t4, t3, zero
  SW t4, 132(sp)
  JAL zero, bb81
bb85:
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
  BNE s1, zero, bb87
  # implict jump to bb86
bb86:
  LW t4, 92(sp)
  ADDIW s1, t4, 1
  ADD t4, s1, zero
  SW t4, 96(sp)
  JAL zero, bb11
bb87:
  ADD a0, s0, zero
  LD ra, 136(sp)
  LD s0, 144(sp)
  LD s1, 152(sp)
  LD s2, 160(sp)
  LD s3, 168(sp)
  LD s5, 176(sp)
  LUI t5, 1
  ADDIW t5, t5, 88
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 8
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 24
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 40
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 48
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 56
  ADD t5, t5, sp
  LD s10, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 64
  ADD t5, t5, sp
  FLD fs0, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 72
  ADD t5, t5, sp
  FLD fs1, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 80
  ADD t5, t5, sp
  FLD fs2, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 88
  ADD t5, t5, sp
  FLD fs3, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 96
  ADD t5, t5, sp
  FLD fs4, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 104
  ADD t5, t5, sp
  FLD fs5, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  FLD fs6, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 120
  ADD t5, t5, sp
  FLD fs7, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 128
  ADD t5, t5, sp
  FLD fs8, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 136
  ADD t5, t5, sp
  FLD fs9, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 144
  ADD t5, t5, sp
  FLD fs10, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 152
  ADD t5, t5, sp
  FLD fs11, 0(t5)
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
  BNE s0, zero, bb91
  # implict jump to bb89
bb89:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb90
bb90:
  FSGNJ.S fa0, fs1, fs1
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb91:
  FSGNJN.S fs0, fs0, fs0
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb90
