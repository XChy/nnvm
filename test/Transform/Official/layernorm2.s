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
  ADDIW t0, t0, -208
  ADD sp, sp, t0
  SD ra, 152(sp)
  SD s0, 160(sp)
  SD s1, 168(sp)
  SD s2, 176(sp)
  SD s3, 184(sp)
  SD s4, 192(sp)
  SD s5, 200(sp)
  LUI t5, 1
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  SD s6, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 120
  ADD t5, t5, sp
  SD s7, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 128
  ADD t5, t5, sp
  SD s8, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 136
  ADD t5, t5, sp
  SD s9, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 144
  ADD t5, t5, sp
  SD s10, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 152
  ADD t5, t5, sp
  SD s11, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 160
  ADD t5, t5, sp
  FSD fs0, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 168
  ADD t5, t5, sp
  FSD fs1, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 176
  ADD t5, t5, sp
  FSD fs2, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 184
  ADD t5, t5, sp
  FSD fs3, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 192
  ADD t5, t5, sp
  FSD fs4, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 200
  ADD t5, t5, sp
  FSD fs5, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 208
  ADD t5, t5, sp
  FSD fs6, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 216
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
  LUI a6, 2
  ADDIW a6, a6, 144
  ADD a6, a6, sp
  FSD fs10, 0(a6)
  LUI a6, 2
  ADDIW a6, a6, 160
  ADD a6, a6, sp
  FSD fs11, 0(a6)
  ADDI a6, zero, 0
  FCVT.S.W ft4, a6
  FSW ft4, 20(sp)
  ADD t4, zero, zero
  SW t4, 132(sp)
  # implict jump to bb11
bb11:
  LW t3, 132(sp)
  ADD t4, t3, zero
  SW t4, 124(sp)
  LW t4, 124(sp)
  SLTI t6, t4, 1000
  BNE t6, zero, bb94
  # implict jump to bb12
bb12:
  ADDI a0, zero, 42
  CALL _sysy_starttime
  SLTI s11, zero, 100
  BNE s11, zero, bb31
  # implict jump to bb13
bb13:
  FLW ft4, 20(sp)
  FLW ft3, 20(sp)
  FSGNJ.S fs9, ft4, ft3
  # implict jump to bb14
bb14:
  SLTI s1, zero, 1000
  BNE s1, zero, bb17
  # implict jump to bb15
bb15:
  FSGNJ.S fs3, fs9, fs9
  # implict jump to bb16
bb16:
  ADDI a0, zero, 95
  CALL _sysy_stoptime
  FSGNJ.S fa0, fs3, fs3
  CALL putfloat
  ADD a0, zero, zero
  LD ra, 152(sp)
  LD s0, 160(sp)
  LD s1, 168(sp)
  LD s2, 176(sp)
  LD s3, 184(sp)
  LD s4, 192(sp)
  LD s5, 200(sp)
  LUI t5, 1
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 120
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 128
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 136
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 144
  ADD t5, t5, sp
  LD s10, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 152
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 160
  ADD t5, t5, sp
  FLD fs0, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 168
  ADD t5, t5, sp
  FLD fs1, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 176
  ADD t5, t5, sp
  FLD fs2, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 184
  ADD t5, t5, sp
  FLD fs3, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 192
  ADD t5, t5, sp
  FLD fs4, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 200
  ADD t5, t5, sp
  FLD fs5, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 208
  ADD t5, t5, sp
  FLD fs6, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 216
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
  ADDIW t5, t5, 160
  ADD t5, t5, sp
  FLD fs11, 0(t5)
  LUI t0, 2
  ADDIW t0, t0, 208
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb17:
  # implict jump to bb18
bb18:
  SLTI s0, zero, 1000
  ADD s1, zero, zero
  FSGNJ.S fs4, fs9, fs9
  # implict jump to bb19
bb19:
  FSGNJ.S fs7, fs4, fs4
  ADD s4, s1, zero
  BNE s0, zero, bb25
  # implict jump to bb20
bb20:
  FSGNJ.S fs8, fs7, fs7
  # implict jump to bb21
bb21:
  FSGNJ.S fs1, fs8, fs8
  ADDIW s3, s4, 1
  # implict jump to bb22
bb22:
  SLTI s8, s3, 1000
  BNE s8, zero, bb24
  # implict jump to bb23
bb23:
  FSGNJ.S fs3, fs1, fs1
  JAL zero, bb16
bb24:
  ADD s1, s3, zero
  FSGNJ.S fs4, fs1, fs1
  JAL zero, bb19
bb25:
  # implict jump to bb26
bb26:
  LUI s7, 1
  ADDIW s7, s7, -96
  MULW s7, s4, s7
  LA s8, a
  ADD t4, s8, s7
  LUI t5, 2
  ADDIW t5, t5, 184
  ADD t5, t5, sp
  SD t4, 0(t5)
  ADD s7, zero, zero
  # implict jump to bb27
bb27:
  FSGNJ.S fs9, fs7, fs7
  ADD s8, s7, zero
  SLLIW s9, s8, 2
  LUI t4, 2
  ADDIW t4, t4, 184
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s9, t4, s9
  FLW fs2, 0(s9)
  FADD.S fs0, fs9, fs2
  ADDIW s10, s8, 1
  # implict jump to bb28
bb28:
  SLTI s8, s10, 1000
  BNE s8, zero, bb30
  # implict jump to bb29
bb29:
  FSGNJ.S fs8, fs0, fs0
  JAL zero, bb21
bb30:
  ADD s7, s10, zero
  FSGNJ.S fs7, fs0, fs0
  JAL zero, bb27
bb31:
  # implict jump to bb32
bb32:
  SLTI t4, zero, 1000
  SB t4, 2(sp)
  ADD s11, zero, zero
  ADD t4, zero, zero
  SW t4, 4(sp)
  FLW ft4, 20(sp)
  FLW ft3, 20(sp)
  FSGNJ.S fs10, ft4, ft3
  # implict jump to bb33
bb33:
  FSGNJ.S ft4, fs10, fs10
  FSW ft4, 28(sp)
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 140(sp)
  ADD s4, s11, zero
  LB t4, 2(sp)
  BNE t4, zero, bb80
  # implict jump to bb34
bb34:
  # implict jump to bb35
bb35:
  SLTI s1, zero, 1000
  BNE s1, zero, bb57
  # implict jump to bb36
bb36:
  ADD s1, s4, zero
  # implict jump to bb37
bb37:
  SLTI s5, zero, 1000
  BNE s5, zero, bb43
  # implict jump to bb38
bb38:
  FLW ft4, 28(sp)
  FLW ft3, 28(sp)
  FSGNJ.S fs7, ft4, ft3
  # implict jump to bb39
bb39:
  FSGNJ.S fs5, fs7, fs7
  ADD s2, s1, zero
  LW t4, 140(sp)
  ADDIW s6, t4, 1
  # implict jump to bb40
bb40:
  SLTI s1, s6, 100
  BNE s1, zero, bb42
  # implict jump to bb41
bb41:
  FSGNJ.S fs9, fs5, fs5
  JAL zero, bb14
bb42:
  ADD s11, s2, zero
  ADD t4, s6, zero
  SW t4, 4(sp)
  FSGNJ.S fs10, fs5, fs5
  JAL zero, bb33
bb43:
  # implict jump to bb44
bb44:
  SLTI t4, zero, 1000
  SB t4, 0(sp)
  ADD s5, zero, zero
  FLW ft4, 28(sp)
  FLW ft3, 28(sp)
  FSGNJ.S fs11, ft4, ft3
  # implict jump to bb45
bb45:
  FSGNJ.S fs8, fs11, fs11
  ADD t4, s5, zero
  SW t4, 144(sp)
  LB t4, 0(sp)
  BNE t4, zero, bb51
  # implict jump to bb46
bb46:
  ADD s9, zero, zero
  FSGNJ.S fs4, fs8, fs8
  # implict jump to bb47
bb47:
  FSGNJ.S fs6, fs4, fs4
  ADD s7, s9, zero
  LW t3, 144(sp)
  ADDIW t4, t3, 1
  SW t4, 16(sp)
  # implict jump to bb48
bb48:
  LW t4, 16(sp)
  SLTI s4, t4, 1000
  BNE s4, zero, bb50
  # implict jump to bb49
bb49:
  ADD s1, s7, zero
  FSGNJ.S fs7, fs6, fs6
  JAL zero, bb39
bb50:
  LW t4, 16(sp)
  ADD s5, t4, zero
  FSGNJ.S fs11, fs6, fs6
  JAL zero, bb45
bb51:
  # implict jump to bb52
bb52:
  LUI s4, 1
  ADDIW s4, s4, -96
  LW t4, 144(sp)
  MULW s4, t4, s4
  LA s8, a
  ADD t4, s8, s4
  LUI t5, 2
  ADDIW t5, t5, 192
  ADD t5, t5, sp
  SD t4, 0(t5)
  LW t4, 144(sp)
  SLLIW s4, t4, 2
  ADDI t5, sp, 208
  ADD s8, t5, s4
  FLW ft4, 0(s8)
  FSW ft4, 128(sp)
  LUI t5, 1
  ADDIW t5, t5, 224
  ADD t5, t5, sp
  ADD s4, t5, s4
  FLW ft4, 0(s4)
  FSW ft4, 32(sp)
  ADD t4, zero, zero
  SW t4, 112(sp)
  FSGNJ.S ft4, fs8, fs8
  FSW ft4, 96(sp)
  # implict jump to bb53
bb53:
  FLW ft4, 96(sp)
  FLW ft3, 96(sp)
  FSGNJ.S fs3, ft4, ft3
  LW t4, 112(sp)
  ADD s8, t4, zero
  SLLIW s4, s8, 2
  LUI t4, 2
  ADDIW t4, t4, 192
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s4, t4, s4
  FLW fs8, 0(s4)
  FLW ft4, 128(sp)
  FSUB.S fs8, fs8, ft4
  FLW ft4, 32(sp)
  FDIV.S fs8, fs8, ft4
  FSW fs8, 0(s4)
  FADD.S ft4, fs3, fs8
  FSW ft4, 92(sp)
  ADDIW t4, s8, 1
  SW t4, 12(sp)
  # implict jump to bb54
bb54:
  LW t4, 12(sp)
  SLTI s4, t4, 1000
  BNE s4, zero, bb56
  # implict jump to bb55
bb55:
  LW t4, 12(sp)
  ADD s9, t4, zero
  FLW ft4, 92(sp)
  FLW ft3, 92(sp)
  FSGNJ.S fs4, ft4, ft3
  JAL zero, bb47
bb56:
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  FLW ft3, 92(sp)
  FLW ft4, 92(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 96(sp)
  JAL zero, bb53
bb57:
  # implict jump to bb58
bb58:
  SLTI t4, zero, 1000
  SB t4, 3(sp)
  ADD t4, zero, zero
  SW t4, 40(sp)
  # implict jump to bb59
bb59:
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  LW t4, 36(sp)
  SLLIW s9, t4, 2
  LUI t4, 1
  ADDIW t4, t4, 224
  ADD t4, t4, sp
  ADD t4, t4, s9
  LUI t5, 2
  ADDIW t5, t5, 152
  ADD t5, t5, sp
  SD t4, 0(t5)
  FLW ft4, 20(sp)
  LUI t4, 2
  ADDIW t4, t4, 152
  ADD t4, t4, sp
  LD t4, 0(t4)
  FSW ft4, 0(t4)
  LB t4, 3(sp)
  BNE t4, zero, bb74
  # implict jump to bb60
bb60:
  ADD s5, zero, zero
  # implict jump to bb61
bb61:
  ADD t4, s5, zero
  SW t4, 136(sp)
  LUI t4, 2
  ADDIW t4, t4, 152
  ADD t4, t4, sp
  LD t4, 0(t4)
  FLW fs8, 0(t4)
  ADDI s5, zero, 1000
  FCVT.S.W fs11, s5
  FDIV.S fs8, fs8, fs11
  LUI t4, 2
  ADDIW t4, t4, 152
  ADD t4, t4, sp
  LD t4, 0(t4)
  FSW fs8, 0(t4)
  LA s5, .CONSTANT.7.1
  FLW fs11, 0(s5)
  FADD.S ft4, fs8, fs11
  FSW ft4, 56(sp)
  FLW ft4, 20(sp)
  FLW ft3, 56(sp)
  FADD.S fs11, ft4, ft3
  ADDI s5, zero, 2
  FCVT.S.W ft4, s5
  FSW ft4, 52(sp)
  FLW ft4, 52(sp)
  FDIV.S fs11, fs11, ft4
  FSGNJ.S ft4, fs11, fs11
  FSW ft4, 68(sp)
  FLW ft3, 56(sp)
  FLW ft4, 56(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 64(sp)
  FLW ft3, 20(sp)
  FLW ft4, 20(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 60(sp)
  # implict jump to bb62
bb62:
  FLW ft3, 60(sp)
  FLW ft4, 60(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 72(sp)
  FLW ft3, 64(sp)
  FLW ft4, 64(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 80(sp)
  FLW ft3, 68(sp)
  FLW ft4, 68(sp)
  FSGNJ.S ft4, ft3, ft4
  FSW ft4, 76(sp)
  FLW ft3, 76(sp)
  FLW ft4, 76(sp)
  FMUL.S ft4, ft3, ft4
  FSW ft4, 84(sp)
  FLW ft4, 84(sp)
  FLW ft3, 56(sp)
  FSUB.S fs11, ft4, ft3
  FLW ft4, 20(sp)
  FLT.S s5, fs11, ft4
  BNE s5, zero, bb73
  # implict jump to bb63
bb63:
  FSGNJ.S fs7, fs11, fs11
  # implict jump to bb64
bb64:
  LA s5, .CONSTANT.7.0
  FLW fs11, 0(s5)
  FLT.S s5, fs11, fs7
  BNE s5, zero, bb69
  # implict jump to bb65
bb65:
  FLW ft4, 76(sp)
  LUI t4, 2
  ADDIW t4, t4, 152
  ADD t4, t4, sp
  LD t4, 0(t4)
  FSW ft4, 0(t4)
  LW t3, 36(sp)
  ADDIW t4, t3, 1
  SW t4, 120(sp)
  # implict jump to bb66
bb66:
  LW t4, 120(sp)
  SLTI s5, t4, 1000
  BNE s5, zero, bb68
  # implict jump to bb67
bb67:
  LW t4, 136(sp)
  ADD s1, t4, zero
  JAL zero, bb37
bb68:
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  JAL zero, bb59
bb69:
  FLW ft4, 56(sp)
  FLW ft3, 84(sp)
  FLT.S s0, ft4, ft3
  BNE s0, zero, bb72
  # implict jump to bb70
bb70:
  FLW ft4, 76(sp)
  FLW ft3, 80(sp)
  FADD.S fs0, ft4, ft3
  FLW ft4, 52(sp)
  FDIV.S fs0, fs0, ft4
  FLW ft4, 80(sp)
  FLW ft3, 80(sp)
  FSGNJ.S fs1, ft4, ft3
  FLW ft4, 76(sp)
  FLW ft3, 76(sp)
  FSGNJ.S fs2, ft4, ft3
  # implict jump to bb71
bb71:
  FSGNJ.S ft4, fs0, fs0
  FSW ft4, 68(sp)
  FSGNJ.S ft4, fs1, fs1
  FSW ft4, 64(sp)
  FSGNJ.S ft4, fs2, fs2
  FSW ft4, 60(sp)
  JAL zero, bb62
bb72:
  FLW ft4, 76(sp)
  FLW ft3, 72(sp)
  FADD.S fs3, ft4, ft3
  FLW ft4, 52(sp)
  FDIV.S fs3, fs3, ft4
  FSGNJ.S fs0, fs3, fs3
  FLW ft4, 76(sp)
  FLW ft3, 76(sp)
  FSGNJ.S fs1, ft4, ft3
  FLW ft4, 72(sp)
  FLW ft3, 72(sp)
  FSGNJ.S fs2, ft4, ft3
  JAL zero, bb71
bb73:
  FSGNJN.S fs11, fs11, fs11
  FSGNJ.S fs7, fs11, fs11
  JAL zero, bb64
bb74:
  # implict jump to bb75
bb75:
  LUI s4, 1
  ADDIW s4, s4, -96
  LW t4, 36(sp)
  MULW s4, t4, s4
  LA s8, a
  ADD t4, s8, s4
  LUI t5, 2
  ADDIW t5, t5, 176
  ADD t5, t5, sp
  SD t4, 0(t5)
  ADDI t5, sp, 208
  ADD s4, t5, s9
  FLW ft4, 0(s4)
  FSW ft4, 48(sp)
  ADD t4, zero, zero
  SW t4, 8(sp)
  # implict jump to bb76
bb76:
  LW t4, 8(sp)
  ADD s8, t4, zero
  LUI t4, 2
  ADDIW t4, t4, 152
  ADD t4, t4, sp
  LD t4, 0(t4)
  FLW fs8, 0(t4)
  SLLIW s9, s8, 2
  LUI t4, 2
  ADDIW t4, t4, 176
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s9, t4, s9
  FLW fs11, 0(s9)
  FLW ft4, 48(sp)
  FSUB.S fs11, fs11, ft4
  FMUL.S fs11, fs11, fs11
  FADD.S fs8, fs8, fs11
  LUI t4, 2
  ADDIW t4, t4, 152
  ADD t4, t4, sp
  LD t4, 0(t4)
  FSW fs8, 0(t4)
  ADDIW t4, s8, 1
  SW t4, 104(sp)
  # implict jump to bb77
bb77:
  LW t4, 104(sp)
  SLTI s8, t4, 1000
  BNE s8, zero, bb79
  # implict jump to bb78
bb78:
  LW t4, 104(sp)
  ADD s5, t4, zero
  JAL zero, bb61
bb79:
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  JAL zero, bb76
bb80:
  # implict jump to bb81
bb81:
  SLTI t4, zero, 1000
  SB t4, 1(sp)
  ADD t4, zero, zero
  SW t4, 44(sp)
  # implict jump to bb82
bb82:
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 88(sp)
  LW t4, 88(sp)
  SLLIW s1, t4, 2
  ADDI t4, sp, 208
  ADD t4, t4, s1
  LUI t5, 2
  ADDIW t5, t5, 200
  ADD t5, t5, sp
  SD t4, 0(t5)
  FLW ft4, 20(sp)
  LUI t4, 2
  ADDIW t4, t4, 200
  ADD t4, t4, sp
  LD t4, 0(t4)
  FSW ft4, 0(t4)
  LB t4, 1(sp)
  BNE t4, zero, bb88
  # implict jump to bb83
bb83:
  ADD s1, zero, zero
  # implict jump to bb84
bb84:
  ADD t4, s1, zero
  SW t4, 100(sp)
  LUI t4, 2
  ADDIW t4, t4, 200
  ADD t4, t4, sp
  LD t4, 0(t4)
  FLW fs8, 0(t4)
  ADDI s1, zero, 1000
  FCVT.S.W fs11, s1
  FDIV.S fs8, fs8, fs11
  LUI t4, 2
  ADDIW t4, t4, 200
  ADD t4, t4, sp
  LD t4, 0(t4)
  FSW fs8, 0(t4)
  LW t3, 88(sp)
  ADDIW t4, t3, 1
  SW t4, 108(sp)
  # implict jump to bb85
bb85:
  LW t4, 108(sp)
  SLTI s1, t4, 1000
  BNE s1, zero, bb87
  # implict jump to bb86
bb86:
  LW t4, 100(sp)
  ADD s4, t4, zero
  JAL zero, bb35
bb87:
  LW t3, 108(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  JAL zero, bb82
bb88:
  # implict jump to bb89
bb89:
  LUI s9, 1
  ADDIW s9, s9, -96
  LW t4, 88(sp)
  MULW s9, t4, s9
  LA s5, a
  ADD t4, s5, s9
  LUI t5, 2
  ADDIW t5, t5, 168
  ADD t5, t5, sp
  SD t4, 0(t5)
  ADD t4, zero, zero
  SW t4, 24(sp)
  # implict jump to bb90
bb90:
  LW t4, 24(sp)
  ADD s9, t4, zero
  LUI t4, 2
  ADDIW t4, t4, 200
  ADD t4, t4, sp
  LD t4, 0(t4)
  FLW fs8, 0(t4)
  SLLIW s5, s9, 2
  LUI t4, 2
  ADDIW t4, t4, 168
  ADD t4, t4, sp
  LD t4, 0(t4)
  ADD s5, t4, s5
  FLW fs11, 0(s5)
  FADD.S fs8, fs8, fs11
  LUI t4, 2
  ADDIW t4, t4, 200
  ADD t4, t4, sp
  LD t4, 0(t4)
  FSW fs8, 0(t4)
  ADDIW t4, s9, 1
  SW t4, 116(sp)
  # implict jump to bb91
bb91:
  LW t4, 116(sp)
  SLTI s5, t4, 1000
  BNE s5, zero, bb93
  # implict jump to bb92
bb92:
  LW t4, 116(sp)
  ADD s1, t4, zero
  JAL zero, bb84
bb93:
  LW t3, 116(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  JAL zero, bb90
bb94:
  LUI s0, 1
  ADDIW s0, s0, -96
  LW t4, 124(sp)
  MULW s0, t4, s0
  LA s1, a
  ADD s0, s1, s0
  ADD a0, s0, zero
  CALL getfarray
  ADD s0, a0, zero
  XORI s1, s0, 1000
  BNE s1, zero, bb96
  # implict jump to bb95
bb95:
  LW t4, 124(sp)
  ADDIW s1, t4, 1
  ADD t4, s1, zero
  SW t4, 132(sp)
  JAL zero, bb11
bb96:
  ADD a0, s0, zero
  LD ra, 152(sp)
  LD s0, 160(sp)
  LD s1, 168(sp)
  LD s2, 176(sp)
  LD s3, 184(sp)
  LD s4, 192(sp)
  LD s5, 200(sp)
  LUI t5, 1
  ADDIW t5, t5, 112
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 120
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 128
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 136
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 144
  ADD t5, t5, sp
  LD s10, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 152
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 160
  ADD t5, t5, sp
  FLD fs0, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 168
  ADD t5, t5, sp
  FLD fs1, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 176
  ADD t5, t5, sp
  FLD fs2, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 184
  ADD t5, t5, sp
  FLD fs3, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 192
  ADD t5, t5, sp
  FLD fs4, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 200
  ADD t5, t5, sp
  FLD fs5, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 208
  ADD t5, t5, sp
  FLD fs6, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, 216
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
  ADDIW t5, t5, 160
  ADD t5, t5, sp
  FLD fs11, 0(t5)
  LUI t0, 2
  ADDIW t0, t0, 208
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
  BNE s0, zero, bb100
  # implict jump to bb98
bb98:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb99
bb99:
  FSGNJ.S fa0, fs1, fs1
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb100:
  FSGNJN.S fs0, fs0, fs0
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb99
