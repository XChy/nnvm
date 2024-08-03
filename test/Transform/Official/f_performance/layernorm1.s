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
  SD s5, 48(sp)
  FSD fs0, 56(sp)
  FSD fs1, 64(sp)
  FSD fs2, 72(sp)
  FSD fs3, 80(sp)
  FSD fs4, 88(sp)
  FSD fs5, 96(sp)
  FSD fs6, 104(sp)
  FSD fs7, 112(sp)
  FSD fs8, 120(sp)
  FSD fs9, 128(sp)
  ADDI a0, zero, 0
  FCVT.S.W fs3, a0
  ADD a0, zero, zero
  # implict jump to bb1
bb1:
  ADD s0, a0, zero
  SLTI a0, s0, 1000
  BNE a0, zero, bb48
  # implict jump to bb2
bb2:
  ADDI a0, zero, 42
  CALL _sysy_starttime
  ADD a0, zero, zero
  FSGNJ.S fs0, fs3, fs3
  # implict jump to bb3
bb3:
  FSGNJ.S fs5, fs0, fs0
  ADD s0, a0, zero
  ADD a0, zero, zero
  # implict jump to bb4
bb4:
  ADD s2, a0, zero
  SLLIW a0, s2, 2
  ADDI t5, sp, 136
  ADD s4, t5, a0
  FSW fs3, 0(s4)
  LUI a0, 1
  ADDIW a0, a0, -96
  MULW s1, s2, a0
  LA a0, a
  ADD s3, a0, s1
  ADD a0, zero, zero
  # implict jump to bb5
bb5:
  ADD s1, a0, zero
  FLW fs0, 0(s4)
  SLLIW a0, s1, 2
  ADD a0, s3, a0
  FLW fs1, 0(a0)
  FADD.S fs0, fs0, fs1
  FSW fs0, 0(s4)
  ADDIW a0, s1, 1
  SLTI s1, a0, 1000
  BNE s1, zero, bb47
  # implict jump to bb6
bb6:
  # implict jump to bb7
bb7:
  FLW fs0, 0(s4)
  ADDI a0, zero, 1000
  FCVT.S.W fs1, a0
  FDIV.S fs0, fs0, fs1
  FSW fs0, 0(s4)
  ADDIW a0, s2, 1
  SLTI s1, a0, 1000
  BNE s1, zero, bb46
  # implict jump to bb8
bb8:
  # implict jump to bb9
bb9:
  ADD a0, zero, zero
  # implict jump to bb10
bb10:
  ADD s1, a0, zero
  SLLIW s5, s1, 2
  LUI t5, 1
  ADDIW t5, t5, 40
  ADD t5, t5, sp
  ADD s3, t5, s5
  FSW fs3, 0(s3)
  LUI a0, 1
  ADDIW a0, a0, -96
  MULW s2, s1, a0
  LA a0, a
  ADD s4, a0, s2
  ADDI a0, sp, 136
  ADD a0, a0, s5
  FLW fs2, 0(a0)
  ADD a0, zero, zero
  # implict jump to bb11
bb11:
  ADD s2, a0, zero
  FLW fs0, 0(s3)
  SLLIW a0, s2, 2
  ADD a0, s4, a0
  FLW fs1, 0(a0)
  FSUB.S fs1, fs1, fs2
  FMUL.S fs1, fs1, fs1
  FADD.S fs0, fs0, fs1
  FSW fs0, 0(s3)
  ADDIW a0, s2, 1
  SLTI s2, a0, 1000
  BNE s2, zero, bb45
  # implict jump to bb12
bb12:
  # implict jump to bb13
bb13:
  FLW fs0, 0(s3)
  ADDI a0, zero, 1000
  FCVT.S.W fs1, a0
  FDIV.S fs1, fs0, fs1
  FSW fs1, 0(s3)
  LA a0, .CONSTANT.7.0
  FLW fs0, 0(a0)
  FADD.S fs6, fs1, fs0
  FADD.S fs0, fs3, fs6
  ADDI a0, zero, 2
  FCVT.S.W fs4, a0
  FDIV.S fs0, fs0, fs4
  FSGNJ.S fs2, fs6, fs6
  FSGNJ.S fs1, fs3, fs3
  # implict jump to bb14
bb14:
  FSGNJ.S fs7, fs1, fs1
  FSGNJ.S fs1, fs2, fs2
  FSGNJ.S fs8, fs0, fs0
  FMUL.S fs2, fs8, fs8
  FSUB.S fs0, fs2, fs6
  FLT.S a0, fs0, fs3
  BNE a0, zero, bb44
  # implict jump to bb15
bb15:
  # implict jump to bb16
bb16:
  FSGNJ.S fs9, fs0, fs0
  LA a0, .CONSTANT.7.1
  FLW fs0, 0(a0)
  FLT.S a0, fs0, fs9
  BNE a0, zero, bb40
  # implict jump to bb17
bb17:
  FSW fs8, 0(s3)
  ADDIW s1, s1, 1
  SLTI a0, s1, 1000
  BNE a0, zero, bb39
  # implict jump to bb18
bb18:
  # implict jump to bb19
bb19:
  ADD a0, zero, zero
  FSGNJ.S fs0, fs5, fs5
  # implict jump to bb20
bb20:
  ADD s2, a0, zero
  LUI a0, 1
  ADDIW a0, a0, -96
  MULW s1, s2, a0
  LA a0, a
  ADD s3, a0, s1
  SLLIW a0, s2, 2
  ADDI t5, sp, 136
  ADD s1, t5, a0
  FLW fs1, 0(s1)
  LUI t5, 1
  ADDIW t5, t5, 40
  ADD t5, t5, sp
  ADD a0, t5, a0
  FLW fs2, 0(a0)
  ADD a0, zero, zero
  # implict jump to bb21
bb21:
  FSGNJ.S fs4, fs0, fs0
  ADD s1, a0, zero
  SLLIW a0, s1, 2
  ADD a0, s3, a0
  FLW fs0, 0(a0)
  FSUB.S fs0, fs0, fs1
  FDIV.S fs0, fs0, fs2
  FSW fs0, 0(a0)
  FADD.S fs0, fs4, fs0
  ADDIW s1, s1, 1
  SLTI a0, s1, 1000
  BNE a0, zero, bb38
  # implict jump to bb22
bb22:
  # implict jump to bb23
bb23:
  ADDIW s1, s2, 1
  SLTI a0, s1, 1000
  BNE a0, zero, bb37
  # implict jump to bb24
bb24:
  # implict jump to bb25
bb25:
  ADDIW a0, s0, 1
  SLTI s0, a0, 100
  BNE s0, zero, bb36
  # implict jump to bb26
bb26:
  # implict jump to bb27
bb27:
  ADD a0, zero, zero
  # implict jump to bb28
bb28:
  ADD s2, a0, zero
  LUI a0, 1
  ADDIW a0, a0, -96
  MULW s0, s2, a0
  LA a0, a
  ADD s1, a0, s0
  ADD a0, zero, zero
  # implict jump to bb29
bb29:
  ADD s0, a0, zero
  SLLIW a0, s0, 2
  ADD a0, s1, a0
  FLW fs1, 0(a0)
  FADD.S fs0, fs0, fs1
  ADDIW a0, s0, 1
  SLTI s0, a0, 1000
  BNE s0, zero, bb35
  # implict jump to bb30
bb30:
  # implict jump to bb31
bb31:
  ADDIW s0, s2, 1
  SLTI a0, s0, 1000
  BNE a0, zero, bb34
  # implict jump to bb32
bb32:
  # implict jump to bb33
bb33:
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
  LD s5, 48(sp)
  FLD fs0, 56(sp)
  FLD fs1, 64(sp)
  FLD fs2, 72(sp)
  FLD fs3, 80(sp)
  FLD fs4, 88(sp)
  FLD fs5, 96(sp)
  FLD fs6, 104(sp)
  FLD fs7, 112(sp)
  FLD fs8, 120(sp)
  FLD fs9, 128(sp)
  LUI t0, 2
  ADDIW t0, t0, -48
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb34:
  ADD a0, s0, zero
  JAL zero, bb28
bb35:
  JAL zero, bb29
bb36:
  JAL zero, bb3
bb37:
  ADD a0, s1, zero
  JAL zero, bb20
bb38:
  ADD a0, s1, zero
  JAL zero, bb21
bb39:
  ADD a0, s1, zero
  JAL zero, bb10
bb40:
  FLT.S a0, fs6, fs2
  BNE a0, zero, bb43
  # implict jump to bb41
bb41:
  FADD.S fs0, fs8, fs1
  FDIV.S fs0, fs0, fs4
  FSGNJ.S fs2, fs0, fs0
  FSGNJ.S fs0, fs8, fs8
  # implict jump to bb42
bb42:
  FSGNJ.S fs7, fs0, fs0
  FSGNJ.S fs0, fs2, fs2
  FSGNJ.S fs2, fs1, fs1
  FSGNJ.S fs1, fs7, fs7
  JAL zero, bb14
bb43:
  FADD.S fs0, fs8, fs7
  FDIV.S fs0, fs0, fs4
  FSGNJ.S fs2, fs0, fs0
  FSGNJ.S fs1, fs8, fs8
  FSGNJ.S fs0, fs7, fs7
  JAL zero, bb42
bb44:
  FSGNJN.S fs0, fs0, fs0
  JAL zero, bb16
bb45:
  JAL zero, bb11
bb46:
  JAL zero, bb4
bb47:
  JAL zero, bb5
bb48:
  LUI a0, 1
  ADDIW a0, a0, -96
  MULW s1, s0, a0
  LA a0, a
  ADD a0, a0, s1
  CALL getfarray
  ADD s1, a0, zero
  XORI a0, s1, 1000
  BNE a0, zero, bb50
  # implict jump to bb49
bb49:
  ADDIW a0, s0, 1
  JAL zero, bb1
bb50:
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  FLD fs0, 56(sp)
  FLD fs1, 64(sp)
  FLD fs2, 72(sp)
  FLD fs3, 80(sp)
  FLD fs4, 88(sp)
  FLD fs5, 96(sp)
  FLD fs6, 104(sp)
  FLD fs7, 112(sp)
  FLD fs8, 120(sp)
  FLD fs9, 128(sp)
  LUI t0, 2
  ADDIW t0, t0, -48
  ADD sp, sp, t0
  JALR zero, 0(ra)
