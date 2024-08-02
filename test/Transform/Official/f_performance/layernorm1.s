.global main
.section .bss
a:
.space 4000000


.section .data

.CONSTANT.7.0:
.word 0x3c23d70a
.CONSTANT.7.1:
.word 0x3a83126f
.section .text
main:
  LUI t0, 1048574
  ADDIW t0, t0, 48
  ADD sp, sp, t0
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  FSD fs0, 48(sp)
  FSD fs1, 56(sp)
  FSD fs2, 64(sp)
  FSD fs3, 72(sp)
  FSD fs4, 80(sp)
  FSD fs5, 88(sp)
  FSD fs6, 96(sp)
  FSD fs7, 104(sp)
  FSD fs8, 112(sp)
  FSD fs9, 120(sp)
  FSD fs10, 128(sp)
  ADDI a0, zero, 0
  FCVT.S.W fs0, a0
  ADD a0, zero, zero
  # implict jump to bb1
bb1:
  ADD s0, a0, zero
  SLTI a0, s0, 1000
  BNE a0, zero, bb39
  # implict jump to bb2
bb2:
  ADDI a0, zero, 42
  CALL _sysy_starttime
  ADD a0, zero, zero
  FSGNJ.S fs1, fs0, fs0
  # implict jump to bb3
bb3:
  ADD s0, zero, zero
  # implict jump to bb4
bb4:
  SLLIW s1, s0, 2
  ADDI t5, sp, 136
  ADD s1, t5, s1
  FSW fs0, 0(s1)
  LUI s2, 1
  ADDIW s2, s2, -96
  MULW s2, s0, s2
  LA s3, a
  ADD s2, s3, s2
  ADD s3, zero, zero
  # implict jump to bb5
bb5:
  FLW fs2, 0(s1)
  SLLIW s4, s3, 2
  ADD s4, s2, s4
  FLW fs3, 0(s4)
  FADD.S fs2, fs2, fs3
  FSW fs2, 0(s1)
  ADDIW s3, s3, 1
  SLTI s4, s3, 1000
  BNE s4, zero, bb38
  # implict jump to bb6
bb6:
  FLW fs2, 0(s1)
  ADDI s2, zero, 1000
  FCVT.S.W fs3, s2
  FDIV.S fs2, fs2, fs3
  FSW fs2, 0(s1)
  ADDIW s0, s0, 1
  SLTI s1, s0, 1000
  BNE s1, zero, bb37
  # implict jump to bb7
bb7:
  ADD s0, zero, zero
  # implict jump to bb8
bb8:
  SLLIW s1, s0, 2
  LUI t5, 1
  ADDIW t5, t5, 40
  ADD t5, t5, sp
  ADD s2, t5, s1
  FSW fs0, 0(s2)
  LUI s3, 1
  ADDIW s3, s3, -96
  MULW s3, s0, s3
  LA s4, a
  ADD s3, s4, s3
  ADDI t5, sp, 136
  ADD s1, t5, s1
  FLW fs2, 0(s1)
  ADD s1, zero, zero
  # implict jump to bb9
bb9:
  FLW fs4, 0(s2)
  SLLIW s4, s1, 2
  ADD s4, s3, s4
  FLW fs5, 0(s4)
  FSUB.S fs5, fs5, fs2
  FMUL.S fs5, fs5, fs5
  FADD.S fs4, fs4, fs5
  FSW fs4, 0(s2)
  ADDIW s1, s1, 1
  SLTI s4, s1, 1000
  BNE s4, zero, bb36
  # implict jump to bb10
bb10:
  FLW fs2, 0(s2)
  FDIV.S fs2, fs2, fs3
  FSW fs2, 0(s2)
  LA s1, .CONSTANT.7.0
  FLW fs4, 0(s1)
  FADD.S fs2, fs2, fs4
  FADD.S fs4, fs0, fs2
  ADDI s1, zero, 2
  FCVT.S.W fs5, s1
  FDIV.S fs4, fs4, fs5
  FSGNJ.S fs6, fs2, fs2
  FSGNJ.S fs7, fs0, fs0
  # implict jump to bb11
bb11:
  FMUL.S fs8, fs4, fs4
  FSUB.S fs9, fs8, fs2
  FLT.S s1, fs9, fs0
  BNE s1, zero, bb35
  # implict jump to bb12
bb12:
  # implict jump to bb13
bb13:
  LA s1, .CONSTANT.7.1
  FLW fs10, 0(s1)
  FLT.S s1, fs10, fs9
  BNE s1, zero, bb31
  # implict jump to bb14
bb14:
  FSW fs4, 0(s2)
  ADDIW s0, s0, 1
  SLTI s1, s0, 1000
  BNE s1, zero, bb30
  # implict jump to bb15
bb15:
  ADD s0, zero, zero
  # implict jump to bb16
bb16:
  LUI s1, 1
  ADDIW s1, s1, -96
  MULW s1, s0, s1
  LA s2, a
  ADD s1, s2, s1
  SLLIW s2, s0, 2
  ADDI t5, sp, 136
  ADD s3, t5, s2
  FLW fs2, 0(s3)
  LUI t5, 1
  ADDIW t5, t5, 40
  ADD t5, t5, sp
  ADD s2, t5, s2
  FLW fs3, 0(s2)
  ADD s2, zero, zero
  # implict jump to bb17
bb17:
  SLLIW s3, s2, 2
  ADD s3, s1, s3
  FLW fs4, 0(s3)
  FSUB.S fs4, fs4, fs2
  FDIV.S fs4, fs4, fs3
  FSW fs4, 0(s3)
  FADD.S fs1, fs1, fs4
  ADDIW s2, s2, 1
  SLTI s3, s2, 1000
  BNE s3, zero, bb29
  # implict jump to bb18
bb18:
  ADDIW s0, s0, 1
  SLTI s1, s0, 1000
  BNE s1, zero, bb28
  # implict jump to bb19
bb19:
  ADDIW a0, a0, 1
  SLTI s0, a0, 100
  BNE s0, zero, bb27
  # implict jump to bb20
bb20:
  ADD a0, zero, zero
  FSGNJ.S fs0, fs1, fs1
  # implict jump to bb21
bb21:
  LUI s0, 1
  ADDIW s0, s0, -96
  MULW s0, a0, s0
  LA s1, a
  ADD s0, s1, s0
  ADD s1, zero, zero
  # implict jump to bb22
bb22:
  SLLIW s2, s1, 2
  ADD s2, s0, s2
  FLW fs1, 0(s2)
  FADD.S fs0, fs0, fs1
  ADDIW s1, s1, 1
  SLTI s2, s1, 1000
  BNE s2, zero, bb26
  # implict jump to bb23
bb23:
  ADDIW a0, a0, 1
  SLTI s0, a0, 1000
  BNE s0, zero, bb25
  # implict jump to bb24
bb24:
  ADDI a0, zero, 95
  CALL _sysy_stoptime
  FSGNJ.S fa0, fs0, fs0
  CALL putfloat
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  FLD fs0, 48(sp)
  FLD fs1, 56(sp)
  FLD fs2, 64(sp)
  FLD fs3, 72(sp)
  FLD fs4, 80(sp)
  FLD fs5, 88(sp)
  FLD fs6, 96(sp)
  FLD fs7, 104(sp)
  FLD fs8, 112(sp)
  FLD fs9, 120(sp)
  FLD fs10, 128(sp)
  LUI t0, 2
  ADDIW t0, t0, -48
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb25:
  JAL zero, bb21
bb26:
  JAL zero, bb22
bb27:
  JAL zero, bb3
bb28:
  JAL zero, bb16
bb29:
  JAL zero, bb17
bb30:
  JAL zero, bb8
bb31:
  FLT.S s1, fs2, fs8
  BNE s1, zero, bb34
  # implict jump to bb32
bb32:
  FADD.S fs7, fs4, fs6
  FDIV.S fs7, fs7, fs5
  FSGNJ.S fs8, fs7, fs7
  # implict jump to bb33
bb33:
  FSGNJ.S fs7, fs4, fs4
  FSGNJ.S fs4, fs8, fs8
  JAL zero, bb11
bb34:
  FADD.S fs6, fs4, fs7
  FDIV.S fs6, fs6, fs5
  FSGNJ.S fs8, fs6, fs6
  FSGNJ.S fs6, fs4, fs4
  FSGNJ.S fs4, fs7, fs7
  JAL zero, bb33
bb35:
  FSGNJN.S fs9, fs9, fs9
  JAL zero, bb13
bb36:
  JAL zero, bb9
bb37:
  JAL zero, bb4
bb38:
  JAL zero, bb5
bb39:
  LUI a0, 1
  ADDIW a0, a0, -96
  MULW a0, s0, a0
  LA s1, a
  ADD a0, s1, a0
  CALL getfarray
  XORI s1, a0, 1000
  BNE s1, zero, bb41
  # implict jump to bb40
bb40:
  ADDIW a0, s0, 1
  JAL zero, bb1
bb41:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  FLD fs0, 48(sp)
  FLD fs1, 56(sp)
  FLD fs2, 64(sp)
  FLD fs3, 72(sp)
  FLD fs4, 80(sp)
  FLD fs5, 88(sp)
  FLD fs6, 96(sp)
  FLD fs7, 104(sp)
  FLD fs8, 112(sp)
  FLD fs9, 120(sp)
  FLD fs10, 128(sp)
  LUI t0, 2
  ADDIW t0, t0, -48
  ADD sp, sp, t0
  JALR zero, 0(ra)
