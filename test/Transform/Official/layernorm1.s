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
  ADDIW t0, t0, -32
  ADD sp, sp, t0
  SD ra, 24(sp)
  SD s0, 32(sp)
  SD s1, 40(sp)
  SD s2, 48(sp)
  SD s3, 56(sp)
  SD s4, 64(sp)
  SD s5, 72(sp)
  SD s6, 80(sp)
  SD s7, 88(sp)
  SD s8, 96(sp)
  SD s9, 104(sp)
  SD s10, 112(sp)
  SD s11, 120(sp)
  FSD fs0, 128(sp)
  FSD fs1, 136(sp)
  FSD fs2, 144(sp)
  FSD fs3, 152(sp)
  FSD fs4, 160(sp)
  FSD fs5, 168(sp)
  FSD fs6, 176(sp)
  FSD fs7, 184(sp)
  FSD fs8, 192(sp)
  FSD fs9, 200(sp)
  FSD fs10, 208(sp)
  FSD fs11, 216(sp)
  ADDI s0, zero, 0
  FCVT.S.W ft4, s0
  FSW ft4, 16(sp)
  ADD t4, zero, zero
  SW t4, 0(sp)
  # implict jump to bb11
bb11:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  LW t4, 4(sp)
  SLTI s2, t4, 1000
  BNE s2, zero, bb49
  # implict jump to bb12
bb12:
  ADDI a0, zero, 42
  CALL _sysy_starttime
  FLW ft4, 16(sp)
  FLW ft3, 16(sp)
  FSGNJ.S fs1, ft4, ft3
  ADD s2, zero, zero
  ADD s3, zero, zero
  # implict jump to bb13
bb13:
  ADD s4, s3, zero
  ADD t4, s2, zero
  SW t4, 12(sp)
  FSGNJ.S fs2, fs1, fs1
  LW t4, 12(sp)
  SLTI s6, t4, 100
  BNE s6, zero, bb21
  # implict jump to bb14
bb14:
  FSGNJ.S fs3, fs2, fs2
  ADD s6, zero, zero
  # implict jump to bb15
bb15:
  ADD s7, s6, zero
  FSGNJ.S fs4, fs3, fs3
  SLTI s8, s7, 1000
  BNE s8, zero, bb17
  # implict jump to bb16
bb16:
  ADDI a0, zero, 95
  CALL _sysy_stoptime
  FSGNJ.S fa0, fs4, fs4
  CALL putfloat
  ADD a0, zero, zero
  LD ra, 24(sp)
  LD s0, 32(sp)
  LD s1, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD s5, 72(sp)
  LD s6, 80(sp)
  LD s7, 88(sp)
  LD s8, 96(sp)
  LD s9, 104(sp)
  LD s10, 112(sp)
  LD s11, 120(sp)
  FLD fs0, 128(sp)
  FLD fs1, 136(sp)
  FLD fs2, 144(sp)
  FLD fs3, 152(sp)
  FLD fs4, 160(sp)
  FLD fs5, 168(sp)
  FLD fs6, 176(sp)
  FLD fs7, 184(sp)
  FLD fs8, 192(sp)
  FLD fs9, 200(sp)
  FLD fs10, 208(sp)
  FLD fs11, 216(sp)
  LUI t0, 2
  ADDIW t0, t0, 32
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb17:
  ADD s8, zero, zero
  # implict jump to bb18
bb18:
  ADD s9, s8, zero
  FSGNJ.S fs5, fs4, fs4
  SLTI s10, s9, 1000
  BNE s10, zero, bb20
  # implict jump to bb19
bb19:
  ADDIW s10, s7, 1
  FSGNJ.S fs3, fs5, fs5
  ADD s6, s10, zero
  JAL zero, bb15
bb20:
  LUI s6, 1
  ADDIW s6, s6, -96
  MULW s6, s7, s6
  LA s10, a
  ADD s6, s10, s6
  SLLIW s10, s9, 2
  ADD s6, s6, s10
  FLW fs3, 0(s6)
  FADD.S fs3, fs5, fs3
  ADDIW s6, s9, 1
  FSGNJ.S fs4, fs3, fs3
  ADD s8, s6, zero
  JAL zero, bb18
bb21:
  ADD s6, zero, zero
  # implict jump to bb22
bb22:
  ADD t4, s6, zero
  SW t4, 8(sp)
  ADD s8, s4, zero
  LW t4, 8(sp)
  SLTI s9, t4, 1000
  BNE s9, zero, bb45
  # implict jump to bb23
bb23:
  ADD s9, zero, zero
  # implict jump to bb24
bb24:
  ADD s10, s9, zero
  ADD s11, s8, zero
  SLTI s0, s10, 1000
  BNE s0, zero, bb32
  # implict jump to bb25
bb25:
  FSGNJ.S fs3, fs2, fs2
  ADD s0, s11, zero
  ADD s11, zero, zero
  # implict jump to bb26
bb26:
  ADD s1, s11, zero
  ADD s7, s0, zero
  FSGNJ.S fs4, fs3, fs3
  SLTI s5, s1, 1000
  BNE s5, zero, bb28
  # implict jump to bb27
bb27:
  LW t4, 12(sp)
  ADDIW s5, t4, 1
  FSGNJ.S fs1, fs4, fs4
  ADD s2, s5, zero
  ADD s3, s7, zero
  JAL zero, bb13
bb28:
  FSGNJ.S fs1, fs4, fs4
  ADD s2, zero, zero
  # implict jump to bb29
bb29:
  ADD s3, s2, zero
  FSGNJ.S fs4, fs1, fs1
  SLTI s5, s3, 1000
  BNE s5, zero, bb31
  # implict jump to bb30
bb30:
  ADDIW s5, s1, 1
  FSGNJ.S fs3, fs4, fs4
  ADD s0, s3, zero
  ADD s11, s5, zero
  JAL zero, bb26
bb31:
  LUI s0, 1
  ADDIW s0, s0, -96
  MULW s0, s1, s0
  LA s5, a
  ADD s0, s5, s0
  SLLIW s5, s3, 2
  ADD s0, s0, s5
  FLW fs3, 0(s0)
  SLLIW s5, s1, 2
  ADDI t5, sp, 224
  ADD s7, t5, s5
  FLW fs5, 0(s7)
  FSUB.S fs3, fs3, fs5
  LUI t5, 1
  ADDIW t5, t5, 128
  ADD t5, t5, sp
  ADD s5, t5, s5
  FLW fs5, 0(s5)
  FDIV.S fs3, fs3, fs5
  FSW fs3, 0(s0)
  FADD.S fs3, fs4, fs3
  ADDIW s0, s3, 1
  FSGNJ.S fs1, fs3, fs3
  ADD s2, s0, zero
  JAL zero, bb29
bb32:
  SLLIW s0, s10, 2
  LUI t5, 1
  ADDIW t5, t5, 128
  ADD t5, t5, sp
  ADD s1, t5, s0
  FLW ft4, 16(sp)
  FSW ft4, 0(s1)
  ADD s2, zero, zero
  # implict jump to bb33
bb33:
  ADD s3, s2, zero
  SLTI s5, s3, 1000
  BNE s5, zero, bb44
  # implict jump to bb34
bb34:
  FLW fs1, 0(s1)
  ADDI s5, zero, 1000
  FCVT.S.W fs3, s5
  FDIV.S fs1, fs1, fs3
  FSW fs1, 0(s1)
  LA s5, .CONSTANT.7.1
  FLW fs3, 0(s5)
  FADD.S fs1, fs1, fs3
  FLW ft4, 16(sp)
  FADD.S fs3, ft4, fs1
  ADDI s5, zero, 2
  FCVT.S.W fs4, s5
  FDIV.S fs3, fs3, fs4
  FSGNJ.S fs5, fs1, fs1
  FLW ft4, 16(sp)
  FLW ft3, 16(sp)
  FSGNJ.S fs6, ft4, ft3
  # implict jump to bb35
bb35:
  FSGNJ.S fs7, fs6, fs6
  FSGNJ.S fs8, fs5, fs5
  FSGNJ.S fs9, fs3, fs3
  FMUL.S fs10, fs9, fs9
  FSUB.S fs11, fs10, fs1
  FLW ft4, 16(sp)
  FLT.S s5, fs11, ft4
  BNE s5, zero, bb43
  # implict jump to bb36
bb36:
  FSGNJ.S fs0, fs11, fs11
  # implict jump to bb37
bb37:
  LA s5, .CONSTANT.7.0
  FLW fs11, 0(s5)
  FLT.S s5, fs11, fs0
  BNE s5, zero, bb39
  # implict jump to bb38
bb38:
  FSW fs9, 0(s1)
  ADDIW s5, s10, 1
  ADD s8, s3, zero
  ADD s9, s5, zero
  JAL zero, bb24
bb39:
  FLT.S s5, fs1, fs10
  BNE s5, zero, bb42
  # implict jump to bb40
bb40:
  FADD.S fs0, fs9, fs8
  FDIV.S fs0, fs0, fs4
  FSGNJ.S fs10, fs9, fs9
  # implict jump to bb41
bb41:
  FSGNJ.S fs3, fs0, fs0
  FSGNJ.S fs5, fs8, fs8
  FSGNJ.S fs6, fs10, fs10
  JAL zero, bb35
bb42:
  FADD.S fs11, fs9, fs7
  FDIV.S fs11, fs11, fs4
  FSGNJ.S fs0, fs11, fs11
  FSGNJ.S fs8, fs9, fs9
  FSGNJ.S fs10, fs7, fs7
  JAL zero, bb41
bb43:
  FSGNJN.S fs11, fs11, fs11
  FSGNJ.S fs0, fs11, fs11
  JAL zero, bb37
bb44:
  FLW fs0, 0(s1)
  LUI s5, 1
  ADDIW s5, s5, -96
  MULW s5, s10, s5
  LA s7, a
  ADD s5, s7, s5
  SLLIW s7, s3, 2
  ADD s5, s5, s7
  FLW fs1, 0(s5)
  ADDI t5, sp, 224
  ADD s5, t5, s0
  FLW fs3, 0(s5)
  FSUB.S fs1, fs1, fs3
  FMUL.S fs1, fs1, fs1
  FADD.S fs0, fs0, fs1
  FSW fs0, 0(s1)
  ADDIW s3, s3, 1
  ADD s2, s3, zero
  JAL zero, bb33
bb45:
  LW t4, 8(sp)
  SLLIW s0, t4, 2
  ADDI t5, sp, 224
  ADD s0, t5, s0
  FLW ft4, 16(sp)
  FSW ft4, 0(s0)
  ADD s1, zero, zero
  # implict jump to bb46
bb46:
  ADD s2, s1, zero
  SLTI s3, s2, 1000
  BNE s3, zero, bb48
  # implict jump to bb47
bb47:
  FLW fs0, 0(s0)
  ADDI s3, zero, 1000
  FCVT.S.W fs1, s3
  FDIV.S fs0, fs0, fs1
  FSW fs0, 0(s0)
  LW t4, 8(sp)
  ADDIW s3, t4, 1
  ADD s4, s2, zero
  ADD s6, s3, zero
  JAL zero, bb22
bb48:
  FLW fs0, 0(s0)
  LUI s3, 1
  ADDIW s3, s3, -96
  LW t4, 8(sp)
  MULW s3, t4, s3
  LA s4, a
  ADD s3, s4, s3
  SLLIW s4, s2, 2
  ADD s3, s3, s4
  FLW fs1, 0(s3)
  FADD.S fs0, fs0, fs1
  FSW fs0, 0(s0)
  ADDIW s2, s2, 1
  ADD s1, s2, zero
  JAL zero, bb46
bb49:
  LUI s0, 1
  ADDIW s0, s0, -96
  LW t4, 4(sp)
  MULW s0, t4, s0
  LA s1, a
  ADD s0, s1, s0
  ADD a0, s0, zero
  CALL getfarray
  ADD s0, a0, zero
  XORI s1, s0, 1000
  SLTU s1, zero, s1
  BNE s1, zero, bb51
  # implict jump to bb50
bb50:
  LW t4, 4(sp)
  ADDIW s1, t4, 1
  ADD t4, s1, zero
  SW t4, 0(sp)
  JAL zero, bb11
bb51:
  ADD a0, s0, zero
  LD ra, 24(sp)
  LD s0, 32(sp)
  LD s1, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD s5, 72(sp)
  LD s6, 80(sp)
  LD s7, 88(sp)
  LD s8, 96(sp)
  LD s9, 104(sp)
  LD s10, 112(sp)
  LD s11, 120(sp)
  FLD fs0, 128(sp)
  FLD fs1, 136(sp)
  FLD fs2, 144(sp)
  FLD fs3, 152(sp)
  FLD fs4, 160(sp)
  FLD fs5, 168(sp)
  FLD fs6, 176(sp)
  FLD fs7, 184(sp)
  FLD fs8, 192(sp)
  FLD fs9, 200(sp)
  FLD fs10, 208(sp)
  FLD fs11, 216(sp)
  LUI t0, 2
  ADDIW t0, t0, 32
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
  BNE s0, zero, bb55
  # implict jump to bb53
bb53:
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb54
bb54:
  FSGNJ.S fa0, fs1, fs1
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb55:
  FSGNJN.S fs0, fs0, fs0
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb54
