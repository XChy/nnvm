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
  FSD fs11, 0(sp)
  FSD fs10, 8(sp)
  FSD fs0, 16(sp)
  FSD fs5, 24(sp)
  FSD fs7, 32(sp)
  SD s0, 40(sp)
  FSD fs2, 48(sp)
  FSD fs1, 56(sp)
  FSD fs6, 64(sp)
  FSD fs3, 72(sp)
  FSD fs4, 80(sp)
  FSD fs8, 88(sp)
  SD ra, 96(sp)
  FSD fs9, 104(sp)
  FSGNJ.D fs0, fa0, fa0
  ADDI s0, zero, 0
  FCVT.S.W fs1, s0
  FADD.S fs2, fs1, fs0
  ADDI s0, zero, 2
  FCVT.S.W fs3, s0
  FDIV.S fs4, fs2, fs3
  FSGNJ.S fs2, fs4, fs4
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
  FSGNJ.S ft0, fs10, fs10
  # implict jump to bb3
bb3:
  FSGNJ.S fs11, ft0, ft0
  LA s0, .CONSTANT.7.0
  FLW ft1, 0(s0)
  FLT.S s0, ft1, fs11
  BNE s0, zero, bb5
  # implict jump to bb4
bb4:
  FSGNJ.S fa0, fs8, fs8
  FLD fs11, 0(sp)
  FLD fs10, 8(sp)
  FLD fs0, 16(sp)
  FLD fs5, 24(sp)
  FLD fs7, 32(sp)
  LD s0, 40(sp)
  FLD fs2, 48(sp)
  FLD fs1, 56(sp)
  FLD fs6, 64(sp)
  FLD fs3, 72(sp)
  FLD fs4, 80(sp)
  FLD fs8, 88(sp)
  LD ra, 96(sp)
  FLD fs9, 104(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb5:
  FLT.S s0, fs0, fs9
  BNE s0, zero, bb8
  # implict jump to bb6
bb6:
  FADD.S fs2, fs8, fs7
  FDIV.S fs4, fs2, fs3
  FSGNJ.S fs11, fs4, fs4
  FSGNJ.S ft1, fs7, fs7
  FSGNJ.S ft2, fs8, fs8
  # implict jump to bb7
bb7:
  FSGNJ.S ft5, ft2, ft2
  FSGNJ.S ft6, ft1, ft1
  FSGNJ.S ft7, fs11, fs11
  FSGNJ.S fs2, ft7, ft7
  FSGNJ.S fs4, ft6, ft6
  FSGNJ.S fs5, ft5, ft5
  JAL zero, bb1
bb8:
  FADD.S fs11, fs8, fs6
  FDIV.S ft1, fs11, fs3
  FSGNJ.S fs11, ft1, ft1
  FSGNJ.S ft1, fs8, fs8
  FSGNJ.S ft2, fs6, fs6
  JAL zero, bb7
bb9:
  FSGNJN.S fs11, fs10, fs10
  FSGNJ.S ft0, fs11, fs11
  JAL zero, bb3
main:
  LUI t0, 1048574
  ADDIW t0, t0, -48
  ADD sp, sp, t0
  LUI t5, 2
  ADDIW t5, t5, -152
  ADD t5, t5, sp
  FSD fs8, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -144
  ADD t5, t5, sp
  FSD fs0, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -136
  ADD t5, t5, sp
  FSD fs9, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -128
  ADD t5, t5, sp
  SD s4, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -120
  ADD t5, t5, sp
  SD s3, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -112
  ADD t5, t5, sp
  SD s2, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -104
  ADD t5, t5, sp
  SD s6, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  SD s1, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -88
  ADD t5, t5, sp
  SD s5, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -80
  ADD t5, t5, sp
  SD s0, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -72
  ADD t5, t5, sp
  SD s7, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -64
  ADD t5, t5, sp
  FSD fs2, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -56
  ADD t5, t5, sp
  SD s8, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -48
  ADD t5, t5, sp
  FSD fs3, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -40
  ADD t5, t5, sp
  SD s9, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -32
  ADD t5, t5, sp
  FSD fs4, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -24
  ADD t5, t5, sp
  SD s10, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  FSD fs5, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -8
  ADD t5, t5, sp
  SD s11, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  FSD fs6, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 8
  ADD t5, t5, sp
  FSD fs7, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 16
  ADD t5, t5, sp
  FSD fs1, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 24
  ADD t5, t5, sp
  FSD fs11, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  SD ra, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 40
  ADD t5, t5, sp
  FSD fs10, 0(t5)
  ADDI s0, zero, 0
  FCVT.S.W ft4, s0
  LUI t5, 2
  ADDIW t5, t5, -180
  ADD t5, t5, sp
  FSW ft4, 0(t5)
  ADD s0, zero, zero
  # implict jump to bb11
bb11:
  ADD s1, s0, zero
  SLTI s2, s1, 1000
  BNE s2, zero, bb49
  # implict jump to bb12
bb12:
  ADDI a0, zero, 42
  CALL _sysy_starttime
  LUI t5, 2
  ADDIW t5, t5, -180
  ADD t5, t5, sp
  FLW ft3, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -180
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  FSGNJ.S ft4, ft3, ft4
  LUI t4, 2
  ADDIW t4, t4, -176
  ADD t4, t4, sp
  FSW ft4, 0(t4)
  ADD t4, zero, zero
  LUI t5, 2
  ADDIW t5, t5, -188
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t5, 2
  ADDIW t5, t5, -192
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb13
bb13:
  LUI t4, 2
  ADDIW t4, t4, -192
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s2, t4, zero
  LUI t4, 2
  ADDIW t4, t4, -188
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s3, t4, zero
  LUI t5, 2
  ADDIW t5, t5, -176
  ADD t5, t5, sp
  FLW ft3, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -176
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  FSGNJ.S ft4, ft3, ft4
  LUI t5, 2
  ADDIW t5, t5, -184
  ADD t5, t5, sp
  FSW ft4, 0(t5)
  SLTI s4, s3, 100
  BNE s4, zero, bb21
  # implict jump to bb14
bb14:
  LUI t5, 2
  ADDIW t5, t5, -184
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -184
  ADD t5, t5, sp
  FLW ft3, 0(t5)
  FSGNJ.S fs0, ft4, ft3
  ADD s0, zero, zero
  # implict jump to bb15
bb15:
  ADD s1, s0, zero
  FSGNJ.S fs1, fs0, fs0
  SLTI s2, s1, 1000
  BNE s2, zero, bb17
  # implict jump to bb16
bb16:
  ADDI a0, zero, 95
  CALL _sysy_stoptime
  FSGNJ.S fa0, fs1, fs1
  CALL putfloat
  ADD a0, zero, zero
  LUI t5, 2
  ADDIW t5, t5, -152
  ADD t5, t5, sp
  FLD fs8, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -144
  ADD t5, t5, sp
  FLD fs0, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -136
  ADD t5, t5, sp
  FLD fs9, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -128
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -120
  ADD t5, t5, sp
  LD s3, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -112
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -104
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -88
  ADD t5, t5, sp
  LD s5, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -80
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -72
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -64
  ADD t5, t5, sp
  FLD fs2, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -56
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -48
  ADD t5, t5, sp
  FLD fs3, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -40
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -32
  ADD t5, t5, sp
  FLD fs4, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -24
  ADD t5, t5, sp
  LD s10, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  FLD fs5, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -8
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  FLD fs6, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 8
  ADD t5, t5, sp
  FLD fs7, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 16
  ADD t5, t5, sp
  FLD fs1, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 24
  ADD t5, t5, sp
  FLD fs11, 0(t5)
  LUI ra, 2
  ADDIW ra, ra, 32
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t5, 2
  ADDIW t5, t5, 40
  ADD t5, t5, sp
  FLD fs10, 0(t5)
  LUI t0, 2
  ADDIW t0, t0, 48
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb17:
  FSGNJ.S fs2, fs1, fs1
  ADD s2, zero, zero
  # implict jump to bb18
bb18:
  ADD s3, s2, zero
  FSGNJ.S fs3, fs2, fs2
  SLTI s4, s3, 1000
  BNE s4, zero, bb20
  # implict jump to bb19
bb19:
  ADDIW s2, s1, 1
  FSGNJ.S fs0, fs3, fs3
  ADD s0, s2, zero
  JAL zero, bb15
bb20:
  LUI s4, 1
  ADDIW s4, s4, -96
  MULW s5, s1, s4
  LA s4, a
  ADD s6, s4, s5
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s4, s6, s5
  FLW fs4, 0(s4)
  FADD.S fs5, fs3, fs4
  ADDIW s4, s3, 1
  FSGNJ.S fs2, fs5, fs5
  ADD s2, s4, zero
  JAL zero, bb18
bb21:
  ADD s4, s2, zero
  ADD s2, zero, zero
  # implict jump to bb22
bb22:
  ADD s5, s2, zero
  ADD s6, s4, zero
  SLTI s7, s5, 1000
  BNE s7, zero, bb45
  # implict jump to bb23
bb23:
  ADD s1, s6, zero
  ADD s2, zero, zero
  # implict jump to bb24
bb24:
  ADD s4, s2, zero
  ADD s5, s1, zero
  SLTI s6, s4, 1000
  BNE s6, zero, bb32
  # implict jump to bb25
bb25:
  LUI t5, 2
  ADDIW t5, t5, -184
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -184
  ADD t5, t5, sp
  FLW ft3, 0(t5)
  FSGNJ.S fs0, ft4, ft3
  ADD s0, s5, zero
  ADD s1, zero, zero
  # implict jump to bb26
bb26:
  ADD s2, s1, zero
  ADD s4, s0, zero
  FSGNJ.S fs1, fs0, fs0
  SLTI s5, s2, 1000
  BNE s5, zero, bb28
  # implict jump to bb27
bb27:
  ADDIW s0, s3, 1
  FSGNJ.S ft4, fs1, fs1
  LUI t4, 2
  ADDIW t4, t4, -176
  ADD t4, t4, sp
  FSW ft4, 0(t4)
  ADD t4, s0, zero
  LUI t5, 2
  ADDIW t5, t5, -188
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s4, zero
  LUI t5, 2
  ADDIW t5, t5, -192
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb13
bb28:
  FSGNJ.S fs2, fs1, fs1
  ADD s5, zero, zero
  # implict jump to bb29
bb29:
  ADD s6, s5, zero
  FSGNJ.S fs3, fs2, fs2
  SLTI s7, s6, 1000
  BNE s7, zero, bb31
  # implict jump to bb30
bb30:
  ADDIW s5, s2, 1
  FSGNJ.S fs0, fs3, fs3
  ADD s0, s6, zero
  ADD s1, s5, zero
  JAL zero, bb26
bb31:
  LUI s7, 1
  ADDIW s7, s7, -96
  MULW s8, s2, s7
  LA s7, a
  ADD s9, s7, s8
  ADDI s7, zero, 4
  MULW s8, s6, s7
  ADD s7, s9, s8
  FLW fs4, 0(s7)
  ADDI s8, zero, 4
  MULW s9, s2, s8
  LUI t5, 1
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  ADD s8, t5, s9
  FLW fs5, 0(s8)
  FSUB.S fs6, fs4, fs5
  ADDI t5, sp, 0
  ADD s8, t5, s9
  FLW fs4, 0(s8)
  FDIV.S fs5, fs6, fs4
  FSW fs5, 0(s7)
  FADD.S fs4, fs3, fs5
  ADDIW s7, s6, 1
  FSGNJ.S fs2, fs4, fs4
  ADD s5, s7, zero
  JAL zero, bb29
bb32:
  ADDI s6, zero, 4
  MULW s7, s4, s6
  ADDI t5, sp, 0
  ADD s6, t5, s7
  LUI t5, 2
  ADDIW t5, t5, -180
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  FSW ft4, 0(s6)
  ADD s8, zero, zero
  # implict jump to bb33
bb33:
  ADD s9, s8, zero
  SLTI s10, s9, 1000
  BNE s10, zero, bb44
  # implict jump to bb34
bb34:
  FLW fs3, 0(s6)
  ADDI s0, zero, 1000
  FCVT.S.W fs4, s0
  FDIV.S fs5, fs3, fs4
  FSW fs5, 0(s6)
  LA s0, .CONSTANT.7.1
  FLW fs3, 0(s0)
  FADD.S fs4, fs5, fs3
  LUI t5, 2
  ADDIW t5, t5, -180
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  FADD.S fs3, ft4, fs4
  ADDI s0, zero, 2
  FCVT.S.W ft4, s0
  LUI t5, 2
  ADDIW t5, t5, -156
  ADD t5, t5, sp
  FSW ft4, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -156
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  FDIV.S fs6, fs3, ft4
  FSGNJ.S fs3, fs6, fs6
  FSGNJ.S fs6, fs4, fs4
  LUI t5, 2
  ADDIW t5, t5, -180
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -180
  ADD t5, t5, sp
  FLW ft3, 0(t5)
  FSGNJ.S fs7, ft4, ft3
  # implict jump to bb35
bb35:
  FSGNJ.S ft4, fs7, fs7
  LUI t5, 2
  ADDIW t5, t5, -160
  ADD t5, t5, sp
  FSW ft4, 0(t5)
  FSGNJ.S ft4, fs6, fs6
  LUI t5, 2
  ADDIW t5, t5, -164
  ADD t5, t5, sp
  FSW ft4, 0(t5)
  FSGNJ.S ft4, fs3, fs3
  LUI t5, 2
  ADDIW t5, t5, -168
  ADD t5, t5, sp
  FSW ft4, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -168
  ADD t5, t5, sp
  FLW ft3, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -168
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  FMUL.S ft4, ft3, ft4
  LUI t5, 2
  ADDIW t5, t5, -172
  ADD t5, t5, sp
  FSW ft4, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -172
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  FSUB.S fs2, ft4, fs4
  LUI t5, 2
  ADDIW t5, t5, -180
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  FLT.S s0, fs2, ft4
  BNE s0, zero, bb43
  # implict jump to bb36
bb36:
  FSGNJ.S fs1, fs2, fs2
  # implict jump to bb37
bb37:
  FSGNJ.S fs0, fs1, fs1
  LA s0, .CONSTANT.7.0
  FLW fs11, 0(s0)
  FLT.S s0, fs11, fs0
  BNE s0, zero, bb39
  # implict jump to bb38
bb38:
  LUI t5, 2
  ADDIW t5, t5, -168
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  FSW ft4, 0(s6)
  ADDIW s0, s4, 1
  ADD s1, s9, zero
  ADD s2, s0, zero
  JAL zero, bb24
bb39:
  LUI t5, 2
  ADDIW t5, t5, -172
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  FLT.S s0, fs4, ft4
  BNE s0, zero, bb42
  # implict jump to bb40
bb40:
  LUI t5, 2
  ADDIW t5, t5, -168
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -164
  ADD t5, t5, sp
  FLW ft3, 0(t5)
  FADD.S fs3, ft4, ft3
  LUI t5, 2
  ADDIW t5, t5, -156
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  FDIV.S fs5, fs3, ft4
  FSGNJ.S fs0, fs5, fs5
  LUI t5, 2
  ADDIW t5, t5, -164
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -164
  ADD t5, t5, sp
  FLW ft3, 0(t5)
  FSGNJ.S fs11, ft4, ft3
  LUI t5, 2
  ADDIW t5, t5, -168
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -168
  ADD t5, t5, sp
  FLW ft3, 0(t5)
  FSGNJ.S fs10, ft4, ft3
  # implict jump to bb41
bb41:
  FSGNJ.S fs9, fs10, fs10
  FSGNJ.S fs8, fs11, fs11
  FSGNJ.S fs5, fs0, fs0
  FSGNJ.S fs3, fs5, fs5
  FSGNJ.S fs6, fs8, fs8
  FSGNJ.S fs7, fs9, fs9
  JAL zero, bb35
bb42:
  LUI t5, 2
  ADDIW t5, t5, -168
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -160
  ADD t5, t5, sp
  FLW ft3, 0(t5)
  FADD.S fs0, ft4, ft3
  LUI t5, 2
  ADDIW t5, t5, -156
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  FDIV.S fs11, fs0, ft4
  FSGNJ.S fs0, fs11, fs11
  LUI t5, 2
  ADDIW t5, t5, -168
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -168
  ADD t5, t5, sp
  FLW ft3, 0(t5)
  FSGNJ.S fs11, ft4, ft3
  LUI t5, 2
  ADDIW t5, t5, -160
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -160
  ADD t5, t5, sp
  FLW ft3, 0(t5)
  FSGNJ.S fs10, ft4, ft3
  JAL zero, bb41
bb43:
  FSGNJN.S fs0, fs2, fs2
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb37
bb44:
  FLW fs3, 0(s6)
  LUI s10, 1
  ADDIW s10, s10, -96
  MULW s11, s4, s10
  LA s10, a
  ADD s0, s10, s11
  ADDI s10, zero, 4
  MULW s11, s9, s10
  ADD s10, s0, s11
  FLW fs4, 0(s10)
  LUI t5, 1
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  ADD s0, t5, s7
  FLW fs5, 0(s0)
  FSUB.S fs6, fs4, fs5
  FMUL.S fs4, fs6, fs6
  FADD.S fs5, fs3, fs4
  FSW fs5, 0(s6)
  ADDIW s0, s9, 1
  ADD s8, s0, zero
  JAL zero, bb33
bb45:
  ADDI s7, zero, 4
  MULW s8, s5, s7
  LUI t5, 1
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  ADD s7, t5, s8
  LUI t5, 2
  ADDIW t5, t5, -180
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  FSW ft4, 0(s7)
  ADD s8, zero, zero
  # implict jump to bb46
bb46:
  ADD s9, s8, zero
  SLTI s10, s9, 1000
  BNE s10, zero, bb48
  # implict jump to bb47
bb47:
  FLW fs3, 0(s7)
  ADDI s1, zero, 1000
  FCVT.S.W fs4, s1
  FDIV.S fs5, fs3, fs4
  FSW fs5, 0(s7)
  ADDIW s1, s5, 1
  ADD s4, s9, zero
  ADD s2, s1, zero
  JAL zero, bb22
bb48:
  FLW fs3, 0(s7)
  LUI s10, 1
  ADDIW s10, s10, -96
  MULW s11, s5, s10
  LA s10, a
  ADD s1, s10, s11
  ADDI s10, zero, 4
  MULW s11, s9, s10
  ADD s10, s1, s11
  FLW fs4, 0(s10)
  FADD.S fs5, fs3, fs4
  FSW fs5, 0(s7)
  ADDIW s1, s9, 1
  ADD s8, s1, zero
  JAL zero, bb46
bb49:
  LUI s2, 1
  ADDIW s2, s2, -96
  MULW s3, s1, s2
  LA s2, a
  ADD s4, s2, s3
  ADD a0, s4, zero
  CALL getfarray
  ADD s2, a0, zero
  XORI s3, s2, 1000
  SLTU s4, zero, s3
  BNE s4, zero, bb51
  # implict jump to bb50
bb50:
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb11
bb51:
  ADD a0, s2, zero
  LUI t5, 2
  ADDIW t5, t5, -152
  ADD t5, t5, sp
  FLD fs8, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -144
  ADD t5, t5, sp
  FLD fs0, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -136
  ADD t5, t5, sp
  FLD fs9, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -128
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -120
  ADD t5, t5, sp
  LD s3, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -112
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -104
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -88
  ADD t5, t5, sp
  LD s5, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -80
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -72
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -64
  ADD t5, t5, sp
  FLD fs2, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -56
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -48
  ADD t5, t5, sp
  FLD fs3, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -40
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -32
  ADD t5, t5, sp
  FLD fs4, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -24
  ADD t5, t5, sp
  LD s10, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  FLD fs5, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, -8
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  FLD fs6, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 8
  ADD t5, t5, sp
  FLD fs7, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 16
  ADD t5, t5, sp
  FLD fs1, 0(t5)
  LUI t5, 2
  ADDIW t5, t5, 24
  ADD t5, t5, sp
  FLD fs11, 0(t5)
  LUI ra, 2
  ADDIW ra, ra, 32
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t5, 2
  ADDIW t5, t5, 40
  ADD t5, t5, sp
  FLD fs10, 0(t5)
  LUI t0, 2
  ADDIW t0, t0, 48
  ADD sp, sp, t0
  JALR zero, 0(ra)
myAbs:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs2, 16(sp)
  FSD fs1, 24(sp)
  FSD fs0, 32(sp)
  FSGNJ.D fs0, fa0, fa0
  FCVT.S.L fs1, zero
  FLT.S s0, fs0, fs1
  BNE s0, zero, bb55
  # implict jump to bb53
bb53:
  FSGNJ.S fs2, fs0, fs0
  # implict jump to bb54
bb54:
  FSGNJ.S fs1, fs2, fs2
  FSGNJ.S fa0, fs1, fs1
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs2, 16(sp)
  FLD fs1, 24(sp)
  FLD fs0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb55:
  FSGNJN.S fs1, fs0, fs0
  FSGNJ.S fs2, fs1, fs1
  JAL zero, bb54
