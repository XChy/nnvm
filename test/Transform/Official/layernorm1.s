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
  JAL zero, bb1
bb1:
  FSGNJ.S fs6, fs5, fs5
  FSGNJ.S fs7, fs4, fs4
  FSGNJ.S fs8, fs2, fs2
  FMUL.S fs9, fs8, fs8
  FSUB.S fs10, fs9, fs0
  FLT.S s0, fs10, fs1
  BNE s0, zero, bb7
  JAL zero, bb9
bb2:
  FLT.S s0, fs0, fs9
  BNE s0, zero, bb4
  JAL zero, bb6
bb3:
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
bb4:
  FADD.S fs11, fs8, fs6
  FDIV.S ft1, fs11, fs3
  FSGNJ.S fs11, ft1, ft1
  FSGNJ.S ft1, fs8, fs8
  FSGNJ.S ft2, fs6, fs6
  JAL zero, bb5
bb5:
  FSGNJ.S ft5, ft2, ft2
  FSGNJ.S ft6, ft1, ft1
  FSGNJ.S ft7, fs11, fs11
  FSGNJ.S fs2, ft7, ft7
  FSGNJ.S fs4, ft6, ft6
  FSGNJ.S fs5, ft5, ft5
  JAL zero, bb1
bb6:
  FADD.S fs2, fs8, fs7
  FDIV.S fs4, fs2, fs3
  FSGNJ.S fs11, fs4, fs4
  FSGNJ.S ft1, fs7, fs7
  FSGNJ.S ft2, fs8, fs8
  JAL zero, bb5
bb7:
  FSGNJN.S fs11, fs10, fs10
  FSGNJ.S ft0, fs11, fs11
  JAL zero, bb8
bb8:
  FSGNJ.S fs11, ft0, ft0
  LA s0, .CONSTANT.7.0
  FLW ft1, 0(s0)
  FLT.S s0, ft1, fs11
  BNE s0, zero, bb2
  JAL zero, bb3
bb9:
  FSGNJ.S ft0, fs10, fs10
  JAL zero, bb8
main:
  LUI t0, 1048574
  ADDIW t0, t0, -48
  ADD sp, sp, t0
  LUI t5, 2
  ADDIW t5, t5, -152
  ADD t5, t5, sp
  FSD fs8, 0(t5)
  LUI t6, 2
  ADDIW t6, t6, -144
  ADD t6, t6, sp
  FSD fs0, 0(t6)
  LUI t5, 2
  ADDIW t5, t5, -136
  ADD t5, t5, sp
  FSD fs9, 0(t5)
  LUI t6, 2
  ADDIW t6, t6, -128
  ADD t6, t6, sp
  SD s4, 0(t6)
  LUI t5, 2
  ADDIW t5, t5, -120
  ADD t5, t5, sp
  SD s3, 0(t5)
  LUI t6, 2
  ADDIW t6, t6, -112
  ADD t6, t6, sp
  SD s2, 0(t6)
  LUI t5, 2
  ADDIW t5, t5, -104
  ADD t5, t5, sp
  SD s6, 0(t5)
  LUI t6, 2
  ADDIW t6, t6, -96
  ADD t6, t6, sp
  SD s1, 0(t6)
  LUI t5, 2
  ADDIW t5, t5, -88
  ADD t5, t5, sp
  SD s5, 0(t5)
  LUI t6, 2
  ADDIW t6, t6, -80
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t5, 2
  ADDIW t5, t5, -72
  ADD t5, t5, sp
  SD s7, 0(t5)
  LUI t6, 2
  ADDIW t6, t6, -64
  ADD t6, t6, sp
  FSD fs2, 0(t6)
  LUI t5, 2
  ADDIW t5, t5, -56
  ADD t5, t5, sp
  SD s8, 0(t5)
  LUI t6, 2
  ADDIW t6, t6, -48
  ADD t6, t6, sp
  FSD fs3, 0(t6)
  LUI t5, 2
  ADDIW t5, t5, -40
  ADD t5, t5, sp
  SD s9, 0(t5)
  LUI t6, 2
  ADDIW t6, t6, -32
  ADD t6, t6, sp
  FSD fs4, 0(t6)
  LUI t5, 2
  ADDIW t5, t5, -24
  ADD t5, t5, sp
  SD s10, 0(t5)
  LUI t6, 2
  ADDIW t6, t6, -16
  ADD t6, t6, sp
  FSD fs5, 0(t6)
  LUI t5, 2
  ADDIW t5, t5, -8
  ADD t5, t5, sp
  SD s11, 0(t5)
  LUI t6, 2
  ADDIW t6, t6, 0
  ADD t6, t6, sp
  FSD fs6, 0(t6)
  LUI t5, 2
  ADDIW t5, t5, 8
  ADD t5, t5, sp
  FSD fs7, 0(t5)
  LUI t6, 2
  ADDIW t6, t6, 16
  ADD t6, t6, sp
  FSD fs1, 0(t6)
  LUI t5, 2
  ADDIW t5, t5, 24
  ADD t5, t5, sp
  FSD fs11, 0(t5)
  LUI t6, 2
  ADDIW t6, t6, 32
  ADD t6, t6, sp
  SD ra, 0(t6)
  LUI t5, 2
  ADDIW t5, t5, 40
  ADD t5, t5, sp
  FSD fs10, 0(t5)
  ADDI s0, zero, 0
  FCVT.S.W ft4, s0
  LUI t6, 2
  ADDIW t6, t6, -180
  ADD t6, t6, sp
  FSW ft4, 0(t6)
  ADD s0, zero, zero
  JAL zero, bb11
bb11:
  ADD s1, s0, zero
  SLTI s2, s1, 1000
  BNE s2, zero, bb12
  JAL zero, bb13
bb12:
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
  BNE s4, zero, bb14
  JAL zero, bb15
bb13:
  ADDI a0, zero, 42
  CALL _sysy_starttime
  LUI t5, 2
  ADDIW t5, t5, -180
  ADD t5, t5, sp
  FLW ft3, 0(t5)
  LUI t6, 2
  ADDIW t6, t6, -180
  ADD t6, t6, sp
  FLW ft4, 0(t6)
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
  LUI t6, 2
  ADDIW t6, t6, -192
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb16
bb14:
  ADD a0, s2, zero
  LUI t5, 2
  ADDIW t5, t5, -152
  ADD t5, t5, sp
  FLD fs8, 0(t5)
  LUI t6, 2
  ADDIW t6, t6, -144
  ADD t6, t6, sp
  FLD fs0, 0(t6)
  LUI t5, 2
  ADDIW t5, t5, -136
  ADD t5, t5, sp
  FLD fs9, 0(t5)
  LUI t6, 2
  ADDIW t6, t6, -128
  ADD t6, t6, sp
  LD s4, 0(t6)
  LUI t5, 2
  ADDIW t5, t5, -120
  ADD t5, t5, sp
  LD s3, 0(t5)
  LUI t6, 2
  ADDIW t6, t6, -112
  ADD t6, t6, sp
  LD s2, 0(t6)
  LUI t5, 2
  ADDIW t5, t5, -104
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t6, 2
  ADDIW t6, t6, -96
  ADD t6, t6, sp
  LD s1, 0(t6)
  LUI t5, 2
  ADDIW t5, t5, -88
  ADD t5, t5, sp
  LD s5, 0(t5)
  LUI t6, 2
  ADDIW t6, t6, -80
  ADD t6, t6, sp
  LD s0, 0(t6)
  LUI t5, 2
  ADDIW t5, t5, -72
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI t6, 2
  ADDIW t6, t6, -64
  ADD t6, t6, sp
  FLD fs2, 0(t6)
  LUI t5, 2
  ADDIW t5, t5, -56
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t6, 2
  ADDIW t6, t6, -48
  ADD t6, t6, sp
  FLD fs3, 0(t6)
  LUI t5, 2
  ADDIW t5, t5, -40
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t6, 2
  ADDIW t6, t6, -32
  ADD t6, t6, sp
  FLD fs4, 0(t6)
  LUI t5, 2
  ADDIW t5, t5, -24
  ADD t5, t5, sp
  LD s10, 0(t5)
  LUI t6, 2
  ADDIW t6, t6, -16
  ADD t6, t6, sp
  FLD fs5, 0(t6)
  LUI t5, 2
  ADDIW t5, t5, -8
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI t6, 2
  ADDIW t6, t6, 0
  ADD t6, t6, sp
  FLD fs6, 0(t6)
  LUI t5, 2
  ADDIW t5, t5, 8
  ADD t5, t5, sp
  FLD fs7, 0(t5)
  LUI t6, 2
  ADDIW t6, t6, 16
  ADD t6, t6, sp
  FLD fs1, 0(t6)
  LUI t5, 2
  ADDIW t5, t5, 24
  ADD t5, t5, sp
  FLD fs11, 0(t5)
  LUI ra, 2
  ADDIW ra, ra, 32
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t6, 2
  ADDIW t6, t6, 40
  ADD t6, t6, sp
  FLD fs10, 0(t6)
  LUI t0, 2
  ADDIW t0, t0, 48
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb15:
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb11
bb16:
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
  LUI t6, 2
  ADDIW t6, t6, -176
  ADD t6, t6, sp
  FLW ft4, 0(t6)
  FSGNJ.S ft4, ft3, ft4
  LUI t5, 2
  ADDIW t5, t5, -184
  ADD t5, t5, sp
  FSW ft4, 0(t5)
  SLTI s4, s3, 100
  BNE s4, zero, bb17
  JAL zero, bb18
bb17:
  ADD s4, s2, zero
  ADD s2, zero, zero
  JAL zero, bb19
bb18:
  LUI t6, 2
  ADDIW t6, t6, -184
  ADD t6, t6, sp
  FLW ft4, 0(t6)
  LUI t5, 2
  ADDIW t5, t5, -184
  ADD t5, t5, sp
  FLW ft3, 0(t5)
  FSGNJ.S fs0, ft4, ft3
  ADD s0, zero, zero
  JAL zero, bb37
bb19:
  ADD s5, s2, zero
  ADD s6, s4, zero
  SLTI s7, s5, 1000
  BNE s7, zero, bb20
  JAL zero, bb21
bb20:
  ADDI s7, zero, 4
  MULW s8, s5, s7
  LUI t6, 1
  ADDIW t6, t6, -96
  ADD t6, t6, sp
  ADD s7, t6, s8
  LUI t5, 2
  ADDIW t5, t5, -180
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  FSW ft4, 0(s7)
  ADD s8, zero, zero
  JAL zero, bb22
bb21:
  ADD s1, s6, zero
  ADD s2, zero, zero
  JAL zero, bb25
bb22:
  ADD s9, s8, zero
  SLTI s10, s9, 1000
  BNE s10, zero, bb23
  JAL zero, bb24
bb23:
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
  JAL zero, bb22
bb24:
  FLW fs3, 0(s7)
  ADDI s1, zero, 1000
  FCVT.S.W fs4, s1
  FDIV.S fs5, fs3, fs4
  FSW fs5, 0(s7)
  ADDIW s1, s5, 1
  ADD s4, s9, zero
  ADD s2, s1, zero
  JAL zero, bb19
bb25:
  ADD s4, s2, zero
  ADD s5, s1, zero
  SLTI s6, s4, 1000
  BNE s6, zero, bb26
  JAL zero, bb27
bb26:
  ADDI s6, zero, 4
  MULW s7, s4, s6
  ADDI t6, sp, 0
  ADD s6, t6, s7
  LUI t5, 2
  ADDIW t5, t5, -180
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  FSW ft4, 0(s6)
  ADD s8, zero, zero
  JAL zero, bb28
bb27:
  LUI t6, 2
  ADDIW t6, t6, -184
  ADD t6, t6, sp
  FLW ft4, 0(t6)
  LUI t5, 2
  ADDIW t5, t5, -184
  ADD t5, t5, sp
  FLW ft3, 0(t5)
  FSGNJ.S fs0, ft4, ft3
  ADD s0, s5, zero
  ADD s1, zero, zero
  JAL zero, bb31
bb28:
  ADD s9, s8, zero
  SLTI s10, s9, 1000
  BNE s10, zero, bb29
  JAL zero, bb30
bb29:
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
  LUI t6, 1
  ADDIW t6, t6, -96
  ADD t6, t6, sp
  ADD s0, t6, s7
  FLW fs5, 0(s0)
  FSUB.S fs6, fs4, fs5
  FMUL.S fs4, fs6, fs6
  FADD.S fs5, fs3, fs4
  FSW fs5, 0(s6)
  ADDIW s0, s9, 1
  ADD s8, s0, zero
  JAL zero, bb28
bb30:
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
  LUI t6, 2
  ADDIW t6, t6, -156
  ADD t6, t6, sp
  FSW ft4, 0(t6)
  LUI t5, 2
  ADDIW t5, t5, -156
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  FDIV.S fs6, fs3, ft4
  FSGNJ.S fs3, fs6, fs6
  FSGNJ.S fs6, fs4, fs4
  LUI t6, 2
  ADDIW t6, t6, -180
  ADD t6, t6, sp
  FLW ft4, 0(t6)
  LUI t5, 2
  ADDIW t5, t5, -180
  ADD t5, t5, sp
  FLW ft3, 0(t5)
  FSGNJ.S fs7, ft4, ft3
  JAL zero, bb43
bb31:
  ADD s2, s1, zero
  ADD s4, s0, zero
  FSGNJ.S fs1, fs0, fs0
  SLTI s5, s2, 1000
  BNE s5, zero, bb32
  JAL zero, bb33
bb32:
  FSGNJ.S fs2, fs1, fs1
  ADD s5, zero, zero
  JAL zero, bb34
bb33:
  ADDIW s0, s3, 1
  FSGNJ.S ft4, fs1, fs1
  LUI t4, 2
  ADDIW t4, t4, -176
  ADD t4, t4, sp
  FSW ft4, 0(t4)
  ADD t4, s0, zero
  LUI t6, 2
  ADDIW t6, t6, -188
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s4, zero
  LUI t5, 2
  ADDIW t5, t5, -192
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb16
bb34:
  ADD s6, s5, zero
  FSGNJ.S fs3, fs2, fs2
  SLTI s7, s6, 1000
  BNE s7, zero, bb35
  JAL zero, bb36
bb35:
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
  LUI t6, 1
  ADDIW t6, t6, -96
  ADD t6, t6, sp
  ADD s8, t6, s9
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
  JAL zero, bb34
bb36:
  ADDIW s5, s2, 1
  FSGNJ.S fs0, fs3, fs3
  ADD s0, s6, zero
  ADD s1, s5, zero
  JAL zero, bb31
bb37:
  ADD s1, s0, zero
  FSGNJ.S fs1, fs0, fs0
  SLTI s2, s1, 1000
  BNE s2, zero, bb38
  JAL zero, bb39
bb38:
  FSGNJ.S fs2, fs1, fs1
  ADD s2, zero, zero
  JAL zero, bb40
bb39:
  ADDI a0, zero, 95
  CALL _sysy_stoptime
  FSGNJ.S fa0, fs1, fs1
  CALL putfloat
  ADD a0, zero, zero
  LUI t6, 2
  ADDIW t6, t6, -152
  ADD t6, t6, sp
  FLD fs8, 0(t6)
  LUI t5, 2
  ADDIW t5, t5, -144
  ADD t5, t5, sp
  FLD fs0, 0(t5)
  LUI t6, 2
  ADDIW t6, t6, -136
  ADD t6, t6, sp
  FLD fs9, 0(t6)
  LUI t5, 2
  ADDIW t5, t5, -128
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI t6, 2
  ADDIW t6, t6, -120
  ADD t6, t6, sp
  LD s3, 0(t6)
  LUI t5, 2
  ADDIW t5, t5, -112
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t6, 2
  ADDIW t6, t6, -104
  ADD t6, t6, sp
  LD s6, 0(t6)
  LUI t5, 2
  ADDIW t5, t5, -96
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t6, 2
  ADDIW t6, t6, -88
  ADD t6, t6, sp
  LD s5, 0(t6)
  LUI t5, 2
  ADDIW t5, t5, -80
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t6, 2
  ADDIW t6, t6, -72
  ADD t6, t6, sp
  LD s7, 0(t6)
  LUI t5, 2
  ADDIW t5, t5, -64
  ADD t5, t5, sp
  FLD fs2, 0(t5)
  LUI t6, 2
  ADDIW t6, t6, -56
  ADD t6, t6, sp
  LD s8, 0(t6)
  LUI t5, 2
  ADDIW t5, t5, -48
  ADD t5, t5, sp
  FLD fs3, 0(t5)
  LUI t6, 2
  ADDIW t6, t6, -40
  ADD t6, t6, sp
  LD s9, 0(t6)
  LUI t5, 2
  ADDIW t5, t5, -32
  ADD t5, t5, sp
  FLD fs4, 0(t5)
  LUI t6, 2
  ADDIW t6, t6, -24
  ADD t6, t6, sp
  LD s10, 0(t6)
  LUI t5, 2
  ADDIW t5, t5, -16
  ADD t5, t5, sp
  FLD fs5, 0(t5)
  LUI t6, 2
  ADDIW t6, t6, -8
  ADD t6, t6, sp
  LD s11, 0(t6)
  LUI t5, 2
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  FLD fs6, 0(t5)
  LUI t6, 2
  ADDIW t6, t6, 8
  ADD t6, t6, sp
  FLD fs7, 0(t6)
  LUI t5, 2
  ADDIW t5, t5, 16
  ADD t5, t5, sp
  FLD fs1, 0(t5)
  LUI t6, 2
  ADDIW t6, t6, 24
  ADD t6, t6, sp
  FLD fs11, 0(t6)
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
bb40:
  ADD s3, s2, zero
  FSGNJ.S fs3, fs2, fs2
  SLTI s4, s3, 1000
  BNE s4, zero, bb41
  JAL zero, bb42
bb41:
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
  JAL zero, bb40
bb42:
  ADDIW s2, s1, 1
  FSGNJ.S fs0, fs3, fs3
  ADD s0, s2, zero
  JAL zero, bb37
bb43:
  FSGNJ.S ft4, fs7, fs7
  LUI t6, 2
  ADDIW t6, t6, -160
  ADD t6, t6, sp
  FSW ft4, 0(t6)
  FSGNJ.S ft4, fs6, fs6
  LUI t5, 2
  ADDIW t5, t5, -164
  ADD t5, t5, sp
  FSW ft4, 0(t5)
  FSGNJ.S ft4, fs3, fs3
  LUI t6, 2
  ADDIW t6, t6, -168
  ADD t6, t6, sp
  FSW ft4, 0(t6)
  LUI t5, 2
  ADDIW t5, t5, -168
  ADD t5, t5, sp
  FLW ft3, 0(t5)
  LUI t6, 2
  ADDIW t6, t6, -168
  ADD t6, t6, sp
  FLW ft4, 0(t6)
  FMUL.S ft4, ft3, ft4
  LUI t5, 2
  ADDIW t5, t5, -172
  ADD t5, t5, sp
  FSW ft4, 0(t5)
  LUI t6, 2
  ADDIW t6, t6, -172
  ADD t6, t6, sp
  FLW ft4, 0(t6)
  FSUB.S fs2, ft4, fs4
  LUI t5, 2
  ADDIW t5, t5, -180
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  FLT.S s0, fs2, ft4
  BNE s0, zero, bb49
  JAL zero, bb51
bb44:
  LUI t6, 2
  ADDIW t6, t6, -172
  ADD t6, t6, sp
  FLW ft4, 0(t6)
  FLT.S s0, fs4, ft4
  BNE s0, zero, bb46
  JAL zero, bb48
bb45:
  LUI t5, 2
  ADDIW t5, t5, -168
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  FSW ft4, 0(s6)
  ADDIW s0, s4, 1
  ADD s1, s9, zero
  ADD s2, s0, zero
  JAL zero, bb25
bb46:
  LUI t6, 2
  ADDIW t6, t6, -168
  ADD t6, t6, sp
  FLW ft4, 0(t6)
  LUI t5, 2
  ADDIW t5, t5, -160
  ADD t5, t5, sp
  FLW ft3, 0(t5)
  FADD.S fs0, ft4, ft3
  LUI t6, 2
  ADDIW t6, t6, -156
  ADD t6, t6, sp
  FLW ft4, 0(t6)
  FDIV.S fs11, fs0, ft4
  FSGNJ.S fs0, fs11, fs11
  LUI t5, 2
  ADDIW t5, t5, -168
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  LUI t6, 2
  ADDIW t6, t6, -168
  ADD t6, t6, sp
  FLW ft3, 0(t6)
  FSGNJ.S fs11, ft4, ft3
  LUI t5, 2
  ADDIW t5, t5, -160
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  LUI t6, 2
  ADDIW t6, t6, -160
  ADD t6, t6, sp
  FLW ft3, 0(t6)
  FSGNJ.S fs10, ft4, ft3
  JAL zero, bb47
bb47:
  FSGNJ.S fs9, fs10, fs10
  FSGNJ.S fs8, fs11, fs11
  FSGNJ.S fs5, fs0, fs0
  FSGNJ.S fs3, fs5, fs5
  FSGNJ.S fs6, fs8, fs8
  FSGNJ.S fs7, fs9, fs9
  JAL zero, bb43
bb48:
  LUI t5, 2
  ADDIW t5, t5, -168
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  LUI t6, 2
  ADDIW t6, t6, -164
  ADD t6, t6, sp
  FLW ft3, 0(t6)
  FADD.S fs3, ft4, ft3
  LUI t5, 2
  ADDIW t5, t5, -156
  ADD t5, t5, sp
  FLW ft4, 0(t5)
  FDIV.S fs5, fs3, ft4
  FSGNJ.S fs0, fs5, fs5
  LUI t6, 2
  ADDIW t6, t6, -164
  ADD t6, t6, sp
  FLW ft4, 0(t6)
  LUI t5, 2
  ADDIW t5, t5, -164
  ADD t5, t5, sp
  FLW ft3, 0(t5)
  FSGNJ.S fs11, ft4, ft3
  LUI t6, 2
  ADDIW t6, t6, -168
  ADD t6, t6, sp
  FLW ft4, 0(t6)
  LUI t5, 2
  ADDIW t5, t5, -168
  ADD t5, t5, sp
  FLW ft3, 0(t5)
  FSGNJ.S fs10, ft4, ft3
  JAL zero, bb47
bb49:
  FSGNJN.S fs0, fs2, fs2
  FSGNJ.S fs1, fs0, fs0
  JAL zero, bb50
bb50:
  FSGNJ.S fs0, fs1, fs1
  LA s0, .CONSTANT.7.0
  FLW fs11, 0(s0)
  FLT.S s0, fs11, fs0
  BNE s0, zero, bb44
  JAL zero, bb45
bb51:
  FSGNJ.S fs1, fs2, fs2
  JAL zero, bb50
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
  BNE s0, zero, bb53
  JAL zero, bb55
bb53:
  FSGNJN.S fs1, fs0, fs0
  FSGNJ.S fs2, fs1, fs1
  JAL zero, bb54
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
  FSGNJ.S fs2, fs0, fs0
  JAL zero, bb54
