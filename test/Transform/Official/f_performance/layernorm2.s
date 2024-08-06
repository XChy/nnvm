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
  FCVT.S.W fs5, a0
  ADD s0, zero, zero
  # implict jump to bb1
bb1:
  SLTI a0, s0, 1000
  BNE a0, zero, bb39
  # implict jump to bb2
bb2:
  ADDI a0, zero, 42
  CALL _sysy_starttime
  ADDI a0, zero, 1000
  FCVT.S.W fs6, a0
  ADD s1, zero, zero
  FSGNJ.S fs4, fs5, fs5
  # implict jump to bb3
bb3:
  ADD s0, zero, zero
  # implict jump to bb4
bb4:
  SLLIW a0, s0, 2
  ADDI t6, sp, 136
  ADD s2, t6, a0
  FSW fs5, 0(s2)
  LUI a0, 1
  ADDIW a0, a0, -96
  MULW a0, s0, a0
  LA s3, a
  ADD s3, s3, a0
  ADD a0, zero, zero
  # implict jump to bb5
bb5:
  FLW fs0, 0(s2)
  SLLIW s4, a0, 2
  ADD s4, s3, s4
  FLW fs1, 0(s4)
  FADD.S fs0, fs0, fs1
  FSW fs0, 0(s2)
  ADDIW a0, a0, 1
  SLTI s4, a0, 1000
  BNE s4, zero, bb38
  # implict jump to bb6
bb6:
  FLW fs0, 0(s2)
  FDIV.S fs0, fs0, fs6
  FSW fs0, 0(s2)
  ADDIW s0, s0, 1
  SLTI a0, s0, 1000
  BNE a0, zero, bb37
  # implict jump to bb7
bb7:
  ADD s0, zero, zero
  # implict jump to bb8
bb8:
  SLLIW a0, s0, 2
  LUI t6, 1
  ADDIW t6, t6, 40
  ADD t6, t6, sp
  ADD s2, t6, a0
  FSW fs5, 0(s2)
  LUI s3, 1
  ADDIW s3, s3, -96
  MULW s3, s0, s3
  LA s4, a
  ADD s3, s4, s3
  ADDI t6, sp, 136
  ADD a0, t6, a0
  FLW fs0, 0(a0)
  ADD a0, zero, zero
  # implict jump to bb9
bb9:
  FLW fs1, 0(s2)
  SLLIW s4, a0, 2
  ADD s4, s3, s4
  FLW fs2, 0(s4)
  FSUB.S fs2, fs2, fs0
  FMUL.S fs2, fs2, fs2
  FADD.S fs1, fs1, fs2
  FSW fs1, 0(s2)
  ADDIW a0, a0, 1
  SLTI s4, a0, 1000
  BNE s4, zero, bb36
  # implict jump to bb10
bb10:
  FLW fs0, 0(s2)
  FDIV.S fs0, fs0, fs6
  FSW fs0, 0(s2)
  LA a0, .CONSTANT.7.0
  FLW fs1, 0(a0)
  FADD.S fs7, fs0, fs1
  FADD.S fs0, fs5, fs7
  ADDI a0, zero, 2
  FCVT.S.W fs8, a0
  FDIV.S fs3, fs0, fs8
  FSGNJ.S fs1, fs7, fs7
  FSGNJ.S fs0, fs5, fs5
  # implict jump to bb11
bb11:
  FMUL.S fs9, fs3, fs3
  FSUB.S fs2, fs9, fs7
  FLT.S a0, fs2, fs5
  BNE a0, zero, bb35
  # implict jump to bb12
bb12:
  # implict jump to bb13
bb13:
  LA a0, .CONSTANT.7.1
  FLW fs10, 0(a0)
  FLT.S a0, fs10, fs2
  BNE a0, zero, bb31
  # implict jump to bb14
bb14:
  FSW fs3, 0(s2)
  ADDIW s0, s0, 1
  SLTI a0, s0, 1000
  BNE a0, zero, bb30
  # implict jump to bb15
bb15:
  ADD s0, zero, zero
  # implict jump to bb16
bb16:
  LUI a0, 1
  ADDIW a0, a0, -96
  MULW a0, s0, a0
  LA s2, a
  ADD s2, s2, a0
  SLLIW a0, s0, 2
  ADDI t6, sp, 136
  ADD s3, t6, a0
  FLW fs0, 0(s3)
  LUI t6, 1
  ADDIW t6, t6, 40
  ADD t6, t6, sp
  ADD a0, t6, a0
  FLW fs1, 0(a0)
  ADD a0, zero, zero
  # implict jump to bb17
bb17:
  SLLIW s3, a0, 2
  ADD s3, s2, s3
  FLW fs2, 0(s3)
  FSUB.S fs2, fs2, fs0
  FDIV.S fs2, fs2, fs1
  FSW fs2, 0(s3)
  FADD.S fs4, fs4, fs2
  ADDIW a0, a0, 1
  SLTI s3, a0, 1000
  BNE s3, zero, bb29
  # implict jump to bb18
bb18:
  ADDIW s0, s0, 1
  SLTI a0, s0, 1000
  BNE a0, zero, bb28
  # implict jump to bb19
bb19:
  ADDIW s1, s1, 1
  SLTI a0, s1, 100
  BNE a0, zero, bb27
  # implict jump to bb20
bb20:
  ADD s0, zero, zero
  # implict jump to bb21
bb21:
  LUI a0, 1
  ADDIW a0, a0, -96
  MULW a0, s0, a0
  LA s1, a
  ADD s1, s1, a0
  ADD a0, zero, zero
  # implict jump to bb22
bb22:
  SLLIW s2, a0, 2
  ADD s2, s1, s2
  FLW fs0, 0(s2)
  FADD.S fs4, fs4, fs0
  ADDIW a0, a0, 1
  SLTI s2, a0, 1000
  BNE s2, zero, bb26
  # implict jump to bb23
bb23:
  ADDIW s0, s0, 1
  SLTI a0, s0, 1000
  BNE a0, zero, bb25
  # implict jump to bb24
bb24:
  ADDI a0, zero, 95
  CALL _sysy_stoptime
  FSGNJ.S fa0, fs4, fs4
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
  FLT.S a0, fs7, fs9
  BNE a0, zero, bb34
  # implict jump to bb32
bb32:
  FADD.S fs0, fs3, fs1
  FDIV.S fs2, fs0, fs8
  # implict jump to bb33
bb33:
  FSGNJ.S fs0, fs3, fs3
  FSGNJ.S fs3, fs2, fs2
  JAL zero, bb11
bb34:
  FADD.S fs1, fs3, fs0
  FDIV.S fs2, fs1, fs8
  FSGNJ.S fs1, fs3, fs3
  FSGNJ.S fs3, fs0, fs0
  JAL zero, bb33
bb35:
  FSGNJN.S fs2, fs2, fs2
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
  ADDIW s0, s0, 1
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
